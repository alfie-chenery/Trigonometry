float dt = 0.01;
float theta = 0;
int r = 150;
float X_max = TWO_PI; //max value on the x axis
boolean loop = true;

//draw graphs?     sin, cos, tan, sec, csc, cot
boolean[] draw = {true,true,true,true,true,true};

int cx;
int cy;
Plot graph;

void setup(){
  fullScreen();
  graph = new Plot(width/2,height/2,800,height/2,X_max,1);

  cx = 450;
  cy = height/2;
}

void draw(){
  background(0);
  
  noFill();
  stroke(255);
  circle(cx,cy,2*r);
  line(0,cy,width,cy);
  line(cx,0,cx,height);
  fill(255);
  circle(cx+r*cos(theta),cy+r*sin(theta),10);
  line(cx,cy,cx+r*cos(theta),cy+r*sin(theta));
  
  stroke(255,0,0);
  line(cx+r*cos(theta),cy+r*sin(theta),cx+r*cos(theta),cy);
  
  stroke(0,0,255);
  line(cx,cy+r*sin(theta),cx+r*cos(theta),cy+r*sin(theta));
  
  stroke(0,255,0);
  line(cx+r*cos(theta),cy+r*sin(theta),cx+(r/cos(theta)),cy);//sec(theta)
  
  stroke(255,150,0);
  line(cx,cy,cx+(r/cos(theta)),cy);
  
  stroke(0,255,255);
  line(cx,cy,cx,cy+(r/sin(theta)));
  
  stroke(180,255,180);
  line(cx+r*cos(theta),cy+r*sin(theta),cx,cy+(r/sin(theta)));
  
  stroke(0);
  fill(0);
  rect(cx+r+250,0,width,height);

  graph.update(r*sin(theta),-r*cos(theta),r*tan(theta),r/sin(theta),-r/cos(theta),r/tan(theta));

  graph.show();

  stroke(0);
  fill(0);
  rect(0,0,50,height);
  rect(0,0,width,10);
  rect(0,height-10,width,height);
  
  textSize(20);
  fill(255,0,0);
  text("sin",885,495);
  fill(0,0,255);
  text("cos",885,515);
  fill(0,255,0);
  text("tan",885,535);
  fill(255,150,0);
  text("sec",885,555);
  fill(0,255,255);
  text("csc",885,575);
  fill(180,255,180);
  text("cot",885,595);
  
  
  theta -=dt;
  if (theta <= -X_max){
    if(loop){
      theta = 0;
      graph.reset();
    }else{
      noLoop(); 
    }
  }
}
