//These numbers are the range of seconds between calls
minPhoneTimer = 5;
maxPhoneTimer = 12;

//Random timer for the previously stated range
phoneTimer = irandom_range(minPhoneTimer*60, maxPhoneTimer*60);

//Start y being beneath the map, end y being 2/3 down the screen
startY = room_height + 200;
endY = (room_height / 3 * 2) + 150;

//Technically could just use start and end y, but this removes ambiguity on return
returnStartY = endY;
returnEndY = startY;

//travel time and duration for the bezier curve
travelTime = 0;
travelDuration = 1.0;

//start y position
y = startY;

//whether the phone is returning to the bottom of the screen or not
returning = false;

phoneActive = false;

image_xscale = 5;
image_yscale = 5;

entertainmentMax = 50;
entertainmentCurrent = 50;
entertainmentDropRate = 2.5/60;
entertainmentIncreaseRate = 3.5/60;
entertainmentIncrease = false;