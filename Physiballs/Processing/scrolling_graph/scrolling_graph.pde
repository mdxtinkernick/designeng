//this graphes the values being generated by the mouse position
//(see the last line)
//replace mouseY with your incoming value

int[] numbers = new int[400];

void setup(){
  size(400,400);
}

void draw(){
  background(255);
  
  
//GraphPaper
for(int i = 0 ;i<=width/10;i++){
 stroke(200);
 line((-frameCount%10)+i*10,0,(-frameCount%10)+i*10,height);
 
 line(0,i*10,width,i*10);
}
  
  noFill();
  stroke(0);
  beginShape();
  for(int i = 0; i<numbers.length;i++){
    vertex(i,350-numbers[i]);
  }
  endShape();
  for(int i = 1; i<numbers.length;i++){
   numbers[i-1] = numbers[i];
   }
numbers[numbers.length-1]=mouseY;

}

