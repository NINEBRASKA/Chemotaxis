Bacteria[] colony;
 void setup()   
 { 
   size(400,400);
   colony = new Bacteria[500];
   for ( int i = 0; i < colony.length; i++ )
   {
     colony[i] = new Bacteria();
   }
 }   
 void draw()   
 { 
   background(200,200,200);
   for ( int i = 0; i < colony.length; i++)
   {
     colony[i].show();
     colony[i].walk();  
   }
 }  
 class Bacteria    
 {    
   int myX, myY;
   Bacteria()
   {
     myX = 200;
     myY = 200;
   }
   void walk()
   {
     myX = myX + (int)(Math.random() * 3) - 1;
     myY = myY + (int)(Math.random() * 3) - 1;
   }
   void show()
   {
     fill(200,200,0);
     ellipse(myX, myY, 50,50);
   }
 }    
