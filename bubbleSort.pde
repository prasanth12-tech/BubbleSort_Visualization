
/*
    Thanks for seeing this project
    By ptech12
    I hope you like it.
    And you can help me to do more by sharing your ideas.
*/
import processing.sound.*;  // Sound library
float[] values;  // Array for holding the line
int i=0, j=0;  // Global Variables for animation
SinOsc sine;  // Sine pulse object
void setup(){
  size(800, 480);  // Size of canvas
  values = new float[width];  // Filling the values unitl width width
  for(int i=0;i<values.length;i++){
    values[i] = random(height);  // Assigning random Values
  }
  sine = new SinOsc(this);  // Sine object
}

void draw()
{
  background(0);
  // do this once
  bubblesort();
  simulate();
  
  
}
void bubblesort()
{
  for(int x=0;x<values.length;x++){
    if(values[j] > values[j+1]){
        swap(values, j, j+1);
        sine.play();
  }
    if(i < values.length){    
  j += 1;
  if(j>= values.length-i-1){
    j =  0;
    i += 1;
    sine.freq(100-x);
  }
  }else{
    sine.stop();
    noLoop();
    
  }
  
  }
}
void simulate()
{
  for(int n=0;n<values.length;n++){
    if(n < j){
    stroke(255, 0, 0);
    fill(51);
  }
    else{
    fill(0,0,255);
      stroke(0, 255, 0);
    }
    line(n, height, n, height-values[n]);
  }
}
void swap(float[] val, int a, int b)
{
  float temp = val[a];
  val[a] = val[b];
  val[b] = temp;
}
