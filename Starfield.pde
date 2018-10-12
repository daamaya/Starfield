NormalParticle[] Explosion;
void setup()
{
	size(500,500);
	background(0);
	noStroke();
	Explosion = new NormalParticle[300];
	for(int i = 0; i < Explosion.length; i++)
	{
		Explosion[i] = new NormalParticle();
	}
}
void draw()
{
	//background(0);
	for(int i = 0; i < Explosion.length; i++)
	{
		Explosion[i].show();
		Explosion[i].move();
	}
}
class NormalParticle
{
	double myX,myY,mySpd,myAngle;
	int myColor;
	NormalParticle()
	{
		myAngle = Math.random()*(2*Math.PI);
		//myX = myY = 250;
		myX = 250 + (Math.random()*250)*(Math.cos(myAngle));
		myY = 250 + (Math.random()*250)*(Math.sin(myAngle));
		mySpd = Math.random()*5;
		myColor = color((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
	}
	void move()
	{
		myAngle = myAngle + mySpd;
		myX = Math.cos(myAngle);
		myY = Math.sin(myAngle);
	}
	void show()
	{
		fill(myColor);
		ellipse((int)myX,(int)myY,5,5);
	}
}
interface Particle
{
	//your code here
}
class OddballParticle //uses an interface
{
	//your code here
}
class JumboParticle //uses inheritance
{
	//your code here
}

