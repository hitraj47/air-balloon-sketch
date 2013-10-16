Turret t1, t2, t3, t4;
void setup()
{
  size(600,600);
  
  // x, y, diameter, baseAngle, minAngle, maxAngle
  // For baseAngle:
  //   Bottom: -HALF_PI
  //   Top: HALF_PI
  //   Left: 0
  //   Right: PI
  t1 = new Turret(width/2, height/2, 50, -HALF_PI, -PI, 0);
  t2 = new Turret(width/2, 100, 50, HALF_PI, 0, PI);
  t3 = new Turret(100, height/2, 50, 0, -HALF_PI, HALF_PI);
  t4 = new Turret(width-100, height/2, 50, PI, -3*HALF_PI, -HALF_PI);
}

void draw()
{
  background(0);
  t1.display();
  t2.display();
  t3.display();
  t4.display();
}
