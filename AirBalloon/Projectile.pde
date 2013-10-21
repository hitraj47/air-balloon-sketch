class Projectile
{    
  PVector location;
  PVector velocity;
  float angle;
  float dia = 5;

  Projectile(PVector _location, float _angle)
  {
    location = _location;
    angle = _angle;
    
    velocity = new PVector(10 * cos(angle), 10 * sin(angle));
    
  }
  
  void display()
  {
    stroke(0); 
    strokeWeight(2);
    fill(127);
    ellipse(location.x, location.y, dia, dia);
  }
  
   void update()
  {
    location.add(velocity);
  }
  
}

