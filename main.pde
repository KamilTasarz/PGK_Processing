Planet planet1;
Planet planet2;
Planet planet3;
Moon moon;
//Ship ship;
Sun sun;
float xset = 800, zset = -800;
void setup() {
  size(1600, 900, P3D);
  lights();
  noStroke();
  sun = new Sun(xset, 0, zset, 150, color(255, 100, 0));
  planet1 = new Planet(800, 0, 800, 20, sun, 0, 1.5, 6, 10, true); //x, y, z, radius, sun, surfaceAngle, vel, velAroundItself, aroundAngle, isRound
  planet2 = new Planet(1200, 0, 1200, 90, sun, 5, 1, 1.5, 0, true);
  planet3 = new Planet(500, 0, 500, 40, sun, 10, 4, 3, -3, false);
  moon = new Moon(200, 0, 200, 20, planet2, 90, 5);
  //ship = new Ship(xset, 0, 2000, 0, 40, 100, 20);
}
float x = 0, y = 0;
boolean changed = false;
void draw() {
  ambientLight(100, 100, 100);
  if (changed) {
    camera(xset, -3000, zset, xset, 0, zset, 1, 0, 0);
  } else {
    camera(xset, 0, 2000, xset, 0, zset, 0, 1, 0);
    
  }
  
  background(0, 0, 255);
  sun.drawSun();
  planet1.drawPlanet();
  planet1.movePlanet();
  planet2.drawPlanet();
  planet2.movePlanet();
  planet3.drawPlanet();
  planet3.movePlanet();
  moon.drawMoon();
  moon.moveMoon();
  //ship.display(changed);
  
  if (keyPressed) {
    if (key == 'k') {
     changed = false;
    }
    if (key == 'l') {
     changed = true;
    }
    //if (key == 'w') {
    // ship.moveForward();
    //}
    //if (key == 's') {
    // ship.moveBackward();
    //}
    //if (key == 'a') {
    // ship.turnAroundLeft();
    //}
    //if (key == 'd') {
    // ship.turnAroundRight();
    //}
    
  }
  
  //ship.right_leftTurn();
  //ship.up_downTurn();
}
