float xPos = 1;
float yPos; 
float r, g, b; 
float second = second();
void setup() {
  size(600, 600); 
  smooth();  
  noStroke();
}

void draw() {

  //draws background
  for (int i = 0; i < width; i++) {
    for (int j = 0; j < height; j++) {
      float r = map(i, 0, width, 91, 255);
      float g = map(j, 0, height, 170, 33);
      stroke(r, g, 175);
      point(j, i);
    }
  }

  yPos = sin(radians(second()))*height; 
    
//map(value, start1, stop1, start2, stop2)
    
    
  xPos = map(xPos, 0, second, 0, width);
  
  // first set converts to second set it lines up 
  println("xposition" + xPos);
  println("seconds" + second);
  ellipse(xPos, yPos, 100, 100);
 
}
