///// declaring of all of my global varibles

/// The outer walls arrays
RectEntity[] upperWalls = new RectEntity[10];
RectEntity[] leftWalls = new RectEntity[10];
RectEntity[] rightWalls = new RectEntity[10];
RectEntity[] lowerWalls = new RectEntity[10];

//// the obstacle arrats
RectEntity[] upperObstacleWalls = new RectEntity[10];
RectEntity[] upperMiddleObstacleWalls1 = new RectEntity[10];
RectEntity[] lowerMiddleObstacleWalls1 = new RectEntity[10];
RectEntity[] upperMiddleObstacleWalls2 = new RectEntity[10];
RectEntity[] lowerMiddleObstacleWalls2 = new RectEntity[10];
RectEntity[] lowerObstacleWalls = new RectEntity[10];
//// EllipseEntity Array for level 2
EllipseEntity[] EllipseLevel2 = new EllipseEntity[50];
//// start and end objects
RectEntity start;
RectEntity end;
RectEntity startLevel2;
RectEntity endLevel2;
RectEntity startLevel3;
RectEntity endLevel3;
//// ojects used to make the start and end buttoms
RectEntity startButtom;
RectEntity endRect;

//// My ellipse obstacles
EllipseEntity upperEllipse;
EllipseEntity middleEllipse;
EllipseEntity lowerEllipse;
EllipseEntity upperEllipse2;
EllipseEntity middleEllipse2;
EllipseEntity lowerEllipse2;
EllipseEntity upperEllipse3;
EllipseEntity middleEllipse3;
EllipseEntity lowerEllipse3;
//// defines the which gamestage we are in will be change by varius functions throuout the code.
int gameStage = 0;
//// varibles used to draw the rects, and the ellipses
int vertiRectWidth = 100;
int vertiRectHeight = 50;
int vertiRectOffset = vertiRectWidth;
int horiRectWidth = 50;
int horiRectHeight = 100;
int horiRectOffset = horiRectHeight;
int time;

