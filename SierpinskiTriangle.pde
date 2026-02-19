int minLength = 10;
int maxLength = 500;

public void setup(){
  background(0, 0, 0);
  size(800, 600);
}

public void draw(){
  int len = maxLength;
  sierpinski(width/2 - len/2, height/2 + Math.sqrt(3)*(len/4), len);
}

public void sierpinski(double x, double y, double len){
  if (len < minLength){
    equilateral(x, y, len);
    return;
  }
  sierpinski(x, y, len/2);
  sierpinski(x + len/2, y, len/2);
  sierpinski(x + len/4, y - len/2, len/2);
}

//x and y are the bottom left corner
//Direction  is either 1 (upright) or -1 (upside down)
public void equilateral(double x1, double y1, double len){
  double x2, y2, x3, y3;
  
  x2 = x1 + len;
  y2 = y1;
  x3 = x1 + len*Math.cos(PI/3);
  y3 = y1 - len*Math.sin(PI/3);
  
  stroke(255, 255, 255);
  strokeWeight(1);
  fill(0, 0, 0);
  triangle((float)x1, (float)y1, (float)x2, (float)y2, (float)x3, (float)y3);
}
