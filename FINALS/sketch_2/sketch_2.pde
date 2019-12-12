int xPos, yPos; 
int size = 100; 
boolean circleClicked = false; 
boolean inside = false;
float d; 

void setup() {
  size(600, 600); 
  xPos = width/2; 
  yPos = height/2;
  noStroke();
}

void draw() {

  //calculate dist between the mouse and the center of the circle 

  d = dist(mouseX, mouseY, xPos, yPos);


  if (d < 100) {
    fill(0);
    inside = true;
} else {
  inside = false;
  fill(255);
  }





  // clicky stuff
  if (circleClicked) {
    background(0);
  } else {
    background(255);
  }

  ellipse(xPos, yPos, size, size); 


  
  
  //if the mouse is inside the circle, fill the circle black 
  //otherwise, fill the circle white
}

void mousePressed() {
  // toggle the boolean from true / false if the mouse is inside of the circle
  if (inside == true){
  circleClicked=!circleClicked;
  }
}
