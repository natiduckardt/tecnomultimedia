String estado;
String[] r = new String[2];
char[] k = new char [5];
PFont miFuente;
PFont Fuente;
int mov;
PImage[] f= new PImage[11];

float x= 200;
float y= 300;
float t= 60;
 
void setup(){
 size (600, 400);
 textSize(20);
 textAlign (CENTER, CENTER) ;
 fill(0);
 noStroke();
 estado= "inicio";
 miFuente= loadFont("ShowcardGothic-Reg-20.vlw");
 Fuente=loadFont("Algerian-20.vlw");
 
  r[0]= "continuar";
  r[1]= "derecha";
  
  k [0]= ENTER;
  k [1]= RIGHT;
  k [2]= LEFT;
  k [3]= UP;
  k [4]= DOWN;
  

 f[0] = loadImage("ratatour.png");
 f[1] = loadImage ("ratadomestica.jpg");
 f[2] = loadImage("alcantarilla.jpg");
 f[3] = loadImage ("alcantarillaluz.jpg");
 f[4] = loadImage("ratubo.jpg");
 f[5] = loadImage("ratamigos.jpg");
 f[6] = loadImage("alcantarilla2.jpg");
 f[7] = loadImage("choque.jpg");
 f[8] = loadImage("gameover2.jpg");
 f[9] = loadImage("creditos.jpg");
 f[10] = loadImage("ratita.png");
 noCursor();
}
void draw(){




 if ( estado.equals("inicio") ) {
 fill(255);
 image(f[0], 0, 0, 600, 400);
 noStroke();
 textFont (miFuente, 16);
  fill(255);
 text ("(Presione la barra espaciadora)", width/2, 100);
 
 } else if ( estado.equals("introduccion") ){
 fill(255);
 image(f[1], 0,0, 600,400);
 noStroke();
 textFont (miFuente, 20); 
  fill(0);
 text("INTRODUCCIÔN", width/2, 70);
 text("Eres una rata domestica", width/2, 130);
 text(" perdida entre las alcantarillas.", width/2, 180);
 text("Utiliza las flechas del teclado y encuentra ", width/2, 230);
 text("la manera de volver a casa", width/2,280);
 text ("(Presione aqui para comenzar)", width/2, 330);

   }
 


  if (estado.equals("alcantarilla1")){
 fill (255);
 image(f[2], 0,0, 600,400);
 noStroke ();
 textFont (miFuente, 20);
 fill(0);
 text(r[1], 500, 300);
 text("izquierda", 115, 270);
 text("Elige un camino", width/2, 340);

 } else if (estado.equals("alcantarilla1A")){
 fill (255);
 image (f[3], 0,0,600,400);
 noStroke ();
 textFont(miFuente, 20);
 fill(0);
 text(r[0], 260, 160);
 text("volver", 220, 330);

} else if (estado.equals("alcantarilla1B")){
 fill(255);
 image (f[6], 0, 0, 600, 400);
 noStroke();
 textFont (miFuente, 20);
  fill(0);
 text(r[1], 500, 300);
 text(r[0], 140, 200);

} else if (estado.equals("salida")){
fill (255);
 image (f[4],0,0,600,400);
 noStroke();
 textFont (miFuente, 20);
  fill(0);
 text("¡has logrado salir de los tuneles subterraneos!", width/2, 340);

} else if (estado.equals ("amigos")){
fill (255);
 image (f[5],0,0,600,400);
 noStroke();
 textFont (miFuente, 15);
  fill(0);
 text("no encontraste la salida, ¡pero hiciste nuevos amigos!", width/2, 130);

} else if (estado.equals ("rip")){
fill(255);
  image (f[7],0,0,600,400);
 noStroke();
 textFont (miFuente, 20);
  fill(0);
 text("encontraste una salida,", width/2, 360);
 text("pero eres arrollado por un auto a toda velocidad", width/2, 380);
 
 }
 else if (estado.equals("gameover")){
 tint(255);
 image (f[8],0,0,600,400);
 noStroke();
 }

 else if (estado.equals("creditos")){
 tint(255);
 image(f[9],0,0,600,400);
 noStroke();
 textSize(20);
 textFont(Fuente);
 fill(255);

text("¡THANK YOU FOR PLAYING!", width/2, -400+mov);
text("GAME DIRECTOR", 400, -1000+mov);
text("GAME DESIGN", 400, -1700+mov);
text("GAME COMPOSER", 400, -2400+mov);
text("DISTRIBUTED BY", 400, -3100+mov);
text("DEVELOPED BY", 400,-3800+mov);
 textSize(20);
 textFont(miFuente);
 fill(255);
text("Natalia Duckardt", 400, -900+mov);
text("Lucio Yaber", 400, -1600+mov);
text("Iván Hardoy", 400, -2300+mov);
text("KONATI", 400, -3000+mov);
text("Emi Studios", 400, -3700+mov);
mov+=5;

}
{
 image(f[10], mouseX,mouseY, 60,40);}}

void keyPressed() {
 if ( estado.equals("inicio") ) {
 if ( key == ' ' ) {
 estado = "introduccion";
 }


 }
if ( estado.equals("amigos") || estado.equals("rip") ) {
 if ( keyCode == k[0] ) {
 estado = "gameover";
 }
 }
 if (estado.equals("alcantarilla1")){
 if (keyCode==k[1]){
 estado="alcantarilla1A";
 }

 if (keyCode==k[2]){
 estado="alcantarilla1B";
 }
 }
 if(estado.equals("alcantarilla1A")){
 if (keyCode==k[3]){
 estado="salida";
 }
 if (keyCode==k [4]){
 estado="alcantarilla1";

}
 }
 if(estado.equals("alcantarilla1B")){
 if (keyCode==k[1]){
 estado="amigos";
 }

 }
 if(estado.equals("alcantarilla1B")){
 if (keyCode==k [3]){
 estado="rip";
 }
 }
 if (estado.equals("salida")){
 if(keyCode==k[0]){
 estado="creditos";
 }
 }
 if (estado.equals("creditos")){
 if(keyCode==' '){
 estado="inicio";
 }
 }
 }



 void mousePressed() {

 if (estado.equals("introduccion")){
 if ( mouseX > x && mouseX < y && mouseY > y && mouseY < y+x ){
 estado= "alcantarilla1";
 }


 }
 if (estado.equals("gameover")){
 if ( mouseX > x && mouseX < y && mouseY > y+10 && mouseY < y+10+x ){
 estado= "alcantarilla1";

 }
 }
 if (estado.equals("gameover")){
 if ( mouseX > x+t && mouseX < y+t && mouseY > y+10 && mouseY < y+10+x ){
 estado= "inicio" ;}
 }}

 
 
