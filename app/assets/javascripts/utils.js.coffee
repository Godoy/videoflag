Number.prototype.toHHMMSS = ->
    sec_numb    = parseInt(this);
    hours   = Math.floor(sec_numb / 3600);
    minutes = Math.floor((sec_numb - (hours * 3600)) / 60);
    seconds = sec_numb - (hours * 3600) - (minutes * 60);

    if (hours   < 10) 
    	hours   = "0"+hours
    if (minutes < 10) 
    	minutes = "0"+minutes
    if (seconds < 10) 
    	seconds = "0"+seconds

    time = hours+':'+minutes+':'+seconds;
    time;