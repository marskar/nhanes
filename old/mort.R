M <- readLines(con <- file("raw/NHANES_III_MORT_2011_PUBLIC.dat"))
close(con)
library(stringr)
SEQN <- str_sub(M, 1, 5)
ELIGSTAT <- str_sub(M, 15, 15)
MORTSTAT <- str_sub(M, 16, 16)
CAUSEAVL <- str_sub(M, 17, 17)
UCOD_LEADING <- str_sub(M, 18, 20)
DIABETES <- str_sub(M, 21, 21)
HYPERTEN <- str_sub(M, 22, 22)
DODQTR <- str_sub(M, 23, 23)
DODYEAR <- str_sub(M, 24, 27)
WGT_NEW <- str_sub(M, 28, 35)
SA_WGT_NEW <- str_sub(M, 36, 43)
PERMTH_INT <- str_sub(M, 44, 46)
PERMTH_EXM <- str_sub(M, 47, 49)
MORTSRCE_NDI <- str_sub(M, 50, 50)
MORTSRCE_CMS <- str_sub(M, 51, 51)
MORTSRCE_SSA <- str_sub(M, 52, 52)
MORTSRCE_DC <- str_sub(M, 53, 53)
MORTSRCE_DCL <- str_sub(M, 54, 54)


df <- cbind(
SEQN,
ELIGSTAT,
MORTSTAT,
CAUSEAVL,
UCOD_LEADING,
DIABETES,
HYPERTEN,
DODQTR,
DODYEAR,
WGT_NEW,
SA_WGT_NEW,
PERMTH_INT,
PERMTH_EXM,
MORTSRCE_NDI,
MORTSRCE_CMS,
MORTSRCE_SSA,
MORTSRCE_DC,
MORTSRCE_DCL)
df <- as.data.frame(df)
readr::write_csv(df, path = "dat/mort.csv")
