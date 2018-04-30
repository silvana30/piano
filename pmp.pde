import arb.soundcipher.*;
import processing.serial.*;

SoundCipher sc;
boolean[] keysNotePlay;
int[] keysNoteMap;
boolean t1, t2, t3, t4, t5, t6, t7, t8,tB1,tB2,tB3,tB4,tB5,tB6=false;
color tastaColor, baseColor,tastaColorB1;
color currentColor;
int rectX1=10;
int rectX2=60;
int rectX3=110;
int rectX4=160;
int rectX5=210;
int rectX6=260;
int rectX7=310;
int rectX8=360;
int rectY=10;
int rectW=50;
int rectH=200;
int rectX[]={rectX1, rectX2, rectX3, rectX4, rectX5, rectX6, rectX7, rectX8};
boolean t[]={t1, t2, t3, t4, t5, t6, t7, t8,tB1,tB2,tB3};

int c = 0;  
Serial myPort; 

void setup() {

  sc = new SoundCipher(this);
  keysNotePlay = new boolean[127];
  keysNoteMap = new int[127];
  keysNoteMap['a'] = 59;
  keysNoteMap['s'] = 60;
  keysNoteMap['d'] = 62;
  keysNoteMap['f'] = 64;
  keysNoteMap['g'] = 65;
  keysNoteMap['h'] = 67;
  keysNoteMap['j'] = 69;
  keysNoteMap['w'] = 61;
  //keysNoteMap['e'] = 63;
  //keysNoteMap['t'] = 66;
  //keysNoteMap['y'] = 68;
  //keysNoteMap['u'] = 70;
  size (600, 400);
  tastaColor = color(255);
  baseColor=color(102);
  currentColor=baseColor;
  
  printArray(Serial.list());
 // String portname=Serial.list()[6];
 myPort = new Serial(this, "COM8", 9600); 
}

void keyReleased() {
  keysNotePlay[key] = false;
}

// keep processing 'alive'
void draw() {
  update(mouseX, mouseY);
  background(0);
////////////////////////butoane1
if (tB1) {
    fill(45,93,23);
  } else {
     fill(72,176,26);
   
  }
  if (  keyPressed && keysNotePlay['s'] == true) {
    fill(0);
  }
  rect (60,300,50,50);
 
text("CLICK TO PLAY",45,260);
             //   fill(0);
             //   textSize(30);
  
  /////////////////////////////////////////////buton2
  if (tB2) {
    fill(196,22,13);
  } else {
    fill(255,35,25);
  }
  if (  keyPressed && keysNotePlay['s'] == true) {
    fill(0);
  }
  rect (200,300,50,50);
  text("CLICK TO STOP",180,260);
 ///////////////////////////////buton3 
  if (tB3) {
    fill(9,73,149);
  } else {
     fill(17,122,255);
   
  }
  if (  keyPressed && keysNotePlay['s'] == true) {
    fill(0);
  }
  rect (340,300,50,50);
  text("CLICK TO RECORD",315,260);
  
  ////////////////////////////////buton4
 if (tB4) {
    fill(204, 204, 0);
  } else {
     fill(255, 255, 102);
   
  }
  if (  keyPressed && keysNotePlay['s'] == true) {
    fill(0);
  }
  rect (480,40,40,40);
  text("DOIME",480,30);
  ///////////////////////////buton5
  if (tB5) {
    fill(204, 204, 0);
  } else {
     fill(1255, 255, 102);
   
  }
  if (  keyPressed && keysNotePlay['s'] == true) {
    fill(0);
  }
  rect (480,110,40,40);
  text("PATRIME",475,100);
  /////////////////////////buton 6
  if (tB6) {
    fill(204, 204, 0);
  } else {
     fill(255, 255, 102);
   
  }
  if (  keyPressed && keysNotePlay['s'] == true) {
    fill(0);
  }
  rect (480,180,40,40);
  text("OPTIME",475,170);
//tasta1
  if (t1) {
    fill(baseColor);
  } else {
    fill(tastaColor);
  }
  if (  keyPressed && keysNotePlay['s'] == true) {
    fill(0);
  }
  rect (rectX1, rectY, rectW, rectH);
  
  //tasta2
  
  if (t2) {
    fill(baseColor);
  } else {
    fill(tastaColor);
  }
  rect (rectX2, rectY, rectW, rectH);
//tasta3
  if (t3) {
    fill(baseColor);
  } else {
    fill(tastaColor);
  }

  rect (rectX3, rectY, rectW, rectH);

//t4
  if (t4) {
    fill(baseColor);
  } else {
    fill(tastaColor);
  }
  rect (rectX4, rectY, rectW, rectH);
  
  //t5
  if (t5) {
    fill(baseColor);
  } else {
    fill(tastaColor);
  }
  rect (rectX5, rectY, rectW, rectH);
  
  //t6
  if (t6) {
    fill(baseColor);
  } else {
    fill(tastaColor);
  }
  rect (rectX6, rectY, rectW, rectH);
  //t7
  if (t7) {
    fill(baseColor);
  } else {
    fill(tastaColor);
  }
  rect (rectX7, rectY, rectW, rectH);
  //t8
  
  if (t8) {
    fill(baseColor);
  } else {
    fill(tastaColor);
  }
  rect (rectX8, rectY, rectW, rectH);
 

  //white tut 
  fill(255);
  if ( keyPressed && keysNotePlay['a'] == true) {
    fill(100);
  }
  //rect (rectX1,rectY, rectW, rectH);

  fill(255);
  if ( keyPressed && keysNotePlay['s'] == true) {
    fill(204);
  }
  //  rect (rectX2, rectY, rectW, rectH);
  fill(255);
  if ( keyPressed && keysNotePlay['d'] == true) {
    fill(204);
  }
  //  rect (rectX3, rectY, rectW, rectH);
  fill(255);
  if ( keyPressed && keysNotePlay['f'] == true) {
    fill(204);
  }
  //rect (rectX4, rectY, rectW, rectH);
  fill(255);
  if ( keyPressed && keysNotePlay['g'] == true) {
    fill(204);
  }

  // rect (rectX5, rectY, rectW, rectH);
  fill(255);
  if ( keyPressed && keysNotePlay['h'] == true) {
    fill(204);
  }

  // rect (rectX6, rectY, rectW, rectH);
  fill(255);
  if ( keyPressed && keysNotePlay['j'] == true) {
    fill(204);
  }

 
  fill(255);
  if ( keyPressed && keysNotePlay['w'] == true) {
    fill(204);
  }

  if ( keyPressed && keysNotePlay[key] == false) {
    sc.playNote(keysNoteMap[key], 100, 1);
    keysNotePlay[key] = true;
  }
}

