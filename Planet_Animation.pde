//Alexander Double
//1-3b
//Feb 10 2021

//Import math
import java.util.*; 

//The Sun's Location
int SunX, SunY;
int SunOrbit;
int SunAngle;

void setup() {
  
  //Window + background
  size(800, 600);
  background(0);
  
  //Sun orbit control
  SunOrbit = 950;
  
  //Sun Loc Variables
  SunX = 0;
  SunY = -SunOrbit;
  SunAngle = 0;
}

void draw() {
  //Sun moving around planet
  SunAngle = SunAngle + 1;
  SunXValue(SunAngle);
  SunYValue(SunAngle);
  
  //Testing
  Planet();
  Sun(SunX, SunY);
}

//Planet at bottom of screen
void Planet() {
  pushMatrix();
  translate(400, 300);
  
  //Object details
  strokeWeight(1);
  stroke(#1B20E3);
  fill(#1B20E3);
  ellipse(0, 950, 1600, 1600);
  
  popMatrix();
}

//Largest star
void Sun(int x, int y) {
  pushMatrix();
  translate(400, 300);
  
  //Object details
  fill(#FFF940);
  strokeWeight(3);
  stroke(#FFB617);
  ellipse(x, y+ 950, 200, 200);
  
  popMatrix();
}

int SunXValue(double sun_deg) {
  //Convert to radians
  sun_deg = Math.toRadians(sun_deg);
  
  //Calculate x value
  SunX = (int) Math.sin(sun_deg) * SunOrbit;
  
  return SunX;
}

int SunYValue(double sun_deg) {
  //Convert to radians
  sun_deg = Math.toRadians(sun_deg);
  
  //Calculate y value
  SunY = (int) Math.cos(sun_deg) * SunOrbit;
  
  return SunY;
}
