"timeReport" <-
function ( time ) {
	cat("The calculation took ",
		timeChar(
			timeElapsed(
				time
			)
		),
		"\n",
		sep=""
	)
}

