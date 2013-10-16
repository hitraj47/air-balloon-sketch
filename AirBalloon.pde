/**
  This is the driver class for the AirBalloon game.
*/
<<<<<<< HEAD
Balloon balloon;

void setup() {
  size(800,600);
  balloon = new Balloon();
}

void draw() {
  background(255);
  balloon.update();
  balloon.display();
=======

Background background;

void setup() { 
  size(600, 600);
  background = new Background();

}

void draw() {
  background.display();
>>>>>>> 5d5d1ae10731d26bd3c3ced1537f78420d2f097a
}