void setup(){
 size (1000,1000);
///////////// initializes the Walls array with RectEntity objects //////
        
       // This fills upperWalls array     
       simpleInitiateVerti(upperWalls,0+(vertiRectOffset),0,vertiRectWidth,vertiRectHeight);       
       /// This fills leftWalls array
       simpleInitiateHori(leftWalls,0,0+(horiRectOffset),horiRectWidth,horiRectHeight);
       /// This fills rightWalls array
       simpleInitiateHori(rightWalls,(width-horiRectWidth),0+(horiRectOffset),horiRectWidth,horiRectHeight);
       /// This fills lowerWalls array
       simpleInitiateVerti(lowerWalls, 0+(vertiRectOffset),(height-vertiRectHeight),vertiRectWidth,vertiRectHeight);

//////////// initializes my Obstacle arrays with RectEntity objects////
       
       simpleInitiateVerti(upperObstacleWalls,0+(vertiRectOffset),vertiRectHeight,vertiRectWidth,vertiRectHeight);
       simpleInitiateVerti(upperMiddleObstacleWalls1,0+(vertiRectOffset),(vertiRectHeight+(vertiRectHeight*5)),vertiRectWidth,vertiRectHeight);
       simpleInitiateVerti(lowerMiddleObstacleWalls1, 0+(vertiRectOffset),(vertiRectHeight+(vertiRectHeight*6)),vertiRectWidth,vertiRectHeight);
       simpleInitiateVerti(upperMiddleObstacleWalls2,0+(vertiRectOffset),(vertiRectHeight+(vertiRectHeight*11)),vertiRectWidth,vertiRectHeight);
       simpleInitiateVerti(lowerMiddleObstacleWalls2,0+(vertiRectOffset),(vertiRectHeight+(vertiRectHeight*12)),vertiRectWidth,vertiRectHeight);
       simpleInitiateVerti(lowerObstacleWalls,0+(vertiRectOffset),(height-(vertiRectHeight*2)),vertiRectWidth,vertiRectHeight);
       
////////// initializes my EllipseEntity objects ///////////

    upperEllipse = new EllipseEntity((vertiRectWidth*2),(horiRectHeight*2),(vertiRectWidth*2),(horiRectHeight*2),5,0);
    middleEllipse = new EllipseEntity((vertiRectWidth*8),(height/2),(vertiRectWidth*2),(horiRectHeight*2),5,0);
    lowerEllipse = new EllipseEntity((vertiRectWidth*2),(height-(horiRectHeight*2)),(vertiRectWidth*2),(horiRectHeight*2),5,0);
    upperEllipse2 = new EllipseEntity((vertiRectWidth*8),(horiRectHeight*2),(vertiRectWidth*2),(horiRectHeight*2),5,0);
    middleEllipse2 = new EllipseEntity((vertiRectWidth*2),(height/2),(vertiRectWidth*2),(horiRectHeight*2),5,0);
    lowerEllipse2 = new EllipseEntity((vertiRectWidth*8),(height-(horiRectHeight*2)),(vertiRectWidth*2),(horiRectHeight*2),5,0);
    upperEllipse3 = new EllipseEntity((vertiRectWidth*2),(horiRectHeight*2),(vertiRectWidth*2),(horiRectHeight*2),5,0);
    middleEllipse3 = new EllipseEntity((vertiRectWidth*8),(height/2),(vertiRectWidth*2),(horiRectHeight*2),5,0);
    lowerEllipse3 = new EllipseEntity((vertiRectWidth*2),(height-(horiRectHeight*2)),(vertiRectWidth*2),(horiRectHeight*2),5,0);
///////// initializes my EllipseEntity array used in level 2////


    InitiateEllipeLevel2(EllipseLevel2,50,50); 


//////////// initializes my start and end objects //////////////

    start = new RectEntity(0,900,100,100);
    end = new RectEntity(900,0,100,100);
    startLevel2 = new RectEntity(900,0,100,100);
    endLevel2 = new RectEntity(0,900,100,100);
    startLevel3 = new RectEntity(900,0,100,100);
    endLevel3 = new RectEntity(900,0,100,100);
 
    startButtom = new RectEntity(270,400,470,270);  //// used for text background
    endRect = new RectEntity(270,400,470,250);      //// used for text background
 
    time = millis();
}
void draw(){
  background(255);
//// displays time used in seconds
  if(gameStage != 4){
  time = millis()/1000;
  }
////////////////// displays used for gameStage == 0 //////////////////////

   //// displays the start bottem and sets the gamestage to 1 when hit and clicked on.
      if(gameStage == 0){ 
          start.displayStartLevel1();
   

   //// checks if you are over start
      start.mouseOverCheckMoveOn(mouseX,mouseY);
      }
      if(gameStage == 0){
      startButtom.displayWalls();
       fill(0);
       textSize(30);
       text("Click on the green squares to start.\n and move between levels.\n Get the mouse to the opposite\n green square without \nhitting anything to win.", 300,450);
      }
 
////////////////// displays used for gameStage == 1///////////////////////
    
    if(gameStage == 1){  
          
         
         //// draws the objects in the upperWalls array and changes its color if hit and leaves out the last one, also sets the gameStage to 2 if hit 
         simpleWalldisplay(upperWalls,9);
         //// draws the objects in the leftWalls array and changes its color if hit and leaves out the last one, also sets the gameStage to 2 if hit
         simpleWalldisplay(leftWalls,9);
        //// draws the objects in the rightWalls array and changes its color if hit and leaves out the first one, also sets the gameStage to 2 if hit
         simpleWalldisplay(rightWalls,0);
        //// draws the objects in the LowerWalls array and changes its color if hit and leaves out the first one, also sets the gameStage to 2 if hit
        simpleWalldisplay(lowerWalls,0);
       //// draws the objects in my obstacle arrays and leaves out at specified spots in the array index. also sets the gameStage to 2 if hit
        simpleRectObstacleDisplay(upperObstacleWalls,2,6,9);        
        simpleRectObstacleDisplay(upperMiddleObstacleWalls1,0,2,6);
        simpleRectObstacleDisplay(lowerMiddleObstacleWalls1,0,4);        
        simpleRectObstacleDisplay(upperMiddleObstacleWalls2,2,6,9);
        simpleRectObstacleDisplay(lowerMiddleObstacleWalls2,4,9);        
        simpleRectObstacleDisplay(lowerObstacleWalls,0,2,6);
        ///// draws my ellipse obstacles
        upperEllipse.displayEllipse();
        middleEllipse.displayEllipse();
        lowerEllipse.displayEllipse();
        //// Moves my ellipse obstacles
        upperEllipse.moveEllipseLevel1();
        middleEllipse.moveEllipseLevel1();
        lowerEllipse.moveEllipseLevel1();
        //// displays the end bottem and sets game stage to 3 if you hit it.
        end.displayEndLevel1();
        
        //// Mouse Over Checks for gameStage == 1
        simpleMouseOverCheck(upperWalls);
        simpleMouseOverCheck(upperObstacleWalls);
        simpleMouseOverCheck(leftWalls);
        ////checks if mouse is over rightWalls
        simpleMouseOverCheck(rightWalls);
        ////checks if mouse is over lowerWalls
        simpleMouseOverCheck(lowerWalls);
        //// checks for if mouse is over my Obstacles
        simpleMouseOverCheck(lowerObstacleWalls);
        simpleMouseOverCheck(upperMiddleObstacleWalls1);
        simpleMouseOverCheck(lowerMiddleObstacleWalls1);
        simpleMouseOverCheck(upperMiddleObstacleWalls2);
        simpleMouseOverCheck(lowerMiddleObstacleWalls2);
        //// Checks for mouse over my ellipse Obstacles
        upperEllipse.mouseOverCheck(mouseX,mouseY);
        middleEllipse.mouseOverCheck(mouseX,mouseY);
        lowerEllipse.mouseOverCheck(mouseX,mouseY);
        //// checks if you are over end
        end.mouseOverCheckMoveOn(mouseX,mouseY);

}
    
    
    
    
    
//////////////////////////////////////////////////////

/////////////// displays used for gameStage == 2 ////
      if(gameStage == 2){
          
        
         //// draws the objects in the upperWalls array and changes its color if hit and leaves out the last one, also sets the gameStage to 2 if hit 
         simpleWalldisplay(upperWalls,9);
         //// draws the objects in the leftWalls array and changes its color if hit and leaves out the last one, also sets the gameStage to 2 if hit
         simpleWalldisplay(leftWalls,9);
        //// draws the objects in the rightWalls array and changes its color if hit and leaves out the first one, also sets the gameStage to 2 if hit
         simpleWalldisplay(rightWalls,0);
        //// draws the objects in the LowerWalls array and changes its color if hit and leaves out the first one, also sets the gameStage to 2 if hit
        simpleWalldisplay(lowerWalls,0);
        //startLevel2.displayStartLevel1();
        endLevel2.displayEndLevel2();
        //// Displays the EllipseEntirys used for level 2
        simpleEllipseDisplayLevel2(EllipseLevel2);
        //// Moves and checks for hit with walls for EllipseEntities in level 2
        moveEllipseArrayLevel2(EllipseLevel2);
        //// mouse over checks for level 2
        simpleMouseOverCheck(upperWalls);
        simpleMouseOverCheck(leftWalls);
        simpleMouseOverCheck(rightWalls);       
        simpleMouseOverCheck(lowerWalls);
        mouseOverCheckEllipseArray(EllipseLevel2);
        endLevel2.mouseOverCheckMoveOn(mouseX,mouseY);

 }

      if(gameStage == 3){
        //// Mouse Over Checks for gameStage == 3
        simpleMouseOverCheck(upperWalls);
        simpleMouseOverCheck(upperObstacleWalls);
        simpleMouseOverCheck(leftWalls);
        ////checks if mouse is over rightWalls
        simpleMouseOverCheck(rightWalls);
        ////checks if mouse is over lowerWalls
        simpleMouseOverCheck(lowerWalls);
        //// checks for if mouse is over my Obstacles
        simpleMouseOverCheck(lowerObstacleWalls);
        simpleMouseOverCheck(upperMiddleObstacleWalls1);
        simpleMouseOverCheck(lowerMiddleObstacleWalls1);
        simpleMouseOverCheck(upperMiddleObstacleWalls2);
        simpleMouseOverCheck(lowerMiddleObstacleWalls2);
        //// Checks for mouse over my ellipse Obstacles
        upperEllipse3.mouseOverCheck(mouseX,mouseY);
        middleEllipse3.mouseOverCheck(mouseX,mouseY);
        lowerEllipse3.mouseOverCheck(mouseX,mouseY);
        upperEllipse2.mouseOverCheck(mouseX,mouseY);
        middleEllipse2.mouseOverCheck(mouseX,mouseY);
        lowerEllipse2.mouseOverCheck(mouseX,mouseY);
        //// checks if you are over end
        endLevel3.mouseOverCheckMoveOn(mouseX,mouseY);
          //// draws the objects in the upperWalls array and changes its color if hit and leaves out the last one, also sets the gameStage to 2 if hit 
         simpleWalldisplay(upperWalls,9);
         //// draws the objects in the leftWalls array and changes its color if hit and leaves out the last one, also sets the gameStage to 2 if hit
         simpleWalldisplay(leftWalls,9);
        //// draws the objects in the rightWalls array and changes its color if hit and leaves out the first one, also sets the gameStage to 2 if hit
         simpleWalldisplay(rightWalls,0);
        //// draws the objects in the LowerWalls array and changes its color if hit and leaves out the first one, also sets the gameStage to 2 if hit
        simpleWalldisplay(lowerWalls,0);
       //// draws the objects in my obstacle arrays and leaves out at specified spots in the array index. also sets the gameStage to 2 if hit
        simpleRectObstacleDisplay(upperObstacleWalls,2,4,6,9);       
        simpleRectObstacleDisplay(upperMiddleObstacleWalls1,0,2,6);   
        simpleRectObstacleDisplay(lowerMiddleObstacleWalls1,0,4);     
        simpleRectObstacleDisplay(upperMiddleObstacleWalls2,2,6,9);   
        simpleRectObstacleDisplay(lowerMiddleObstacleWalls2,4,9);        
        simpleRectObstacleDisplay(lowerObstacleWalls,0,2,6);
        ///// draws my ellipse obstacles
        upperEllipse3.displayEllipse();
        middleEllipse3.displayEllipse();
        lowerEllipse3.displayEllipse();
        upperEllipse2.displayEllipse();
        middleEllipse2.displayEllipse();
        lowerEllipse2.displayEllipse();
        //// Moves my ellipse obstacles
        upperEllipse3.moveEllipseLevel3(upperEllipse2);
        middleEllipse3.moveEllipseLevel3(middleEllipse2);
        lowerEllipse3.moveEllipseLevel3(lowerEllipse2);
        //// displays the end bottem and sets game stage to 3 if you hit it.
        endLevel3.displayEndLevel3();
    
    
    
 }
 
     if(gameStage == 4){

         int endTimeMinutes = time/60;
         float endTimeSeconds = time - (endTimeMinutes*60);
         
         if(time > 60){         
           fill(0);
           textSize(30);
           text("congratulations\n you completet all the levels.\n in "+endTimeMinutes+" minutes and "+endTimeSeconds+" seconds!", 300,450);
       }else{
           text("congratulations\n you completet all the levels.\n in "+endTimeSeconds+" seconds!", 300,450);
       
     }
     
  }    
println(gameStage);

  fill(0);
  text(time,30,45);

}

