double random;

public void setup()
{
  int r = (int)(Math.random() * 256);
  int g = (int)(Math.random() * 256);
  int b = (int)(Math.random() * 256);
  
  size(700,700);
  random = Math.random();
  fill(r, g, b);
}
public void draw()
{
  if (random <0.5){
    noStroke();
    sierpinski2(350, 350, 700 / 3);
  }
  if (random > 0.5)
    sierpinski(0, 700, 700);
}
public void mouseDragged()//optional
{

}
public void sierpinski(float x, float y, float len) 
{
  if (len <= 1)
    triangle(x, y, x + len, y, x + ((1/2)*len), y - len);
  else {
    triangle(x, y, x + len, y, x + len/2, y - len);
    sierpinski(x, y, len / 2);
    sierpinski(x + len/2, y, len / 2);
    sierpinski(x + len/4, y - len/2, len / 2);
  }
}

public void sierpinski2(float x, float y, float len){
  if (len <= 3)
    rect(x - len/2, y - len/2, len, len);
  else{
    rect(x - len/2, y - len/2, len, len);
    sierpinski2(x - len, y, len / 3);
    sierpinski2(x - len, y + len, len / 3);
    sierpinski2(x - len, y - len, len / 3);
    sierpinski2(x + len, y, len / 3);
    sierpinski2(x + len, y + len, len / 3);
    sierpinski2(x + len, y - len, len / 3);
    sierpinski2(x, y + len, len / 3);
    sierpinski2(x, y - len, len / 3);
  }
}
