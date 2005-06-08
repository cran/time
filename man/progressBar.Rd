\name{progressBar}
\alias{progressBar}
\title{Draw and update a progress bar}

\description{
\code{progressBar} is initially called to draw the framework of the progress bar, then called during each iteration to update the number of bars, if needed.

The return value of \code{progressBar} should always be stored, then passed as the \code{prev} argument to the next call to \code{progressBar}.
}

\usage{
progressBar(prop = 0, prev = 0)
}

\arguments{
  \item{prop}{Specify the proportion of progress accomplished.}
  \item{prev}{The number of bars already drawn, the return value \code{prev} obtained from the last call to \code{progressBar}.}
}

\value{
The number of bars drawn already, to be passed as the \code{prev} argument to the next call to \code{progressBar}.
}

\author{Toby Dylan Hocking <tobob@berkeley.edu>}

\note{The current line of the terminal needs to be empty for \code{progressBar} to be drawn properly. Just make sure the last printed character was an end of line character, \code{"\n"}.

Another assumption that \code{progressBar} makes is that it will be the only thing drawing to the terminal during the duration of calls to it. For proper appearance, no other drawing to the terminal should be done until \code{progressBar} is called with \code{prop >= 1}, which it takes as the signal that the analysis task is complete.
}

\examples{
n <- 5000
prev <- progressBar()
for( i in 1:n ) {
    #TimeConsumingAnalysisTask
    prev <- progressBar(i/n,prev)
}
}

\keyword{programming}
\keyword{utilities}
\keyword{IO}