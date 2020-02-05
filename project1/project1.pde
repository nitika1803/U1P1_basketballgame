int x= 255;
int y= 620;
float birdX= 0;
float birdY= 20;
int birdSize = 50;
int personX =540;
int personY = 360;
int bbSize= 90;
int personSize= 250;
int points = 0;
float square = 50;
PImage basketball;
PImage background;
PImage bird;
PImage person;


void setup()
{
  size(800,800);
  basketball = loadImage("basketball.png");
  background = loadImage("background.jpg");
  background.resize (800,800);
  bird = loadImage("bird.png");
  bird.resize (birdSize,birdSize);
  person = loadImage("person.png");
  textSize(15);
}

void draw()
{
 background(background);
 textAlign(CENTER);
 text("Use the arrow keys to shoot the ball into the hoop!", 200, 300);
  textAlign(CENTER);
   text("Points:" + points, 725, 90);
 image(basketball,x,y,bbSize, bbSize);
 image(bird,birdX,birdY,90,90);
 birdY = 20+sin(birdX/100)*100;
 birdX += 5;
if (birdX>800)
{
  birdX = 0;
}
 image(person, personX, personY, personSize, personSize);
personX += 1;
personY += 1;
if (personX > 800)
{
  personX = 540;
}
if (personY > 800)
{
  personY = 360;
}
  noFill();
  stroke(255);
  rect(350, 110, square*2, square*2);
  
  //if(points > 0)
 // {
  //x = x;
 // y = y;
  //}
 
  if(dist(x, y, 350, 110) < square + bbSize){
    fill(0, 255, 0); 
    points = points + 10;
    
  }
  else{
   fill(0, 0, 0); 
  }
if (birdX > x && birdX < x+ birdSize){
  if (birdY > y && birdY < y + birdSize){
  }
  points = points - 10;
}



//birdY <x, y < birdX + birdSize, birdY) 
 
 // points = points - 10;
//}

//if (dist("basketball.png", "bird.png" < 45))
//{
//  points = points - 10;
//}


}
void keyPressed()
{
 if (keyCode == UP)
 {
  y = y-15;
  bbSize -= 2;

 }
 if (keyCode == DOWN)
 {
   y = y+15;
     bbSize += 2;
 }
 if (keyCode == LEFT)
 {
   x = x-15;
 }
 if (keyCode == RIGHT)
 {
   x = x+15;
 }
}
