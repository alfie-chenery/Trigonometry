class Plot{
  
  PVector origin;
  PVector size;
  float xscale;
  float yscale;
  FloatList sindata;
  FloatList cosdata;
  FloatList tandata;
  FloatList secdata;
  FloatList cscdata;
  FloatList cotdata;
  
  Plot(float x, float y, float sx, float sy, float xs, float ys){
    origin = new PVector(x,y);
    size = new PVector(sx,sy);
    xscale = xs;
    yscale = ys;
    sindata = new FloatList();
    cosdata = new FloatList();
    tandata = new FloatList();
    secdata = new FloatList();
    cscdata = new FloatList();
    cotdata = new FloatList();
  }
  
  void update(float a, float b, float c, float d, float e, float f){
    sindata.append(a);
    cosdata.append(b);
    tandata.append(c);
    secdata.append(d);
    cscdata.append(e);
    cotdata.append(f);
  }
  
  void show(){
    stroke(255);
    line(origin.x,origin.y-size.y,origin.x,origin.y+size.y);
    line(origin.x,origin.y,origin.x+size.x,origin.y);
    
    if(draw[0]){
      stroke(255,0,0);
      noFill();
      beginShape();
      for(int i=0; i<sindata.size(); i++){
        vertex(origin.x+i*(size.x/xscale*dt),origin.y+sindata.get(i)*yscale);
      }
      endShape();
    }
    
    if(draw[1]){
      stroke(0,0,255);
      noFill();
      beginShape();
      for(int i=0; i<cosdata.size(); i++){
        vertex(origin.x+i*(size.x/xscale*dt),origin.y+cosdata.get(i)*yscale);
      }
      endShape();
    }
    
    if(draw[2]){
      stroke(0,255,0);
      noFill();
      beginShape();
      for(int i=0; i<tandata.size(); i++){
        vertex(origin.x+i*(size.x/xscale*dt),origin.y+tandata.get(i));
      }
      endShape();
    }
    
    if(draw[3]){
      stroke(255,150,0);
      noFill();
      beginShape();
      for(int i=0; i<secdata.size(); i++){
        vertex(origin.x+i*(size.x/xscale*dt),origin.y+secdata.get(i));
      }
      endShape();
    }
    
    if(draw[4]){
      stroke(0,255,255);
      noFill();
      beginShape();
      for(int i=0; i<cscdata.size(); i++){
        vertex(origin.x+i*(size.x/xscale*dt),origin.y+cscdata.get(i));
      }
      endShape();
    }
    
    if(draw[5]){
      stroke(180,255,180);
      noFill();
      beginShape();
      for(int i=0; i<cotdata.size(); i++){
        vertex(origin.x+i*(size.x/xscale*dt),origin.y+cotdata.get(i));
      }
      endShape();
    }
    
    
  }
  
  void reset(){
    sindata.clear();
    cosdata.clear();
    tandata.clear();
    secdata.clear();
    cscdata.clear();
    cotdata.clear();
  }
  
}
