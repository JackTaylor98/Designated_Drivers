draw_self();

draw_set_font(FontLarge)
if (playerWon){	draw_text(x+250,y,"You Won!")}
else{draw_text(x+250,y,"You Lose!")}