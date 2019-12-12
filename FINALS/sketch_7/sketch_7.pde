int numStrings = 7; 
float[] stringsX= new float[numStrings]; 
float[] stringsY = new float[numStrings]; 
String[] printWords = new String[numStrings];

void setup() {
  background(255); 
  size(700, 100); 
  smooth(); 


  printWords[0] = "Hello";
  printWords[1] = "is";
  printWords[2] = "it";
  printWords[3] = "me";
  printWords[4] = "you're";
  printWords[5] = "looking";
  printWords[6] = "for";

}

  void draw() {

    int spacing = width / numStrings; 
    for (int i=0; i < numStrings; i++) {
      stringsX[i] = 50 + i*spacing; 
      stringsY[i] = 50;
      fill(0);
      textSize(20);
      text(printWords[i], stringsX[i], stringsY[i]);
    }
  
  for (int i=0; i<numStrings; i++) {
    float d= dist(mouseX, mouseY, stringsX[i], stringsY[i]);

    println(d);

    if (d < 100) {
      fill(0, 0, 255);
    }
  }
}
