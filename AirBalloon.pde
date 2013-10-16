/**
  This is the driver class for the AirBalloon game.
*/

Background background;

void setup() { 
  size(600, 600);
  background = new Background();

}

void draw() {
  background.display();
}
