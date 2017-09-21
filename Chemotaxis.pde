 //declare bacteria variables here   
 Bacteria  [] bitz;
 void setup(){     
   //initialize bacteria variables here  
   size(500,500);
  bitz = new Bacteria [300];
  for(int i=0; i<bitz.length;i++){
  bitz[i]=new Bacteria (); 
  }
 }   
 void draw(){    
   //move and show the bacteria   
   background(0);
  for(int i=0; i<bitz.length;i++){  
    bitz[i].walk();
    bitz[i].show();
  }
 }  
 class Bacteria{     
   //lots of java!  
  int myX,myY;
  Bacteria (){
   myX = myY = 250;
  }
  void walk(){
    // X
    if (mouseX < myX){
   myX = myX+(int)(Math.random()*3)-2;
    }else if(mouseX > myX){
     myX = myX+(int)(Math.random()*3)-0;
    }else{
    myX = myX+(int)(Math.random()*3)-1;
    }
    // Y
        if (mouseY < myY){
   myY = myY+(int)(Math.random()*3)-2;
    }else if(mouseY > myY){
     myY = myY+(int)(Math.random()*3)-0;
    }else{
    myY = myY+(int)(Math.random()*3)-1;
    }
   myY = myY+(int)(Math.random()*3)-1;
  }
  void show(){
    fill(255,0,0);
    ellipse(myX, myY,10,10);
  } 
 }    

