Particle[] a;

void setup()
{
  size(700, 700);
  a= new Particle[1000];

  for (int i=0; i<a.length; i++)
  {
    a[i]= new Particle();
a[i]= new Oddball();
  }
}
void draw()
{
  fill(0);
  rect(0,0,700,700);
  fill(255);
  for (int i=0; i<a.length; i++)
  {
   
    a[i].show();
    a[i].move();
    
  }
}

class Particle
{
  int myx, myy, myspeed, myangle1,myangle2;
  Particle()
  {
    myx=350;
    myy=350;
    myspeed=(int)(Math.random()*2*Math.PI+.3);
    myangle1=(int)(Math.random()*10);
    myangle2=(int)(Math.random()*10);
  }
  void show()
  {

    ellipse((float)myx, (float)myy, 5, 5);
  }

  void move() {
    myx+=Math.sin(myangle1)*(myspeed);
    myy+=Math.sin(myangle2)*(myspeed);
    
    if(myy>700||myy<0)
    {
    myangle2=-myangle2;
    }
   if(myx>700||myx<0)
    {
    myangle1=-myangle1;
    }
  }
}
class Oddball extends Particle
{
Oddball()
{

}
void move()
 {
 myx+=Math.sin(myangle1)*(myspeed);
    myy+=Math.sin(myangle2)*(myspeed);
    
    if(myy>700||myy<0)
    {
    myangle2=-myangle2;
    }
   if(myx>700||myx<0)
    {
    myangle1=-myangle1;
    }
 }
void show()
 { 
 ellipse((float)myx, (float)myy, 5, 5); }
}
