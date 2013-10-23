public class Turret
{
  PVector location;
  int diameter;
  float baseAngle, minAngle, maxAngle, angle;
  float speed = .01;
  boolean collision;
  int launchInterval = 1; //in seconds
  boolean isOscillating = true;

  public Turret(int x, int y, int diameter, float baseAngle, float minAngle, float maxAngle)
  {
    location = new PVector(x, y);
    this.diameter = diameter;
    this.baseAngle = baseAngle;
    this.minAngle = minAngle;
    this.maxAngle = maxAngle;
    angle = minAngle;
  }
  
  public Turret(int x, int y, diameter, float baseAngle, angle)
  {
    location = new PVector(x, y);
    this.diameter = diameter;
    this.baseAngle = baseAngle;
    this.angle = angle;
  }

  public void display()
  {
    //fill(100);
    colorMode(RGB, 255);
    fill(100, 100, 100, 200);
    noStroke();
    
    // barrel
    pushMatrix();
    translate(location.x, location.y);
    rotate(updateAngle());
    rectMode(CORNER);
    rect(0, -5, 50, 10);
    popMatrix();

    ellipseMode(CENTER);
    ellipse(location.x, location.y, diameter, diameter);
    
    // base
    pushMatrix();
    translate(location.x, location.y);
    rotate(baseAngle);
    rectMode(CENTER);
    rect(0-diameter/2, 0, diameter, diameter);
    popMatrix();
  }

  private float updateAngle()
  {
    if (isOscillating) {
      
      if ( angle <= minAngle )
        collision = false;
      else if ( angle >= maxAngle )
        collision = true;
        
      //if ( collision == true )
      if (collision) // cleaner than previous line
        angle-=speed;
      else if ( collision == false )
        angle+=speed;
    }
      
    updateLauncher();
    return angle;
  }
  
  private void updateLauncher() {
    if (frameCount % (launchInterval*6) == 0)
    {
     PVector loc = getEndOfBarrelLoc();
     float a = angle;
     projectiles.add(new Projectile(loc, a));
    } 
  }
  
  public float getAngle()
  {
    return angle;
  }
  
  public PVector getLocation()
  {
    return location;
  }
  
  public PVector getEndOfBarrelLoc() {
    return new PVector(location.x+50*cos(angle), location.y+50*sin(angle));
  }
}

