Surv <- function (time, time2, event, type = c("right", "left", "interval", 
    "counting", "interval2", "mstate"), origin = 0) 
{
    if (missing(time)) 
        stop("Must have a time argument")
    if (inherits(time, "difftime")) 
        time <- unclass(time)
    if (!missing(time2) && class(time2) == "difftime") 
        time2 <- as.numeric(time2)
    if (!is.numeric(time)) 
        stop("Time variable is not numeric")
    nn <- length(time)
    ng <- (!missing(time)) + (!missing(time2)) + (!missing(event))
    mtype <- match.arg(type)
    if (missing(type) || mtype == "mstate") {
        if (ng == 1 || ng == 2) 
            type <- "right"
        else if (ng == 3) 
            type <- "counting"
        else stop("No time variable!")
    }
    else {
        type <- mtype
        if (ng != 3 && (type == "interval" || type == "counting")) 
            stop("Wrong number of args for this type of survival data")
        if (ng != 2 && (type == "right" || type == "left" || 
            type == "interval2")) 
            stop("Wrong number of args for this type of survival data")
    }
    if (ng == 1) {
        if (!is.numeric(time)) 
            stop("Time variable is not numeric")
        ss <- cbind(time = time - origin, status = 1)
        type <- "right"
    }
    else if (type == "right" || type == "left") {
        if (!is.numeric(time)) 
            stop("Time variable is not numeric")
        if (missing(event)) {
            event <- time2
            time2 <- NULL
        }
        if (length(event) != nn) 
            stop("Time and status are different lengths")
        if (mtype == "mstate" || (is.factor(event))) {
            mstat <- as.factor(event)
            status <- as.numeric(mstat) - 1
            type <- "mright"
        }
        else {
            if (is.logical(event)) 
                status <- as.numeric(event)
            else if (is.numeric(event)) {
                who2 <- !is.na(event)
                if (max(event[who2]) == 2) 
                    status <- event - 1
                else status <- event
                temp <- (status == 0 | status == 1)
                status <- ifelse(temp, status, NA)
                if (!all(temp[who2], na.rm = TRUE)) 
                    warning("Invalid status value, converted to NA")
            }
            else stop("Invalid status value, must be logical or numeric")
        }
        ss <- cbind(time = time - origin, status = status)
    }
    else if (type == "counting") {
        if (length(time2) != nn) 
            stop("Start and stop are different lengths")
        if (length(event) != nn) 
            stop("Start and event are different lengths")
        if (!is.numeric(time)) 
            stop("Start time is not numeric")
        if (!is.numeric(time2)) 
            stop("Stop time is not numeric")
        temp <- (time >= time2)
        if (any(temp & !is.na(temp))) {
            time[temp] <- NA
            warning("Stop time must be > start time, NA created")
        }
        if (mtype == "mstate" || (is.factor(event) && length(levels(event)) > 
            2)) {
            mstat <- as.factor(event)
            status <- as.numeric(mstat) - 1
            type <- "mcounting"
        }
        else {
            if (is.logical(event)) 
                status <- as.numeric(event)
            else if (is.numeric(event)) {
                who2 <- !is.na(event)
                if (max(event[who2]) == 2) 
                    status <- event - 1
                else status <- event
                temp <- (status == 0 | status == 1)
                status <- ifelse(temp, status, NA)
                if (!all(temp[who2], na.rm = TRUE)) 
                    warning("Invalid status value, converted to NA")
            }
            else stop("Invalid status value")
        }
        ss <- cbind(start = time - origin, stop = time2 - origin, 
            status = status)
    }
    else {
        if (type == "interval2") {
            if (!is.numeric(time2)) 
                stop("Time2 must be numeric")
            if (length(time2) != nn) 
                stop("time and time2 are different lengths")
            backwards <- (!is.na(time) & !is.na(time2) & time > 
                time2)
            time <- ifelse(is.finite(time), time, NA)
            time2 <- ifelse(is.finite(time2), time2, NA)
            unknown <- (is.na(time) & is.na(time2))
            status <- ifelse(is.na(time), 2, ifelse(is.na(time2), 
                0, ifelse(time == time2, 1, 3)))
            time <- ifelse(status != 2, time, time2)
            if (any(backwards)) {
                warning("Invalid interval: start > stop, NA created")
                status[backwards] <- NA
            }
            if (any(unknown)) 
                status[unknown] <- NA
            type <- "interval"
        }
        else {
            if (length(event) != nn) 
                stop("Time and status are different lengths")
            if (!is.numeric(event)) 
                stop("Invalid status value, must be logical or numeric")
            temp <- (event == 0 | event == 1 | event == 2 | 
                event == 3)
            status <- ifelse(temp, event, NA)
            if (!all(temp, na.rm = TRUE)) 
                warning("Status must be 0, 1, 2 or 3; converted to NA")
            if (any(event == 3, na.rm = T)) {
                if (!is.numeric(time2)) 
                    stop("Time2 must be numeric")
                if (length(time2) != nn) 
                    stop("time and time2 are different lengths")
                temp <- (status == 3 & time > time2)
                if (any(temp & !is.na(temp))) {
                    status[temp] <- NA
                    warning("Invalid interval: start > stop, NA created")
                }
            }
            else time2 <- 1
        }
        ss <- cbind(time1 = time - origin, time2 = ifelse(!is.na(status) & 
            status == 3, time2 - origin, 1), status = status)
    }
    inputAttributes <- list()
    if (!is.null(attributes(time))) 
        inputAttributes$time <- attributes(time)
    if (!missing(time2) && !is.null(attributes(time2))) 
        inputAttributes$time2 <- attributes(time2)
    if (!missing(event) && !is.null(attributes(event))) 
        inputAttributes$event <- attributes(event)
    cname <- dimnames(ss)[[2]]
    if (length(cname) == 0) {
        if (ncol(ss) == 2) 
            cname <- c("time", "status")
        else if (type == "counting") 
            cname <- c("start", "stop", "status")
        else cname <- c("time1", "time2", "status")
    }
    dimnames(ss) <- list(NULL, cname)
    attr(ss, "type") <- type
    if (type == "mright" || type == "mcounting") {
        states <- levels(mstat)[-1]
        if (any(is.na(states) | states == "")) 
            stop("each state must have a non-blank name")
        attr(ss, "states") <- states
    }
    if (length(inputAttributes) > 0) 
        attr(ss, "inputAttributes") <- inputAttributes
    class(ss) <- "Surv"
    ss
}

