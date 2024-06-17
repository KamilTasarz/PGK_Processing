class Sun {
 private float x, y, z, radius;
 private float[] lightColor = {255, 255, 255};
 private color ecolor;
 
 Sun (float x, float y, float z, float radius, color ecolor) {
  this.x = x;
  this.y = y;
  this.z = z;  
  this.radius = radius;
  this.ecolor = ecolor;
 }
 
 void drawSun() {
   pushMatrix();
   translate(x, y, z);
   emissive(ecolor);
   sphere(radius);
   pointLight(lightColor[0], lightColor[1], lightColor[2], x, y, z);
   popMatrix();
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
}
