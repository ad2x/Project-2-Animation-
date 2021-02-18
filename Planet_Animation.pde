//Alexander Double
//1-3b
//Feb 10 2021

//The Sun's Location
float SunAngle;

//Sun lighting var
int Light;
int darkness;

//CLoud angle var
float CloudAngle1, CloudAngle2, CloudAngle3, CloudAngle4, CloudAngle5, CloudAngle6;

//Shading var (combined Light and darkness vars because the code looks nicer this way)
int Shading;

//Raft angle
float RaftAngle;

void setup() {  //---------------------------------------------------------------------------------------------------------------
  //Window
  size(800, 600);
  
  //Sun Loc Variable
  SunAngle = 0;
  
  //Light var 
  Light = 1;
  
  //Change how much everything is darkened w the sun offscreen
  darkness = 20;
  
  //Cloud Angle variables
  CloudAngle1 = 6;
  CloudAngle2 = 2;
  CloudAngle3 = 0.3;
  CloudAngle4 = 1;
  CloudAngle5 = 3;
  CloudAngle6 = 5;
  
  //Shading var
  Shading = 0;
  
  //Raft angle starting point
  RaftAngle = 6.2;
} // ---------------------------------------------------------------------------------------------------------------------------------

void draw() {  //-------------------------------------------------------------------------------------------------------------------------------
  //Change framrate w mouse
  frameRate(mouseX/5 + 10);
  
  //Background (Refreshes image)
  background(0);

  //Angle of sun increasing
  SunAngle = SunAngle + 0.01;
  
  //Halves the time the sun is offscreen so there day/night cycle is relatively even
  if (SunAngle == 1.4999989) {
    SunAngle = 4.5;
  }
  
  //Resets the suns radian value each rotation so the prior if statement works
  if (SunAngle == 6.2700405) {
    SunAngle = 0;
  }
  
  //If the sun goes offscreen the light var gets turned off  
  if (SunAngle == 0.6299997) {
    Light = 0;
  }
  
  // If the sun goes on screen the light var gets turned on 
  if (SunAngle == 5.8300304) {
    Light = 1;
  }  
  
  //Shading update
  Shading = darkness * Light;
    
  //Angle of clouds increasing
  CloudAngle1 = CloudAngle1 + 0.005;
  CloudAngle2 = CloudAngle2 + 0.005;
  CloudAngle3 = CloudAngle3 + 0.005;
  CloudAngle4 = CloudAngle4 + 0.005;
  CloudAngle5 = CloudAngle5 + 0.005;
  CloudAngle6 = CloudAngle6 + 0.005;
  
  //Raft angle increasing
  RaftAngle = RaftAngle + 0.008;
  
  //Layer order
  Sun(400, 1250);
  Planet();
  Cloud1(400, 1250);
  Cloud2(400, 1250);
  Cloud3(400, 1250);
  Cloud4(400, 1250);
  Cloud5(400, 1250);
  Cloud6(400, 1250);
  Raft(400, 1250);
}//----------------------------------------------------------------------------------------------------------------------------------------------------

//Planet at bottom of screen
void Planet() {
  pushMatrix();
  translate(400, 300);
  
  //Object details
  strokeWeight(2);
  stroke(27 + Shading * 2,59 + Shading * 2,227 + Shading * 2); // The light determines if the second value is added (0 or 1), the darkness value can be changed to affect how dark things are without the sun, and the 2 is so outlines darken more than fill
  fill(75 + Shading, 105 + Shading, 245 + Shading);
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

//Clouds circling the planet (1st one)
void Cloud1(int x, int y) {
  pushMatrix();
  translate(x, y);
  
  //Rotate stuff
  rotate(CloudAngle1);
  
  //Colours etc.
  strokeWeight(4);
  stroke(75 + Shading * 2);
  fill(115 + Shading);
  
  //Object details
  ellipse(-50, -800, 75, 75);
  ellipse(50, -800, 85, 85);
  ellipse(0, -800, 100, 100);
  
  popMatrix();
}

//Clouds circling the planet (2nd one)
void Cloud2(int x, int y) {
  pushMatrix();
  translate(x, y);
  
  //Rotate stuff
  rotate(CloudAngle2);
  
  //Colours etc.
  strokeWeight(4);
  stroke(75 + Shading * 2);
  fill(115 + Shading);
  
  //Object details
  ellipse(-50, -800, 100, 100);
  ellipse(50, -800, 80, 80);
  ellipse(0, -800, 90, 90);
  
  popMatrix();
}

//Clouds circling the planet (3rd one)
void Cloud3(int x, int y) {
  pushMatrix();
  translate(x, y);
  
  //Rotate stuff
  rotate(CloudAngle3);
  
  //Colours etc.
  strokeWeight(4);
  stroke(75 + Shading * 2);
  fill(115 + Shading);
  
  //Object details
  ellipse(-50, -800, 85, 85);
  ellipse(50, -800, 65, 65);
  ellipse(0, -800, 90, 90);
  
  popMatrix();
}

//Clouds circling the planet (4th one)
void Cloud4(int x, int y) {
  pushMatrix();
  translate(x, y);
  
  //Rotate stuff
  rotate(CloudAngle4);
  
  //Colours etc.
  strokeWeight(4);
  stroke(75 + Shading * 2);
  fill(115 + Shading);
  
  //Object details
  ellipse(-50, -800, 75, 75);
  ellipse(50, -800, 85, 85);
  ellipse(0, -800, 100, 100);
  
  popMatrix();
}

//Clouds circling the planet (5th one)
void Cloud5(int x, int y) {
  pushMatrix();
  translate(x, y);
  
  //Rotate stuff
  rotate(CloudAngle5);
  
  //Colours etc.
  strokeWeight(4);
  stroke(75 + Shading * 2);
  fill(115 + Shading);
  
  //Object details
  ellipse(-50, -800, 100, 100);
  ellipse(50, -800, 80, 80);
  ellipse(0, -800, 90, 90);
  
  popMatrix();
}

//Clouds circling the planet (6th one)
void Cloud6(int x, int y) {
  pushMatrix();
  translate(x, y);
  
  //Rotate stuff
  rotate(CloudAngle6);
  
  //Colours etc.
  strokeWeight(4);
  stroke(75 + Shading * 2);
  fill(115 + Shading);
  
  //Object details
  ellipse(-50, -800, 85, 85);
  ellipse(50, -800, 65, 65);
  ellipse(0, -800, 90, 90);
  
  popMatrix();
}

//Little raft on the water
void Raft(int x, int y) {
  pushMatrix();
  translate(x, y);
  
  //Rotation :)
  rotate(RaftAngle);
  
  //Body of raft
  strokeWeight(0.5);
  stroke(75 + Shading * 2, 45 + Shading * 2, 5 + Shading * 2);
  fill(110 + Shading, 65 + Shading, 5 + Shading);
  rect(-50, -725, 75, 100);
  
  //Flag pole
  strokeWeight(3);
  stroke(0);
  fill(255);
  ellipse(0, -715, 10, 10);
  
  //Flag
  strokeWeight(1);
  stroke(0);
  fill(255);
  triangle(-50, -730, 0, -715, 0, -700);
  
  popMatrix();
}
