/*
Updates cx and cy with mouse position values to drag the sculpture around the screen
by Al Sabay, Manny Farrugia
Jan 27, 2018
*/
void mouseDragged(){
  cx = mouseX - 200; // offset value centers the mouse cursur on sculpture
  cy = mouseY - 50;  // offset value centers the mouse cursur on scupture
}