Particle[] Stars;
void setup()
{
	size(800,800);
	background(0);
	//noStroke();
	//stroke(255);
	Stars = new Particle[1000];
	for(int i = 0; i < Stars.length; i++)
	{
		Stars[i] = new NormalParticle();
	}
	//Stars[0] = new OddballParticle();
	//Stars[1] = new JumboParticle();
}
void draw()
{
	for(int i = 0; i < Stars.length; i++)
	{
		Stars[i].show();
		Stars[i].move();
		if(Stars[i].getmyAngle() > (2.5*Math.PI))
		{
			background(0);
			for(int j = 0; j < Stars.length; j++)
				Stars[j].changemyAngle(Math.random()*(2*Math.PI));
		}
	}
}
interface Particle
{
	public void move();
	public void show();
	public double getmyAngle();
	public void changemyAngle();
}
class NormalParticle implements Particle
{
	private double myX,myY,mySpd,myAngle,radius;
	private int myColor;
	public NormalParticle()
	{
		myColor = color((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
		myAngle = Math.random()*(2*Math.PI);
		radius = (Math.random()*800);
		myX = 400 + radius*(Math.cos(myAngle));
		myY = 400 + radius*(Math.sin(myAngle));
		mySpd = .01;
	}
	public double getmyAngle()
	{
		return myAngle;
	}
	public void changemyAngle(double x)
	{
		myAngle = x;
	}
	public void move()
	{
		myAngle += mySpd;
		myX = 400 + radius*Math.cos(myAngle);
		myY = 400 + radius*Math.sin(myAngle);
	}
	public void show()
	{
		stroke(myColor);
		point((float)myX,(float)myY);
	}
}
class OddballParticle implements Particle
{
	//your code here
}
class JumboParticle //uses inheritance
{
	//your code here
}

