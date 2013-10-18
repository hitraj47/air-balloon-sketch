class Projectiles {
  
  //PVector location;
  //float angle;

  ArrayList<Projectile> arrayOfProjectiles; 

  //size(400, 400);
  //angle = PI;
  
  Projectiles() {
    arrayOfProjectiles  = new ArrayList<Projectile>();
  }
  
  void add(Projectile _p) {
    arrayOfProjectiles.add(_p);
  }
  
  void remove(Projectile p) {
    //arrayOfProjectiles();
  }

  void display() { 
  //background(255);

//  if (frameCount % 60 == 0)
//  {
//     location = new PVector(width/2, height/2);
//     arrayOfProjectiles.add(new Projectile(location, angle));
//  }

  for (int i = 0; i < arrayOfProjectiles.size(); i++)
  {
    arrayOfProjectiles.get(i).update();

    if (arrayOfProjectiles.get(i).location.x > width || arrayOfProjectiles.get(i).location.y > height)
      arrayOfProjectiles.remove(i);

    else
      arrayOfProjectiles.get(i).display();

  }

  println(arrayOfProjectiles.size());
  }

}

