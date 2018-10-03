Bacteria [] one;  
void setup()   
{     
  size(500,500);   
  background(0);
  frameRate(50);
  one = new Bacteria[20]; 
  for(int i = 0; i < one.length; i++)
  {
    one[i] = new Bacteria();
  }
}   
void draw()   
{  
  for(int i = 0; i < one.length; i++)
  {
    one[i].show(); 
    one[i].move();
  }
}  
class Bacteria    
{    
  int x, y, myColor;
  Bacteria()
  {
    x = 250;
    y = 250;
    myColor = color((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
  }
  void move()
  {
    x = x + (int)(Math.random()*3)-1;
    y = y + (int)(Math.random()*3)-1;
  }
  void show()
  {
    fill(myColor);
    ellipse(x,y,10,10);
  } 
}   
