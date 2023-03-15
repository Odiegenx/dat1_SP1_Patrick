class EllipseEntity {
  
  float x;
  float y;
  float w;
  float h;
  boolean on;
  float speedX;
  float speedY;
  //// the constructor
  EllipseEntity(float tmpX, float tmpY, float tmpW, float tmpH, float tmpSpeedX, float tmpSpeedY){
  
    x = tmpX;
    y = tmpY;
    w = tmpW;
    h = tmpH;
    speedX = tmpSpeedX;
    speedY = tmpSpeedY;
    on = false;
  }

 //// checks if the mouse hits an EllipseEntity. 
void mouseOverCheck(int mX , int mY){
   
  if (dist(mX, mY, x, y) < (w/2)){ 
      on = true;
    } else {
      on = false;
    }
  } 

  ////displays EllipseEntity object's
  void displayEllipse() {
  
        if(on){
           fill(random(255),0,0);
           gameStage = 0;
           on = false;
           System.out.println("You hit an Ellipse!");
        }else{
           fill(150);
        }
        noStroke();
        ellipse(x,y,w,h); 
        on = false;
     }
  
   //// moves EllipseEntity ojects level 1 and checks for collision with walls, and inverts speedX if detected . 
   
   void moveEllipseLevel1(){
           if(gameStage == 1){
              x = x+speedX;
           if(x  > width-(vertiRectWidth*1.5)){
              speedX = speedX*-1;   
              }
           if( x < (vertiRectWidth*1.5))
              speedX = speedX*-1;
             }
       }             
 //// moves my ellipse Entities on level 2 and checks for collision with walls, and inverts speedX and speedY if detected        
    void moveEllipseLevel2(){
              
               if(gameStage == 2){
                 x = x+speedX;
                 y = y+speedY;
               }
               if(x  > width-vertiRectWidth+(w/2) || x < vertiRectWidth-(w/2) ){
                  speedX = speedX*-1;
               }
               if(y > height-vertiRectWidth+(w/2) || y < vertiRectWidth-(w/2)){
                  speedY = speedY*-1;
               }
       }

  //// moves my ellipse Entities on level 3 and checks for collision with other Ellipse Entities/walls, and inverts speedX if detected     
    void moveEllipseLevel3(EllipseEntity input_){
           if(gameStage == 3){
              x = x+speedX;
              input_.x = input_.x + input_.speedX;
           if( dist(x,y,input_.x,input_.y) < horiRectHeight*2){    
              speedX = speedX*-1;
              input_.speedX = input_.speedX*-1;
           }
           if(x  > width-(vertiRectWidth*1.5)){
              speedX = speedX*-1;
           }
           if(input_.x  > width-(vertiRectWidth*1.5)){
           input_.speedX = input_.speedX*-1;
           }
           if( x < (vertiRectWidth*1.5))
              speedX = speedX*-1;
           }
           if(input_.x < (vertiRectWidth*1.5)){
           input_.speedX = input_.speedX*-1;
           }  
         
       }
       
}
