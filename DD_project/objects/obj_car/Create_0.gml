randomize()
// How fast the car turns
turningForce = 5; 

// Turn left/right bools for logic
turnLeft = false; 
turnRight = false;

// Variables for random pulling left/right
timeUntilPulltimer = 0; // Timer
timeUntilPull = irandom_range(1,4)*60 // Random time between pulls

pullingTimer = 0 // Timer
timeUntilStopPull = irandom_range(4,8)*60 // How long the pull will last

pulling = false; // Bool if currently pulling or not
pullLeft = irandom_range(0,1) // Random pulling left or right. This is a int so I can randomize it
pullForce = random_range(1, 2.5); // How strong the pull is

canDrive = true; //Bool for toggling player control

audio_play_sound(snd_car,1,true);
