//John Soria
//methods assignment stemming off of picture assignment
//opens window with white background and 750x500 size
void setup() {
  background(255);
  size(750, 500);
}
//sets variables
int YPrime = 250;
int green = 102;
int blue = 255;
int XPrime = -400;
//opens draw loop
void draw() {
  noStroke();
  //wipe
  background(255);
  //Sky
  //darkens the sky using the methods at the bottom
  if (YPrime < 500) {
    green = darken1v1(green);
    blue = darken1v2(blue);
  }
  fill(0, green, blue);
  rect(0, 0, 750, 500);
  //Sun
  fill(251, 225, 0);
  //makes the method return YPrime
  if (YPrime < 500) {
    YPrime = moveDown(YPrime);
  }
  //makes the method return XPrime until 753
  if (XPrime < 753) {
    XPrime = moveRight(XPrime);
  }
  //makes a wall for the sun to hit at the bottom
  if (YPrime > 500) {
    YPrime = 500;
  }
  //sun
  ellipse(375, YPrime, 250, 250);
  //creates stars
  for (int xstar = 50; xstar < 750; xstar = xstar+50) {
    for (int ystar = 20; ystar < 300; ystar = ystar + 35) {
  //draws stars and satellite when sun is fully down
  if (YPrime == 500) {
    fill(255);
    ellipse(xstar, ystar, 3, 3);
    ellipse(XPrime, 30, 4, 4);
  }
  //Grass
   fill(17, 182, 0);
   rect(0, 300, 750, 500);
  //House
  fill(0, 0, 50);
  rect(50, 200, 205, 200);
  //Roof
  fill(100, 0,33);
  triangle(50, 200, 153, 50, 255, 200);
  //Door
  rect(110, 300, 80, 100);
  //Doorknob
  fill(0);
  ellipse(130, 360, 10, 10);
  //Dress
  fill(150, 0, 150);
  triangle(600, 230, 580, 350, 620, 350);
  //Human head
  fill(255, 206, 180);
  ellipse(600, 240, 40, 40);
  //Eyes
  fill(0);
  ellipse(593, 235, 5, 15);
  ellipse(607, 235, 5, 15);
  //Limbs
  strokeWeight(3);
  //Arms
  line(590, 280, 570, 320);
  line(610, 280, 630, 320);
  //Legs
  line(595, 350, 595, 380);
  line(605, 350, 605, 380);
  }
  }
  }
  //moves sun down
int moveDown(int YPrime) {
  return YPrime + 2;
}
//darkens the sky color value for green and blue
int darken1v1(int green) {
  return green - 1;
}
int darken1v2(int blue) {
  return blue - 3;
}
//moves comet right
int moveRight(int XPrime) {
  return XPrime+4;
}
