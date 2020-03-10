package controller;
import java.awt.*;

public class Arrow {

   private Canvas canvas; // the canvas on which to draw
   private Triangle head; // a filled, B&W head
   private Rectangle shaft; // an unfilled, B&W shaft
   
   public Arrow (Canvas _canvas) {
      canvas = _canvas;
      shaft = new Rectangle (10, 100, 150, 140);
      head = new Triangle (50, 50, 100, 200);
   }
   
   public void draw() {
   }

   public void erase() {

   }

   public void moveUp() {

   }
   
}