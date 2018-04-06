aeqSurv <- function (x, tolerance = sqrt(.Machine$double.eps)) 
{
    if (!missing(tolerance)) {
        if (!is.numeric(tolerance) || length(tolerance) != 1 || 
            !is.finite(tolerance)) 
            stop("invalid value for tolerance")
        if (tolerance <= 0) 
            return(x)
    }
    if (!is.Surv(x)) 
        stop("argument is not a Surv object")
    y <- sort(unique(c(x[, -ncol(x)])))
    y <- y[is.finite(y)]
    dy <- diff(y)
    tied <- ((dy <= tolerance) | ((dy/mean(abs(y)) <= tolerance)))
    if (!any(tied)) 
        return(x)
    cuts <- y[c(TRUE, !tied)]
    if (ncol(x) == 2) {
        z <- findInterval(x[, 1], cuts)
        z <- cbind(cuts[z], as.integer(x[, 2]))
    }
    else {
        z <- matrix(findInterval(x[, 1:2], cuts), ncol = 2)
        zeros <- which(z[, 1] == z[, 2])
        if (length(zeros) > 0 && any(x[zeros, 1] != x[zeros, 
            2])) 
            stop("aeqSurv exception, an interval has effective length 0")
        z <- cbind(matrix(cuts[z], ncol = 2), as.integer(x[, 
            3]))
    }
    attributes(z) <- attributes(x)
    z
}

