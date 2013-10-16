/**
  This is the driver class for the AirBalloon game.
*/
Balloon balloon;

void setup() {
  size(800,600);
  balloon = new Balloon();
}

void draw() {
  background(255);
  balloon.update();
  balloon.display();
}
