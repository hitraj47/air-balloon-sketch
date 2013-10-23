/**
  This is the driver class for the AirBalloon game.
*/
Balloon balloon;
Background background;
Turret t1, t2, t3, t4;
Projectiles projectiles;

void setup() {
  //size(800,600);
  size(600,600);
  background = new Background();
  balloon = new Balloon();
  projectiles = new Projectiles();
  
    // x, y, diameter, baseAngle, minAngle, maxAngle
  // For baseAngle:
  //   Bottom: -HALF_PI
  //   Top: HALF_PI
  //   Left: 0
  //   Right: PI
//  t1 = new Turret(width/2, height/2, 50, -HALF_PI, -PI, 0);
//  t2 = new Turret(width/2, 100, 50, HALF_PI, 0, PI);
//  t3 = new Turret(100, height/2, 50, 0, -HALF_PI, HALF_PI);
//  t4 = new Turret(width-100, height/2, 50, PI, -3*HALF_PI, -HALF_PI);
  int tsize = 50;
  t1 = new Turret(width/2, height-tsize, tsize, -HALF_PI, radians(225), radians(315));
  t2 = new Turret(width/2, tsize, tsize, HALF_PI, radians(45), radians(135));
  t3 = new Turret(tsize, height-tsize/2, tsize, 0, radians(300), radians(300));
  t4 = new Turret(width-tsize, height-tsize/2, tsize, PI, radians(210), radians(240));
  
}

void draw() {
  //background(255);
  background.display();
  balloon.update();
  balloon.display();
  
  // these two turrents have a min max angle
  t1.display();
  t2.display();
  t3.display();
  //t4.display();
  projectiles.display();
  
}





