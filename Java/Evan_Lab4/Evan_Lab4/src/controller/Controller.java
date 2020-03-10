package controller;
import java.awt.*;

public class Controller {
   
   Canvas canv = new Canvas();
   
   public static void main (String[] args) throws Exception {
      new Controller();
   }
   
   public Controller() throws Exception {
      Arrow arrow = new Arrow(canv);
   }
   
}