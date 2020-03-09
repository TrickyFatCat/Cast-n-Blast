// Inherit the parent event
event_inherited();

isMoving = false;
delayTime = SetTime(0.1);
delayTimer = 0;
image_speed = 0;
image_index = random_range(0, image_number);

velocity = random_range(4, 5);
groundFriction = 0.065;
velocityX = 0;
velocityY = 0;


gravityZ = 0.2;
isBounceableZ = choose(false, true);

if (isBounceableZ)
{
	velocityZ = random_range(2, 3);
	rotationSpeed = choose(random_range(-20, -15), random_range(20, 15));
}
else
{
	velocityZ = random_range(0.5, 5);
	rotationSpeed = choose(random_range(-30, -25), random_range(30, 25));
}


isBounceable = true;
isBounced = false;

lifeSpanTime = 2;
lifeProgress = 0; 