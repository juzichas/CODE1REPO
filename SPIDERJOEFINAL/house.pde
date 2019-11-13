class House {
  // set up color in display method
  float xPos, yPos;
  int size; 
  PImage house;
  int arrayI, arrayII;

  House() {

    size = 77;
    house = loadImage("house.png");
    xPos = 1;
    yPos = 1;
    
  }

  void drawHouse() {

    image(house, xPos*arrayI, yPos*arrayII, size, size);
  }
}
