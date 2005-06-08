"timeElapsed" <-
function( old, new = getTime() ) {
    el <- new-old;
    if (el[2] < 0) {
	el[1] <- el[1] - 1;
	el[2] <- 60 + el[2];
    }
    if (el[3] < 0) {
	el[2] <- el[2] - 1;
	el[3] <- 60 + el[3];
    }
    el;
}

