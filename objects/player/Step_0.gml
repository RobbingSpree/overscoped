moveX = lerp(moveX, inputX * moveSpeed, 0.2);
moveY = lerp(moveY, inputY * moveSpeed, 0.2);

x += moveX;
y += moveY;

//flip 
if (inputX != 0) {
	image_xscale = sign(inputX);
	//sprite update to move
} else {
	//sprite update to idle
}