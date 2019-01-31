public void setup()
{
  size(500,500);
  background(0);
}

public void draw()
{

}

public void sierpinski(int x, int y, int len) 
{
 if (len <= 20)
 {
   triangle(x,y,x+len/2, y-len, x+len, y);
 }
 else 
 {
   sierpinski(x, y, len/2);
   sierpinski(x+len/2, y, len/2);
   sierpinski(x+len/4, y-len/2, len/2);
 }
}

void mousePressed()
{
  sierpinski(125 ,320, 300);
  text("im special too", 240, 400);
}
