% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/logging.R
\name{closelog}
\alias{closelog}
\title{Close current logfile}
\usage{
closelog(sessionInfo = TRUE)
}
\arguments{
\item{sessionInfo}{Append \code{\link{sessionInfo}} output? (logical, optional)}
}
\value{
Number of flagged messages (numeric).
}
\description{
Close current logfile
}
\details{
Close current logfile. The number of flagged messages is returned,
invisibly. Note that if \code{options(luzlogr.close_on_error = TRUE)} is set, then
if an error occurs, all log files will be automatically closed. This behavior
is not currently enabled by default.

Logs are stored on a stack, and so when one is closed, logging
output returns to the previous log (if any).
}
\note{
If the log was being written to a \code{\link{connection}},
\code{closelog} will return the connection to its pre-logging state,
whether open or closed.
}
\examples{
logfile1 <- openlog("A.log")
printlog("message to A", flag = TRUE)
logfile2 <- openlog("B.log")
printlog("message to B")
flagcountB <- closelog()
flagcountA <- closelog(sessionInfo = FALSE)
file.remove(logfile1, logfile2)
}
\seealso{
\code{\link{openlog}} \code{\link{printlog}}
}
