"getTime" <-
function () {
    datesep <- strsplit(date(), split = " ")[[1]];
    if (datesep[3] == "") { #if this is a single digit numbered day
	timeindex <- 5;
    }
    else {
	timeindex <- 4;
    }
#return desired time vector
    as.numeric(strsplit(datesep[timeindex], split = ":")[[1]])
}

