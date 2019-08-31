void setup()
{
  background(255);
  size(750, 500);
  //Sky
  fill(150, 150, 255);
  rect(0, 0, 750, 500);
  //Sun
  fill(253, 184, 19);
  ellipse(375, 250, 250, 250);
  //Grass
  fill(100, 150, 0);
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
  ellipse(600, 250, 40, 40);
  //Eyes
  fill(0);
  ellipse(593, 245, 5, 15);
  ellipse(607, 245, 5, 15);
}
