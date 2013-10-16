// Visualization of animated two-dimensional perlin noise
// written by Jakob Thomsen
 
// (see http://en.wikipedia.org/wiki/Perlin_noise)
// another good link: http://paulbourke.net/texture_colour/perlin/

class Background { 
  
  int linearize(int x, int y)
  {
    x = constrain(x, 0, width - 1);
    y = constrain(y, 0, height - 1);
   
    return x + y * width;
  }
   
  float g_time;
  color gradientTop;
  color gradientBottom;
  int Y_AXIS = 2;
   
  Background()
  {
    colorMode(RGB, 1);
    g_time = 0.0;
    gradientTop = color(255, 0);
    gradientBottom = color(0, 0, 10, .4);
  }
   
  void display()
  {
    // g_time = float(millis()) / 1000.0;
    g_time += 0.04;
   
    loadPixels();
    for (int y = 0; y < height; y++)
    {
      for (int x = 0; x < width; x++)
      {
        float noise = noise(g_time / 3.0, float(x) / 150.0, float(y) / 60.0);
        pixels[linearize(x, y)] = color(noise, noise, 255);
      }
    }
    updatePixels();
    fill(255, 255, 255, .5);
    noStroke();
    rect(0, 0, width, height);
    setGradient(0, 0, width, height, gradientTop, gradientBottom, Y_AXIS);
  
  }
  
  void setGradient(int x, int y, float w, float h, color c1, color c2, int axis ) {
  
    noFill();
  
    if (axis == Y_AXIS) {  // Top to bottom gradient
      for (int i = y; i <= y+h; i++) {
        float inter = map(i, y, y+h, 0, 1);
        color c = lerpColor(c1, c2, inter);
        stroke(c);
        line(x, i, x+w, i);
      }
    }  
  }
}

