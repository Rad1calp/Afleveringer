// Active PDE program version.
// 8-bit Binary to Unsigned integer number
// Tilrettet til at være kvadrater i stedet for cirkler
// Tilrettelser lavet af Lucas og Kristoffer 2d2

Bit[] bits = new Bit[8];    // array with room for 8 on/off Bit instances
int decimal = 0;
int binary = 0;
PFont font;

void setup() {
  size(600, 300);
  noStroke();
  font = createFont("Arial", 48, true);    // Windows 10 have a wrong font path
  for (int i = 0; i < bits.length; i++) {
    bits[i] = new Bit(i);
  }  // for
}  // setup

void draw() {
  background(0);
  for (int i = 0; i < bits.length; i++) {
    bits[i].display();
    fill(255);
    int bitValue = 1 << (bits.length - i - 1);    // very fast calculation of 2^i
    text(bitValue, width/9 * bits[i].position - 10, 50);
  }  // for
  fill(255);
  textFont(font, 48);
  textAlign(RIGHT);
  text(nf(binary, 8), width/9*8, 180);
  text(decimal, width/9*8, 230);
  textAlign(LEFT);
  text("Binært:", width/9, 180);
  text("Decimalt:", width/9, 230);
  textFont(font, 18);
  fill(0, 255, 255);  // Cyan text
  text("Klik en bit for at tænde (og addere værdien 2^n) eller sluk for en bit.", width/22, 25);
}  // draw

void keyReleased() {
  decimal = 0;
  binary = 0;
  for (int i = 0; i < bits.length; i++) {
    bits[i].updateKey();
    decimal += bits[i].value;  
    binary += bits[i].digit;
  }  // for
}  // keyReleased

void mouseReleased() {
  decimal = 0;
  binary = 0;
  for (int i = 0; i < bits.length; i++) {
    bits[i].updateMouse();
    decimal += bits[i].value;  
    binary += bits[i].digit;
  }  // for
}  // mouseReleased

class Bit {             // Bit object class
  int position;
  color colour = (55);  // Grey
  int value = 0;
  int digit = 0;
  
  Bit(int pos) {
    position = pos + 1;
  }
  
  void display() {
    fill(colour);
    rectMode(CENTER);                     // Sætter rectMode til "center" dette betyder at rektangler tegnet med "rect()" defineres ud fra deres centrum, dette 
    rect(width/9 * position, 80, 50, 50); // Tegner 8 rektangler med variabel  x position og en kostant y position på 80, alle disse rektangler har sidelængder på 80
  }
  
  void updateKey() {
    if (key == position + 48) {
      switch(colour) {
        case (55):
          colour = (255);
          value = int (pow(2, 8 - position));
          digit = int (pow(10, 8 - position));
          break;
        case (255):
          colour = (55);
          value = 0;
          digit = 0;
          break;
      }  // switch
    }  // if      
  }  // updateKey
  
  void updateMouse() {
    if (onSquare(width/9 * position, 80, 50)) {
      switch(colour) {
        case (55):
          colour = (255);
          value = int (pow(2, 8 - position));    // slow calculations
          digit = int (pow(10, 8 - position));   
          break;
        case (255):
          colour = (55);
          value = 0;
          digit = 0;
          break;
      }  // switch
    }  // onSquare
  }  // updateMouse
}  // class

boolean onSquare(int x, int y, int squareWidth) {
  float distX = abs(x - mouseX);                      // Tvinger musens x distancen til rektanglerne om til en positiv værdi
  float distY = abs(y - mouseY);                      // Tvinger musens y distancen til rektanglerne om til en positiv værdi
  float squareRadius = squareWidth / 2;               // Det halve af sidelængden udregenes
  if(distX <= squareRadius && distY <= squareRadius){ // checker ud fra samme midtpunkter som rektanglerne har afstanden til musen, hvis begge disse afstande er under eller lig halvdelen af rektanglernes bredde returneres "true" ellers retuneres "false"
    return true;
  } else {
    return false;
  }  // if
}  // end onSquare

// end
