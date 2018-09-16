/*  Draw a simple 2D model of speed demons robot
*   in the xy plane
*/
Robot robby;

final float PIXELS_PER_INCH = 10;
final float ROBOT_WIDTH_INCH = 6;
final float ROBOT_LENGTH_INCH = 12;
final float ROBOT_WHEEL_WIDTH = 1;
final float ROBOT_WHEEL_LENGTH = 3;
final float AXLE_OFFSET_INCH = 3;


void setup(){
  // size(width,height);
  size(600,700);
  robby = new Robot(width/2, height/2, PIXELS_PER_INCH*ROBOT_WIDTH_INCH, 
        PIXELS_PER_INCH*ROBOT_LENGTH_INCH, PIXELS_PER_INCH*AXLE_OFFSET_INCH, 
        PIXELS_PER_INCH*AXLE_OFFSET_INCH,
        PIXELS_PER_INCH*ROBOT_WHEEL_WIDTH, PIXELS_PER_INCH*ROBOT_WHEEL_LENGTH,
        15);
}

void draw(){
  robby.show();
}
