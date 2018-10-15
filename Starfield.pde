NormalParticle[] Explosion;
void setup()
{
	size(500,500);
	background(0);
	noStroke();
	Explosion = new NormalParticle[10];
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
		System.out.println(Explosion[0].myAngle);
	}
}
class NormalParticle
{
	double myX,myY,mySpd,myAngle,radius;
	int myColor;
	NormalParticle()
	{
		myAngle = Math.random()*(2*Math.PI);
		//myX = myY = 250;
		radius = (Math.random()*250);
		myX = 250 + radius*(Math.cos(myAngle));
		myY = 250 + radius*(Math.sin(myAngle));
		mySpd = .25;
		myColor = color((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
		//myColor = 255;
	}
	void move()
	{
		myAngle = myAngle + mySpd;
		myX = 250 + radius*Math.cos(myAngle);
		myY = 250 + radius*Math.sin(myAngle);
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

