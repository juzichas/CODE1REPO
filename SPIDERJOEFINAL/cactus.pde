class Cactus {
  // set up color in display method
  float xPos, yPos;
  int size; 
  PImage cactus;
  int arrayI, arrayII;

  Cactus() {

    size = 77;
    cactus = loadImage("cactus.png");
    xPos = 1;
    yPos = 1;
    
  }

  void drawCactus() {

    image(cactus, xPos*arrayI, yPos*arrayII, size, size);
  }
}
