boolean hadPressed;
boolean mouseReleased;

Buttons blueButton, greenButton, pinkButton, redButton, yellowButton, purpleButton;
color bkg;
//color pallete
color RED    = #FF0000;
color PINK   = #FF93E4;
color GREEN  = #33FF15;
color YELLOW = #FFF824;
color BLUE   = #2883F7;
color PURPLE = #895FFF;

void setup() {
  size(1200, 800, FX2D);
  blueButton = new Buttons(150, 150, 200, 150, PURPLE, BLUE, "Blue" );
  redButton = new Buttons(150, 350, 200, 150, PINK, RED, "Red" );
  pinkButton = new Buttons(150, 550, 200, 150, YELLOW, PINK, "PINK" );
}
void draw() {
  
 if (mousePressed) hadPressed = true;
 if (hadPressed &&!mousePressed) {
        mouseReleased = true;
        hadPressed = false;
      } else mouseReleased = false;
  background(bkg);
  blueButton.show();
  redButton.show();
  pinkButton.show();

  if (blueButton.clicked) {
   bkg = BLUE; 
  } 
  if (redButton.clicked) {
   bkg = RED;
  } 
  if (pinkButton.clicked) {
    bkg = PINK; 

  }
}
