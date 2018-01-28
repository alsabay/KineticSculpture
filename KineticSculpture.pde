/*
Anamorphic Kinetic Sculpture emulating "Breaking Wave" located in the Biogen Idec lobby
 in Cambridge, MA by Plebian Design and Hypersonic. Mouse drag will move the sculpture
 around the screen. Mousewheel rotates on X. Uses Sound library to play mp3 background music.
 Programmed in Processing Language by Al Sabay & Manny Farrugia, Jan 26, 2018.
 music by Al Sabay
 */
import processing.sound.*;

color white = color(255, 255, 255);
color blue = color(50, 10, 130);
color ltgray = color(240, 240, 240);
float rds = 6; // radius of sphere
float cx = 300; //  x origin of the matrix
float cy = 540; //  y origin of the matrix
float cz = 0; //  z origin of the matrix
float rad = 3; // radius of the sin
float angle = 0; // from 0-360
float waveRate = 10; // changes wave frequency
float rot = 0; // rotation angle
int rows  = 400; // x direction
int cols = 300; // z direction (depth)
float dist = 12; // distance between the spheres
SoundFile file;

void setup() {
  size(1000, 800, P3D);
  // Load a soundfile from the /data folder of the sketch and play it back
  file = new SoundFile(this, "kinetic.mp3");
  file.loop();
}

void draw() {
  background(blue);
  rotateX(radians(rot)); // rotate frame around X axis
  // draw a frame of balls in the z direction
  for (int z = 0; z< cols; z+=dist) {
    //draws a line of balls in the x direction with varying y coordinate
    for (int x = 0; x < rows; x+=dist) {
      if (angle < 360) {
        angle += waveRate;
      } else {
        angle = 0;
      }
      cy = cy + sin(radians(angle))*(rad); // varies the y coordinate of the ball
      drawBall(cx + x, cy, cz + z);
    }
  }
}