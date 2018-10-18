NormalParticle[] Star;
void setup()
{
	size(500,500);
	background(0);
	//noStroke();
	//stroke(255);
	Star = new NormalParticle[1000];
	for(int i = 0; i < Star.length; i++)
	{
		Star[i] = new NormalParticle();
	}
}
void draw()
{
	for(int i = 0; i < Star.length; i++)
	{
		Star[i].show();
		Star[i].move();
		if(Star[i].myAngle > (2.5*Math.PI))
		{
			background(0);
			for(int j = 0; j < Star.length; j++)
				Star[j].myAngle = Math.random()*(2*Math.PI);
		}
	}
}
class NormalParticle
{
	private double myX,myY,mySpd,myAngle,radius;
	private int myColor;
	NormalParticle()
	{
		myColor = color((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
		myAngle = Math.random()*(2*Math.PI);
		radius = (Math.random()*500);
		myX = 250 + radius*(Math.cos(myAngle));
		myY = 250 + radius*(Math.sin(myAngle));
		mySpd = .01;
	}

	void move()
	{
		myAngle += mySpd;
		myX = 250 + radius*Math.cos(myAngle);
		myY = 250 + radius*Math.sin(myAngle);
	}
	void show()
	{
		stroke(myColor);
		point((int)myX,(int)myY);
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

