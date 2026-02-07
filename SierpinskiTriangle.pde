public int finalpattern = 10;

public void setup() {
  size(1000,1000);
  noLoop();
}

public void draw() {
  background(0);
  Sierpinski(0,0,width,0);
}

public void mousePressed() {
  if (finalpattern == 10) {
    finalpattern = 1;
  }
  else {
    finalpattern += 1;
  }
  redraw();
}

public void Sierpinski(int x, int y, int len, int pattern) {
  if (pattern >= finalpattern) {
    triangle(x,y,x+len,y,x+len/2,y+len);
  }
  else {
    fill((float)Math.random()*255,(float)Math.random()*255,(float)Math.random()*255);
    Sierpinski(x,y,len/2,pattern+1);
    Sierpinski(x+len/2,y,len/2,pattern+1);
    Sierpinski(x+len/4,y+len/2,len/2,pattern+1);
  }
}

