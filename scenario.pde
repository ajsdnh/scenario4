float [] polygon;
float [] guards;
float scale=12;  //How big the graphs compare to application
float translation=450;  //Adjust the position of the graph
int counter = 0;


void setup()
{
  size(1200,1200,P3D);
   String[] stuff_1 = loadStrings("data.txt");
   String[] stuff_2 = loadStrings("guards.txt");
for (int i = 0 ; i < stuff_1.length; i++)
{
  polygon = float(splitTokens(stuff_1[i],"( , )"));
  
}
  for (int j = 0 ; j < stuff_2.length; j++)
{
  guards = float(splitTokens(stuff_2[j],"( , )"));
 
}
noLoop();

}


void plot()
{
int i=int(0.5*polygon.length);
int p=int(0.5*guards.length);
int a=0;
int b=0;

  
//Plotting Polygon
beginShape(); 
for(int g=0;g<i;g++)
{

vertex(polygon[a]*scale, polygon[a+1]*scale,0);
if (a==polygon.length)
break;
else a=a+2;

}
endShape(CLOSE);


for(int k=0;k<p;k++)   //Plotting Points
{
  stroke(#F50F0F);
strokeWeight(5);
  
point(guards[b]*scale, guards[b+1]*scale,0);
if (b==guards.length)
break;
else b=b+2;
}

}
 







void printCoorindates()
{

  if (mousePressed)
  {
  float Xposition= (mouseX-translation)/scale;
  float Yposition= (mouseY-translation)/scale;

  if (Xposition>0&&Yposition<0)  // First Quadrant
println (Xposition +"," + -Yposition);

else if (Xposition<0&&Yposition<0)  // Second Quadrant
println (Xposition +"," + -Yposition);

else if (Xposition<0&&Yposition>0)  // Third Quadrant
println (Xposition +"," + -Yposition);

else if   (Xposition>0&&Yposition>0)             // Fourth Quadrant
println (Xposition +"," + -Yposition);

}
}


void draw ()
{

translate(translation,translation,0);
rotateX(PI);
plot();
printCoorindates();

}
void mousePressed()
{
  float Xposition= (mouseX-translation)/scale;
  float Yposition= (mouseY-translation)/scale;

  if (Xposition>0&&Yposition<0)  // First Quadrant
println (Xposition +"," + -Yposition);

else if (Xposition<0&&Yposition<0)  // Second Quadrant
println (Xposition +"," + -Yposition);

else if (Xposition<0&&Yposition>0)  // Third Quadrant
println (Xposition +"," + -Yposition);

else if   (Xposition>0&&Yposition>0)             // Fourth Quadrant
println (Xposition +"," + -Yposition);
}