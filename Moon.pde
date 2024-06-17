class Moon {
  private float x, y, z; //wzgledem planety
  private float radius;
  private Planet planet;
  private float surfaceAngle, vel, angle = 0;
  PShape moon;
  
  Moon(float x, float y, float z, float radius, Planet planet, float surfaceAngle, float vel) {
    this.x = x;
    this.y = y;
    this.z = z;
    this.radius = radius;
    this.planet = planet;
    this.surfaceAngle = surfaceAngle;
    this.vel = vel;
    
  }
  
  void drawMoon() {
    pushMatrix();
    translate(planet.getSun().getX(), planet.getSun().getY(), planet.getSun().getZ());
    rotateZ(planet.getPlanetSurfaceAngle());
    rotateY(planet.getAngle());
    translate(planet.getX(), planet.getY(), planet.getZ());
    rotateZ(radians(surfaceAngle));
    rotateY(angle);
    translate(x, y, z);
    sphere(radius);
    popMatrix();
  }
  
  void moveMoon() {
    if (angle > TWO_PI) {
     angle = 0; 
    }
    angle += radians(vel / 5);
  }
  
}
