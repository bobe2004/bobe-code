boolean[] moveKeys = new boolean[4];

void move() {
  y = y + ym;
  x = x + xm;
  ym = ym + grv;
}

void bounce() {
  if (y > height-di/2) {
    ym = ym * -.9;
    y = height-di/2;
  }
  if ( y < 0+di/2) {
    ym = ym * -.9;
    y = 0+di/2;
  }
  if ( x > width-di/2) {
    xm = xm * -.9;
    x = width-di/2;
  }
  if ( x < 0+di/2) {
    xm = xm * -.9;
    x = 0+di/2;
  }
}

void control() {
  if (moveKeys[0]) {
    if (grv == 0) {
      ym = ym - .4;
    } else {
      ym = ym - grv - grv;
    }
    w = 100;
  }
  if (moveKeys[2]) {
    if (grv == 0) {
      ym = ym + .4;
    } else {
      ym = ym + grv + grv/2;
    }
    s = 100;
  }
  if (moveKeys[1]) { 
    xm = xm - .4; 
    a = 100;
  }
  if (moveKeys[3]) {
    xm = xm + .4;
    d = 100;
  }
}

void gui() {
  fill(a);
  rect(25, height - 25, 50, height - 50);
  fill(s);
  rect(55, height - 25, 80, height - 50);
  fill(d);
  rect(85, height - 25, 110, height - 50);
  fill(w);
  rect(55, height - 55, 80, height - 80);
}

void setMovement(int k, boolean b) {
  switch (k) {
  case 'w':
    moveKeys[0] = b;
    break;
  case 'a':
    moveKeys[1] = b;
    break;
  case 's':
    moveKeys[2] = b;
    break;
  case 'd':
    moveKeys[3] = b;
    break;
  }
}

void keyPressed() {
  setMovement(key, true);
}

void keyReleased() {
  setMovement(key, false);
}
