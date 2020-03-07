// Inherit the parent event
event_inherited();

isMoving = false;
delayTime = SetTime(0.1);
delayTimer = 0;
image_speed = 0;
drawScaleX = random_range(0.5, 0.75);
drawScaleY = drawScaleX;
image_index = random_range(0, image_number);

velocity = random_range(1, 2);
groundFriction = 0.05;
velocityX = 0;
velocityY = 0;

velocityZ = random_range(0.75, 1);
z = random(3);