/////// functions used in the code/////////////////////

void simpleInitiateVerti(RectEntity[] input_, int tmpX, int tmpY,int tmpW,int tmpH){
       for (int i  = 0; i < input_.length; i++){
           input_[i] = new RectEntity(tmpX*i,tmpY,tmpW,tmpH);
       } 
  
}
void simpleInitiateHori(RectEntity[] input_, int tmpX, int tmpY,int tmpW,int tmpH){
       for (int i  = 0; i < input_.length; i++){
           input_[i] = new RectEntity(tmpX,tmpY*i,tmpW,tmpH);
       } 
  
}
void InitiateEllipeLevel2(EllipseEntity[] input_, int tmpW,int tmpH){
       for (int i  = 0; i < input_.length; i++){
           input_[i] = new EllipseEntity(random(100,900),random(100,900),tmpW,tmpH, (int)random(-5,5),(int)random(-5,5));
       } 
  
}

void simpleWalldisplay(RectEntity[] input_){
           
         for(int i = 0; i < input_.length;i++){
               input_[i].displayWalls();            
       }         
}

void simpleEllipseDisplayLevel2(EllipseEntity[] input_){
           
         for(int i = 0; i < input_.length;i++){
               input_[i].displayEllipse();            
       }         
}

void moveEllipseArrayLevel2(EllipseEntity[] input_){
           
         for(int i = 0; i < input_.length;i++){
               input_[i].moveEllipseLevel2();            
       }         
}
void simpleWalldisplay(RectEntity[] input_,int noRectSpot1){
           
         for(int i = 0; i < input_.length;i++){
             if(i == noRectSpot1){  
                 //input_[i].displayWalls(); 
               }else{
               input_[i].displayWalls();            
               }      
         }         
}
void simpleWalldisplay(RectEntity[] input_,int noRectSpot1, int noRectSpot2){
           
         for(int i = 0; i < input_.length;i++){
             if(i == noRectSpot1 || i == noRectSpot2){  
                 //input_[i].displayWalls(); 
               }else{
               input_[i].displayWalls();            
               }      
         }         
}

