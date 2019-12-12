String welcomeMsg;
float[] floatArray = new float[100];
  boolean isCodeGreat = true;
 int i;

void setup() {
  welcomeMsg = "welcome to the first midterm question!";



  println (welcomeMsg);

  println("now we'll do a loop and print the iterating value!");

  for (i = 0; i < 3; i++) {
    println("this is loop number " + i);
  }
}

void draw() {

  if (isCodeGreat == true) {
    println(floatArray[0]);
  }
}
