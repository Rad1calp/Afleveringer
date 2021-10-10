//Gruppe: Lucas Patrick Hayes | Kristoffer Wienmann Biehl Christiansen

void setup(){
  size(600,300);
}
void draw(){
   background(0);
   fill(0);
   
   fill(255);
   square(25,25,100);
   //Denne function tegner en firkant. Syntaxen ser sådan her ud
   //(x-koordinat, y-koordinat, extent/sidelængde)
   
   
   rect(150,25,100,100);
   //Denne function tegner et rektangel. Syntaxen ser sådan her ud
   //(x-koordinat, y-koordinat, width/bredde, height/højde)

   rect(275,25,100,100,0);
   //Dette er den samme function men med en anden syntax.
   //(x-koordinat, y-koordinat, width/bredde, height/højde, radius for højrnerne)
   //Da de andre firkanter har skarpe kanter, så skal værdien af den sidste parameter være 0
   
   rect(400,25,100,100,0,0,0,0);
   //Samme function, med en anden syntax.
   //(x-koordinat, y-koordinat, width/bredde, height/højde, radius for hjørne 1, radius for hjørne 2, radius for hjørne 3, radius for hjørne 4)
   //Igen, da de andre firkanter har skarpe kanter skal alle disse nye parameterne være 0

   quad(25,150,125,150,125,250,25,250);
   //Denne function tegner en figur udefra 4 punkter. Dette er syntaxen:
   //(Punkt 1 x-Koordinat, Punkt 1 y-Koordinat, Punkt 2 x-Koordinat, Punkt 2 y-Koordinat, Punkt 3 x-Koordinat, Punkt 3 y-Koordinat, Punkt 4 x-Koordinat, Punkt 4 y-Koordinat,)
   

   beginShape();
   vertex(150,150);
   vertex(250,150);
   vertex(250,250);   
   vertex(150,250);
   endShape();
   //Dette er en function der tegner en figur udefra selv-definerede verticies.
   //Syntaxer:
   //beginShape()
   //vertex(x-koordinat, y-koordinat)
   //endShape()

}
