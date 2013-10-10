void setup() {
  size(640, 360);  // Size should be the first statement
  stroke(255);     // Set stroke color to white
  frameRate(50);
  background(0);

  try {
  	start();
  } catch (e) {}

  noLoop();
}

boolean doLoop = false;

void mousePressed() {
  if (!doLoop) {
    loop();
    doLoop = true;
  } else {
    noLoop();
    doLoop = false;
  }
}