void simpleRectObstacleDisplay(RectEntity[] input_, int noRectSpot1){
           
         for(int i = 0; i < input_.length;i++){
             if(i == noRectSpot1){
                //input_[i].displayWalls();
             }else{
               input_[i].displayWalls();
             }
       }        
}
void simpleRectObstacleDisplay(RectEntity[] input_, int noRectSpot1,int noRectSpot2){
           
         for(int i = 0; i < input_.length;i++){
             if(i == noRectSpot1 || i == noRectSpot2){
                //input_[i].displayWalls();
             }else{
               input_[i].displayWalls();
             }
       }         
}
void simpleRectObstacleDisplay(RectEntity[] input_, int noRectSpot1, int noRectSpot2, int noRectSpot3){
           
         for(int i = 0; i < input_.length;i++){
             if(i == noRectSpot1 || i == noRectSpot2 || i == noRectSpot3 ){
                //input_[i].displayWalls();
             }else{
               input_[i].displayWalls();
             }
       }         
}
void simpleRectObstacleDisplay(RectEntity[] input_, int noRectSpot1, int noRectSpot2, int noRectSpot3, int noRectSpot4){
           
         for(int i = 0; i < input_.length;i++){
             if(i == noRectSpot1 || i == noRectSpot2 || i == noRectSpot3 || i == noRectSpot4){
                //input_[i].displayWalls();
             }else{
               input_[i].displayWalls();
             }
       }         
}

void simpleMouseOverCheck(RectEntity[] input_){
  
        for(int i = 0; i < input_.length;i++){
           input_[i].mouseOverCheck(mouseX, mouseY);
        }  
}

void mouseOverCheckEllipseArray(EllipseEntity[] input_){
  
        for(int i = 0; i < input_.length;i++){
           input_[i].mouseOverCheck(mouseX, mouseY);
        }  
        
        
        
        
}
