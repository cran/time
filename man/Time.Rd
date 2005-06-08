\name{Time}
\alias{getTime}
\alias{timeElapsed}
\alias{timeChar}
\alias{timeReport}
%- Also NEED an '\alias' for EACH other topic documented here.

\title{Time Tracking Functions}

\description{
\code{getTime} turns the output of \code{date} into an \code{"integer"} vector of length 3, \code{timeElapsed} determines the difference between two such times, and \code{timeChar} reports a time in a nice way. \code{timeReport} is a macro for the latter two.
}

\usage{
old <- getTime()
timeElapsed( old, new = getTime() )
timeChar( time = getTime() )
timeReport(time)
}

\arguments{
\item{old}{"integer" vector of length 3 that specifies hours, minutes, and seconds, respectively.}
\item{new}{"integer" vector of length 3 that specifies hours, minutes, and seconds, respectively.}
\item{time}{"integer" vector of length 3 that specifies hours, minutes, and seconds, respectively.}
}

\value{
"integer" vector of length 3 that specifies hours, minutes, and seconds, respectively.
}

\author{Toby Dylan Hocking <tobob@berkeley.edu>}

\note{It is usually nice to provide the user a \code{verbose} option that he may choose to set to \code{FALSE} if no output from time tracking functions is desired. Also, a known bug is that \code{timeElapsed} considers 24 to be the maximal number of hours in the day, and thus if it is called after midnight for a calculation started the day before, an incorrect difference will be calculated.}

\examples{
time <- getTime()
#TimeConsumingAnalysisTask
timeReport(time)
}

\keyword{programming}
\keyword{utilities}
\keyword{IO}