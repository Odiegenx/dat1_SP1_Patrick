class RectEntity {
  
  float x;
  float y;
  float w;
  float h;
  boolean on;
  
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
  void mouseOverCheckMoveOn(int mX , int mY){
  //// checks if the mouse hits a RectEntity object.  
  if ( mX > this.x && mX < this.x + this.w && mY > this.y && mY < this.y + this.h && mousePressed){ 
        on = true;
    } else {
      on = false;
    }
  }

  //// displays RectEntity objects as rects
void displayWalls() {
  
  if(on){
     fill(random(255),0,0);
     gameStage = 0;
     on = false;
     println("Walls");
     }else{
     fill(150);
     }
    noStroke();
    rect(x,y,w,h);
    on = false;
  }
  
  void displayEndLevel1() {
  
  if(on){
     fill(random(255),0,0);
     gameStage = 2;  
     on = false;
     }else{
     fill(0,255,0);
     }
    noStroke();
    rect(x,y,w,h);
    on = false;
}
  
  void displayEndLevel2() {
  
  if(on){
     fill(random(255),0,0);
     gameStage = 3;
     println("end - level 2");
     on = false;
     }else{
     fill(0,255,0);
     }
    noStroke();
    rect(x,y,w,h);
    on = false;
  }  
  void displayEndLevel3() {
  
  if(on){
     fill(random(255),0,0);
     gameStage = 4;
     println("end - level 3");
     on = false;
     }else{
     fill(0,255,0);
     }
    noStroke();
    rect(x,y,w,h);
    on = false;
  }
  
  
  void displayStartLevel1() {
  
  if(on){
     fill(0,255,0); 
        gameStage = 1;  
        println("ged");
        on = false;    
     }else{
     fill(0,255,0);
     }
    noStroke();
    rect(x,y,w,h);
    on = false;
  }
  ///////////////////// KUN FOR TESTS
    void displayStartLevel2() {
  
  if(on){
     fill(0,255,0);
     if(gameStage == 0){
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
/////////////////////////////////////////////  
    void displayEndMessage() {
  
  if(on){
     fill(random(255),0,0);
     gameStage = 2;
     on = false;
     }else{
     fill(155);
     }
    noStroke();
    rect(x,y,w,h);
    on = false;
  }
    
}
