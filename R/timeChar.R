"timeChar" <-
function ( time = getTime() ) {
	result <- vector(mode="character",length=0); #init b4 paste
	plural <- c("","","");
	for ( i in 1:3 ) {
	if ( time[i] != 1 ) {
		plural[i] <- "s";
	}
	}
	if ( time[1] != 0 ) { # hours
		result <- paste(result,time[1]," hour",plural[1],sep="");
	}
	if ( time[1] != 0 && (time[2] != 0 || time[3] != 0) ) {
		result <- paste(result,", ",sep="")
	}
	if ( time[2] != 0 ) { # minutes
		result <- paste(result,time[2]," minute",plural[2],sep="");
	}
	if ( time[3] != 0 && (time[2] != 0 || time[1] != 0) ) {
		result <- paste(result,", ",sep="")
	}
	if ( time[3] != 0 ) { # seconds
		result <- paste(result,time[3]," second",plural[3],sep="");
	}
	result;
}

