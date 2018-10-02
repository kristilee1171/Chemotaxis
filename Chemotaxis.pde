Bacteria one;  
void setup()   
{     
  size(500,500);   
  background(0);
  one = new Bacteria(250,250);   
}   
void draw()   
{    
  one.show(); 
  one.move();
}  
class Bacteria    
{    
  int myX, myY, myColor;
  Bacteria(int x, int y)
  {
    myX = x;
    myY = y;
  }
  void move()
  {
    myX = myX + (int)(Math.random()*3)-1;
    myY = myY + (int)(Math.random()*3)-1;
  }
  void show()
  {
    //noStroke();
    fill(255,0,0);
    ellipse(myX,myY,10,10);
  } 
}    
