int n1, n2; 
int sum; 
String additionSentence; 
String sentence; 
void setup() {
  size(300, 300); 

  n1 = int(random(0, 10)); 
  n2 = int(random(0, 10)); 

  sum = addNumbers(n1,n2);

  additionSentence = str(n1) + " + " + str(n2) + " = " + str(sum); 
  text(additionSentence, width*.2, height/2); 

  
  //display text from the return a string function
 sentence = returnAString(str(n1),str(n2));
 text(sentence, width*.4, height/3);
 
}


int addNumbers(int num1, int num2) {
  int sum;
  sum = (num1 + num2);
  return sum;
}

//fix the function errors here
String returnAString(String string1, String string2) {
 String combinedString;
 combinedString = string1 + string2;
 return combinedString; 
}