void update(int x, int y) {
  
  if ( overRect(60,300,50,50) ) 
    tB1 = true;
  else
    tB1=false;
    
    if ( overRect(200,300,50,50) ) 
    tB2 = true;
  else
    tB2=false;
    
    if ( overRect(340,300,50,50) ) 
    tB3 = true;
  else
    tB3=false;

  if ( overRect(rectX1, rectY, rectW, rectH) ) 
    t1 = true;
  else
    t1=false;
  if ( overRect(rectX2, rectY, rectW, rectH) ) 
    t2 = true;
  else
    t2=false;

  if ( overRect(rectX3, rectY, rectW, rectH) ) 
    t3 = true;
  else
    t3=false;

  if ( overRect(rectX4, rectY, rectW, rectH) ) 
    t4 = true;
  else
    t4=false;

  if ( overRect(rectX5, rectY, rectW, rectH) ) 
    t5 = true;
  else
    t5=false;

  if ( overRect(rectX6, rectY, rectW, rectH) ) 
    t6 = true;
  else
    t6=false;

  if ( overRect(rectX7, rectY, rectW, rectH) ) 
    t7 = true;
  else
    t7=false;

  if ( overRect(rectX8, rectY, rectW, rectH) ) 
    t8 = true;
  else
    t8=false;
    
 if ( overRect(480,40,40,40) ) 
    tB4 = true;
  else
    tB4=false;
    if ( overRect(480,110,40,40) ) 
    tB5 = true;
  else
    tB5=false;
    if ( overRect(480,180,40,40) ) 
    tB6 = true;
  else
    tB6=false;
}

boolean overRect(int x, int y, int width, int height) {
  if (mouseX >= x && mouseX <= x+width && 
    mouseY >= y && mouseY <= y+height) {
    return true;
  } else {
    return false;
  }
}


void mousePressed() {

  
   if ( t1==true) {
   myPort.write("NOTE_C4");
   print("nota1");
 
 } else if (t2==true){
   myPort.write("NOTE_D4");
    print("nota2");
 }
 else if(t3==true){
    myPort.write("NOTE_E4");
    print("nota3");
}
else if(t4==true){
    myPort.write("NOTE_F4");
}
else if(t5==true){
    myPort.write("NOTE_G4");
}
else if(t6==true){
    myPort.write("NOTE_A4");
}
else if(t7==true){
    myPort.write("NOTE_B4");
}
else if(t8==true){
    myPort.write("NOTE_C5");
}
else if(tB1==true){
    myPort.write("PLAY");
}
else if(tB2==true){
    myPort.write("STOP");
}
else if(tB3==true){
    myPort.write("RECORD");
}
else if(tB4==true){
    myPort.write("DOIME");
}
else if(tB5==true){
    myPort.write("PATRIME");
}
else if(tB6==true){
    myPort.write("OPTIME");
}


}