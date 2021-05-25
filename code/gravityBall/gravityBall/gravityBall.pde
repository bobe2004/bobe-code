int w = 255;
int a = 255;
int s = 255;
int d = 255;
float x;
float y;
float xm = 0;
float ym = 0;
float grv = .3;          //gravity, default 0.3
float di = 100;          //diameter of circle, default 100

void setup() {
  size(1600, 900);
  frameRate(60);
  background(0);
  x = width/2;
  y = height/2;
  rectMode(CORNERS);
}

void draw() {
  background(0);
  w = 255;
  a = 255;
  s = 255;
  d = 255;
  move();
  bounce();
  control();
  gui();
  fill(255);
  ellipse(x, y, di, di);
}
