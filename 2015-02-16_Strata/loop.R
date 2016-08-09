loop <- function (n) {
    x <- 0.0
    for (i in 1:n) {
        x <- x + rnorm(1)
    }
}

s <- Sys.time()
loop(10000000L)
e <- Sys.time()
e - s
