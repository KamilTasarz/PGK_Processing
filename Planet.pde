class Planet {
  private float x, y, z; //wzgledem slonca
  private float radius;
  private Sun sun;
  private float surfaceAngle, vel, velAroundItself, aroundAngle, angle = 0, angleAroundItself = 0;
  PShape planet;
  boolean isRound;
  
  Planet(float x, float y, float z, float radius, Sun sun, float surfaceAngle, float vel, float velAroundItself, float aroundAngle, boolean isRound) {
    this.x = x;
    this.y = y;
    this.z = z;
    this.radius = radius;
    this.sun = sun;
    this.surfaceAngle = surfaceAngle;
    this.vel = vel;
    this.velAroundItself = velAroundItself;
    this.aroundAngle = aroundAngle;
    planet = createShape(SPHERE, radius);
    planet.setTexture(loadImage("texture.jpg"));
    this.isRound = isRound;
  }
  
  void drawPlanet() {
    pushMatrix();
    translate(sun.getX(), sun.getY(), sun.getZ());
    rotateZ(radians(surfaceAngle));
    rotateY(angle);
    translate(x, y, z);
    rotateX(radians(aroundAngle));
    rotateY(angleAroundItself);
    if (isRound) {
      shape(planet);
    } else {
      fill(200);
      emissive(color(255, 255, 255));
      box(radius);
    }
    popMatrix();
  }
  
  void movePlanet() {
    if (angle > TWO_PI) {
     angle = 0; 
    }
    angle += radians(vel / 10);
    angleAroundItself += radians(velAroundItself);
  }
  
 float getX() {
  return x; 
 }
 
 float getY() {
  return y; 
 }
 
 float getZ() {
  return z; 
 }
 
  float getAngle() {
  return angle; 
 }
 
 Sun getSun() {
  return sun; 
 }
 
 float getPlanetSurfaceAngle() {
  return radians(surfaceAngle); 
 }
  
}
