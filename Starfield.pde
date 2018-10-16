NormalParticle[] Star;
void setup()
{
	size(500,500);
	background(0);
	//noStroke();
	stroke(255);
	Star = new NormalParticle[1000];
	for(int i = 0; i < Star.length; i++)
	{
		Star[i] = new NormalParticle();
	}
}
void draw()
{
	//background(0);
	for(int i = 0; i < Star.length; i++)
	{
		Star[i].show();
		Star[i].move();
		System.out.println(Star[0].currentAngle);
	}
}
class NormalParticle
{
	double myX,myY,mySpd,myAngle,radius,currentAngle;
	int myColor;
	NormalParticle()
	{
		myAngle = Math.random()*(2*Math.PI);
		currentAngle = myAngle;
		radius = (Math.random()*500);
		myX = 250 + radius*(Math.cos(currentAngle));
		myY = 250 + radius*(Math.sin(currentAngle));
		mySpd = .01;
		//myColor = color((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
		myColor = 255;
	}
	void move()
	{
		currentAngle = currentAngle + mySpd;
		myX = 250 + radius*Math.cos(currentAngle);
		myY = 250 + radius*Math.sin(currentAngle);
	}
	void show()
	{
		fill(myColor);
		point((int)myX,(int)myY);
		if(currentAngle > (3*Math.PI))
		{
			background(0);
			currentAngle = myAngle;
		}
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

