##################################################################
# A3XX MCDU by Joshua Davidson (it0uchpods) and Jonathan Redpath #
##################################################################

var MCDU_init = func {
	setprop("/MCDU[1]/brightness", "1.0");
	MCDU_reset(); # Reset MCDU, clears data
}

var MCDU_reset = func {
	setprop("/MCDU[1]/page", "STATUS");
	setprop("/MCDU[1]/cost-index", 0);
	setprop("/MCDU[1]/flight-num", 0);
	setprop("/MCDU[1]/scratchpad", " ");
}

var pagebutton = func(btn) {
	if (btn == "init") {
		setprop("/MCDU[1]/page", "NONE");	
		settimer(func {
			setprop("/MCDU[1]/page", "INITA");
		}, 0.2);
	}
	if (btn == "data") {
		setprop("/MCDU[1]/page", "NONE");	
		settimer(func {
			setprop("/MCDU[1]/page", "DATA");
		}, 0.2);
	}
	if (btn == "status") {
		setprop("/MCDU[1]/page", "NONE");	
		settimer(func {
			setprop("/MCDU[1]/page", "STATUS");
		}, 0.2);
	}
	if (btn == "data2") {
		setprop("/MCDU[1]/page", "NONE");	
		settimer(func {
			setprop("/MCDU[1]/page", "DATA2");
		}, 0.2);
	}
	if (btn == "perfto") {
		setprop("/MCDU[1]/page", "NONE");	
		settimer(func {
			setprop("/MCDU[1]/page", "TO");
		}, 0.2);
	}
}

var button = func(btn) {
	var scratchpad = getprop("/MCDU[1]/scratchpad");
	if (btn == "A") {
		setprop("/MCDU[1]/scratchpad", scratchpad ~ "A");
	} else if (btn == "B") {
		setprop("/MCDU[1]/scratchpad", scratchpad ~ "B");
	} else if (btn == "C") {
		setprop("/MCDU[1]/scratchpad", scratchpad ~ "C");
	} else if (btn == "D") {
		setprop("/MCDU[1]/scratchpad", scratchpad ~ "D");
	} else if (btn == "E") {
		setprop("/MCDU[1]/scratchpad", scratchpad ~ "E");
	} else if (btn == "F") {
		setprop("/MCDU[1]/scratchpad", scratchpad ~ "F");
	} else if (btn == "G") {
		setprop("/MCDU[1]/scratchpad", scratchpad ~ "G");
	} else if (btn == "H") {
		setprop("/MCDU[1]/scratchpad", scratchpad ~ "H");
	} else if (btn == "I") {
		setprop("/MCDU[1]/scratchpad", scratchpad ~ "I");
	} else if (btn == "J") {
		setprop("/MCDU[1]/scratchpad", scratchpad ~ "J");
	} else if (btn == "K") {
		setprop("/MCDU[1]/scratchpad", scratchpad ~ "K");
	} else if (btn == "L") {
		setprop("/MCDU[1]/scratchpad", scratchpad ~ "L");
	} else if (btn == "M") {
		setprop("/MCDU[1]/scratchpad", scratchpad ~ "M");
	} else if (btn == "N") {
		setprop("/MCDU[1]/scratchpad", scratchpad ~ "N");
	} else if (btn == "O") {
		setprop("/MCDU[1]/scratchpad", scratchpad ~ "O");
	} else if (btn == "P") {
		setprop("/MCDU[1]/scratchpad", scratchpad ~ "P");
	} else if (btn == "Q") {
		setprop("/MCDU[1]/scratchpad", scratchpad ~ "Q");
	} else if (btn == "R") {
		setprop("/MCDU[1]/scratchpad", scratchpad ~ "R");
	} else if (btn == "S") {
		setprop("/MCDU[1]/scratchpad", scratchpad ~ "S");
	} else if (btn == "T") {
		setprop("/MCDU[1]/scratchpad", scratchpad ~ "T");
	} else if (btn == "U") {
		setprop("/MCDU[1]/scratchpad", scratchpad ~ "U");
	} else if (btn == "V") {
		setprop("/MCDU[1]/scratchpad", scratchpad ~ "V");
	} else if (btn == "W") {
		setprop("/MCDU[1]/scratchpad", scratchpad ~ "W");
	} else if (btn == "X") {
		setprop("/MCDU[1]/scratchpad", scratchpad ~ "X");
	} else if (btn == "Y") {
		setprop("/MCDU[1]/scratchpad", scratchpad ~ "Y");
	} else if (btn == "Z") {
		setprop("/MCDU[1]/scratchpad", scratchpad ~ "Z");
	} else if (btn == "SLASH") {
		setprop("/MCDU[1]/scratchpad", scratchpad ~ "/");
	} else if (btn == "SP") {
		setprop("/MCDU[1]/scratchpad", scratchpad ~ " "); # adds a space
	} else if (btn == "CLR") {
		var scratchpad = getprop("/MCDU[1]/scratchpad");
		if (scratchpad == " ") {
			setprop("/MCDU[1]/scratchpad", "CLR");
		} else if (scratchpad == "CLR") {
			setprop("/MCDU[1]/scratchpad", " ");
		} else if (size(scratchpad) > 0) {
			setprop("/MCDU[1]/scratchpad", left(scratchpad, size(scratchpad)-1));
		}
	} else if (btn == "0") {
		setprop("/MCDU[1]/scratchpad", scratchpad ~ "0");
	} else if (btn == "1") {
		setprop("/MCDU[1]/scratchpad", scratchpad ~ "1");
	} else if (btn == "2") {
		setprop("/MCDU[1]/scratchpad", scratchpad ~ "2");
	} else if (btn == "3") {
		setprop("/MCDU[1]/scratchpad", scratchpad ~ "3");
	} else if (btn == "4") {
		setprop("/MCDU[1]/scratchpad", scratchpad ~ "4");
	} else if (btn == "5") {
		setprop("/MCDU[1]/scratchpad", scratchpad ~ "5");
	} else if (btn == "6") {
		setprop("/MCDU[1]/scratchpad", scratchpad ~ "6");
	} else if (btn == "7") {
		setprop("/MCDU[1]/scratchpad", scratchpad ~ "7");
	} else if (btn == "8") {
		setprop("/MCDU[1]/scratchpad", scratchpad ~ "8");
	} else if (btn == "9") {
		setprop("/MCDU[1]/scratchpad", scratchpad ~ "9");
	} else if (btn == "DOT") {
		setprop("/MCDU[1]/scratchpad", scratchpad ~ ".");
	}
}