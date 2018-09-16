class Robot{
  float chassisWidth;
  float chassisLength;
  float centerx, centery;
  float rearAxleOffsetFromCenter;
  float frontAxleOffsetFromCenter;
  float wheelWidth;
  float wheelLength;
  float heading;      // in relation to x axis, degrees
  
  // constructor function
  Robot(float xx, float yy, float cwidth, float clength, float raxleoffset, float faxleoffset,
        float whWidth, float whLength, float head){
    chassisWidth = cwidth;
    chassisLength = clength;
    centerx = xx;
    centery = yy;
    rearAxleOffsetFromCenter = raxleoffset;
    frontAxleOffsetFromCenter = faxleoffset;
    wheelWidth = whWidth;
    wheelLength = whLength;
    heading = head;
  }
  
  
  // shows a 2d top view of the robot in the xy plane
  void show(){
    // before calling translate or rotate functions
    // save all settings on the stack
    pushMatrix();
    // move world origin to robot's center
    translate(centerx, centery);
    // rotate axes to align with robot's orientation
    rotate(radians(heading));
    
    rectMode(CENTER); 
    
    // change stroke weight to increase point size drawn
    strokeWeight(3);
    // show robot center point
    // we have to hardcode 0, 0 for centerx, centery
    // because we have translated the origin 
    // using centerx, centery would draw the robot
    // in the wrong location
    point(0, 0); 
    
    // set stroke weight back to 1 so rectangles do not 
    // have a thick border
    strokeWeight(1);
    
    // robot body
    rect(0, 0, chassisWidth, chassisLength);
   
    // draw left rear wheel
    float wx = -chassisWidth/2-wheelWidth/2;
    float wy = +rearAxleOffsetFromCenter;
    rect(wx,wy,wheelWidth, wheelLength);
    
    // draw right rear wheel
    wx = +chassisWidth/2+wheelWidth/2;
    rect(wx,wy,wheelWidth, wheelLength);
    
    // draw left front wheel
    wx = -chassisWidth/2-wheelWidth/2;
    wy = -frontAxleOffsetFromCenter;
    rect(wx,wy,wheelWidth, wheelLength);
    
    // draw right front wheel
    wx = +chassisWidth/2+wheelWidth/2;
    rect(wx,wy,wheelWidth, wheelLength);
    
    // must call popMatrix to restore settings
    popMatrix();
  }
  
  
  
}
