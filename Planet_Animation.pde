//Alexander Double
//1-3b
//Feb 10 2021

//The Sun's Location
float SunAngle;

void setup() {
  //Window
  size(800, 600);
  
  //Sun Loc Variable
  SunAngle = 0;
}

void draw() {
  //Background (Refreshes image)
  background(0);

  //Angle of sun increasing
  SunAngle = SunAngle + 0.01;
  
  //Reset sun pos in sky
  if (SunAngle == 1.5) {
    SunAngle = 0.5;
  }
  
  //Layer order
  Sun(400, 1250);
  Planet();
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
  translate(x, y);
  
  //Angle the sun orbits at
  rotate(SunAngle);
  
  //Object details
  fill(#FFF940);
  strokeWeight(3);
  stroke(#FFB617);
  ellipse(0, -875, 200, 200);
  
  popMatrix();
}
