/* @pjs preload="hot-air-balloon.png"; */

class Balloon {

  PImage balloon;
  PVector location;
  PVector velocity;
  PVector acceleration;
  float topspeed;
  public final float angle = 1.57;

  Balloon() {
    balloon = loadImage("hot-air-balloon.png");
    //location = new PVector(width/2, height/2);
    location = new PVector(width/2, height/4);
    velocity = new PVector(0, 0);
    topspeed = 6;
  }

  void update() {
    if (keyPressed && key == CODED) {
      if (keyCode == UP) {
        acceleration = PVector.fromAngle(angle);
        acceleration.mult(random(2));
        velocity.add(acceleration);
        velocity.limit(topspeed);
        location.sub(velocity);
      } 
      else if (keyCode == DOWN) {
        acceleration = PVector.fromAngle(angle);
        acceleration.mult(random(2));
        velocity.add(acceleration);
        velocity.limit(topspeed);
        location.add(velocity);
      }
    } 
  }

  void display() {
    imageMode(CENTER);
    image(balloon, location.x, location.y);
  }

}

