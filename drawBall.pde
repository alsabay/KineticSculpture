/*
function that draws 1 sphere
by: Al Sabay & Manny Farrugia Jan 26, 2018
*/

void drawBall(float x, float y, float z){
  pushMatrix();
  fill(ltgray);
  noStroke();
  lights();
  translate(x, y, z);
  sphere(rds);
  popMatrix(); 
}