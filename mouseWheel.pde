/*
Rotates sculpture around X axis
Al Sabay, Manny Farrugia Jan 26, 2018
*/

void mouseWheel(MouseEvent event) {
  float e = event.getCount();
  rot +=e/10; // update rotation variable. divide by ten to smooth the movement
  //print(rot);
}