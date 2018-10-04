Bacteria [] one;  
void setup()   
{     
  size(500,500);   
  frameRate(50);
  one = new Bacteria[200]; 
  for(int i = 0; i < one.length; i++)
  {
    one[i] = new Bacteria();
  }
}   
void draw()   
{ 
  background(0);
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
    x = (int)(Math.random()*500);
    y = (int)(Math.random()*500);
    myColor = color((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
  }
  void move()
  {
    if(mouseX > x)
      x = x + (int)(Math.random()*2);
    else
      x = x + (int)(Math.random()*-2);
    if(mouseY > y)
      y = y + (int)(Math.random()*2);
    else 
      y = y + (int)(Math.random()*-2);
  }
  void show()
  {
    fill(myColor);
    ellipse(x,y,10,10);
  } 
} 


