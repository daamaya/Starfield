Particle[] Stars;
void setup()
{
	size(800,800);
	background(0);
	noStroke();
	Stars = new Particle[1000];
	for(int i = 0; i < Stars.length; i++)
	{
		Stars[i] = new NormalParticle();
	}
	Stars[0] = new OddballParticle();
	Stars[1] = new JumboParticle();
}
void draw()
{
	for(int i = 0; i < Stars.length; i++)
	{
		Stars[i].show();
		Stars[i].move();
	}
	for(int j = 1; j < Stars.length-1; j++)
	{
		if(Stars[j].getmyAngle() > (2.5*Math.PI))
		{
			background(0);
			for(int k = 1; k < Stars.length-1; k++)
				Stars[k].changemyAngle(Math.random()*(2*Math.PI));
		}
	}
}
interface Particle
{
	public void move();
	public void show();
	public double getmyAngle();
	public void changemyAngle(double angle);
}
class NormalParticle implements Particle
{
	public double myX,myY,mySpd,myAngle,radius;
	public int myColor;
	private NormalParticle()
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
	public void changemyAngle(double angle)
	{
		myAngle = angle;
	}
	public void move()
	{
		myAngle += mySpd;
		myX = 400 + radius*Math.cos(myAngle);
		myY = 400 + radius*Math.sin(myAngle);
	}
	public void show()
	{
		fill(myColor);
		ellipse((float)myX,(float)myY,3,3);
	}
}
class OddballParticle implements Particle
{
	private double myX,myY,mySpd,myAngle,radius;
	private int myColor,xRadius,yRadius;
	private OddballParticle()
	{
		//myColor = color((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
		xRadius = (int)Math.random()*20+1;
		yRadius = (int)Math.random()*20+1;
		//myAngle = Math.random()*(2*Math.PI);
		myAngle = 0;
		radius = 100;
		myX = myY = 400;
		mySpd = .04;
	}
	public double getmyAngle()
	{
		return myAngle;
	}
	public void changemyAngle(double angle)
	{
		myAngle = angle;
	}
	public void move()
	{
		myAngle += mySpd;
		xRadius = (int)(Math.random()*20+1);
		yRadius = (int)(Math.random()*20+1);
		myX = 400 + 2*radius*Math.cos(myAngle-(Math.PI/2));
		myY = 400 + radius*Math.sin(2*myAngle);
	}
	public void show()
	{
		fill(255);
		ellipse((float)myX,(float)myY,xRadius,yRadius);
	}
}
class JumboParticle extends NormalParticle
{
	private JumboParticle()
	{
		myColor = color((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
		myAngle = Math.random()*(2*Math.PI);
		radius = (Math.random()*800);
		myX = 400 + radius*(Math.cos(myAngle));
		myY = 400 + radius*(Math.sin(myAngle));
		mySpd = .01;
	}
	/*public double getmyAngle()
	{
		return myAngle;
	}
	public void changemyAngle(double angle)
	{
		myAngle = angle;
	}
	public void move()
	{
		myAngle += mySpd;
		myX = 400 + radius*Math.cos(myAngle);
		myY = 400 + radius*Math.sin(myAngle);
	}*/
	public void show()
	{
		fill(myColor);
		ellipse((float)myX,(float)myY,50,50);
	}
}

