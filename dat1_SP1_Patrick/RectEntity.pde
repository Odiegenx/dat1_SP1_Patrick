//// name of class, i know its not the best... 
class RectEntity {
  
  float x;
  float y;
  float w;
  float h;
  boolean on;
 //// the  constructor  
  RectEntity(float tmpX, float tmpY, float tmpW, float tmpH){
  
    x = tmpX;
    y = tmpY;
    w = tmpW;
    h = tmpH;
    on = false;
  }

void mouseOverCheck(int mX , int mY){
  //// checks if the mouse hits a RectEntity objectd.  
  if ( mX > this.x && mX < this.x + this.w && mY > this.y && mY < this.y + this.h){ 
      on = true;
    } else {
      on = false;
    }
  }
  //// checks if the mouse hits a RectEntity object and if mouse is pressed. used to move between levels.
  void mouseOverCheckMoveOn(int mX , int mY){
    
  if ( mX > this.x && mX < this.x + this.w && mY > this.y && mY < this.y + this.h && mousePressed){ 
      on = true;
    } else {
      on = false;
    }
  }
 

 //// displays RectEntity objects as rects and changes gamestage if on is true (changed in mouseoverchecks)
void displayWalls() {
  
  if(on){
     fill(random(255),0,0);
     gameStage = 0;
     on = false;
     println("You hit a Wall!!");
     }else{
     fill(150);
     }
    noStroke();
    rect(x,y,w,h);
    on = false;
  }
  
 //// displays end object as rects and changes gamestage if on is true (changed in mouseoverchecks) 
  void displayEndLevel1() {
  
  if(on){
       if(gameStage == 1){
       fill(random(255),0,0);
       gameStage = 2;  
       on = false;
       }
     }else{
     fill(0,255,0);
     }
    noStroke();
    rect(x,y,w,h);
    on = false;
}
  //// displays end object as rects and changes gamestage if on is true (changed in mouseoverchecks) 
  void displayEndLevel2() {
  
  if(on){
       if(gameStage == 2){
       fill(random(255),0,0);
       gameStage = 3;
       on = false;
       }
     }else{
     fill(0,255,0);
     }
    noStroke();
    rect(x,y,w,h);
    on = false;
  }  
  //// displays end object as rects and changes gamestage if on is true (changed in mouseoverchecks) 
  void displayEndLevel3() {
  
  if(on){
      if(gameStage == 3){
       fill(random(255),0,0);
       gameStage = 4;
       on = false;
       }
     }else{
     fill(0,255,0);
     }
    noStroke();
    rect(x,y,w,h);
    on = false;
  }
  
  //// just used to display the background for my text  
  
  void displayStartLevel1() {
  
  if(on){
     fill(0,255,0); 
        gameStage = 1;  
        on = false;    
     }else{
     fill(0,255,0);
     }
    noStroke();
    rect(x,y,w,h);
    on = false;
  } 
    
}
