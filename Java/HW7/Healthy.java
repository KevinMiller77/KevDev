public class Healthy {
   
   private String name;
   private String gender;
   private int weight;
   private int height;
   private int age;
   private int actlvl;
   
   public Healthy () {
      name = "";
      gender = "";
      weight = 0;
      height = 0;
      age = 0;
      actlvl = 0;
   }
   
   public boolean setName(String newName) {
      if (newName.length() > 0) {
         name = newName;
         return true;
      }
      
      else {
         return false;
      }
   }
   
   public String getName() {
      return name;
   }
   
   public boolean setGender(String newGen) {
      switch(newGen) {
         case("F"):
            gender = "F";
            return true;
         case("f"):
            gender = "F";
            return true;
         case("M"):
            gender = "M";
            return true;
         case("m"):
            gender = "M";
            return true;
         default:
            return false;
      }
   }
   
   public String getGender() {
      return gender;
   }
   
   public boolean setWeight(int newWght) {
      if (newWght >= 100) {
         weight = newWght;
         return true;
      }
      
      else {
         return false;
      }
   }
   
   public int getWeight() {
      return weight;
   }
   
   public boolean setHeight(int newHght) {
      if (newHght >= 60 && newHght <= 84) {
         height = newHght;
         return true;
      }
      
      else {
         return false;
      }
   }
   
   public int getHeight() {
      return height;
   }
   
   public boolean setAge(int newAge) {
   
      if (newAge >= 18) {
         age = newAge;
         return true;
      }
      
      else {
         return false;
      }
   }
   
   public int getAge() {
      return age;
   }
   
   public boolean setActLvl(int newActLvl) {
   
      if (newActLvl >= 1 && newActLvl <= 5) {
         actlvl = newActLvl;
         return true;
      }
      
      else {
         return false;
      }
   }
   
   public int getActLvl() {
      return actlvl;
   }
   
   public double calcBMI() {
      return ( (double)(weight) / (double)(Math.pow(height, 2)) * 703 );
   }
   
   public double calcBMR() {
      double CONVERSION_M = (double)(  66 + (13.7 * (weight * .45359237) ) + (5 * (height * 2.54) ) - (6.8 * age)  );
      double CONVERSION_F = (double)(  655 + (9.6 * (weight * .45359237) ) + (1.8 * (height * 2.54) ) - (4.7 * age)  );

      if (gender == "F") {
         return CONVERSION_F;
      }
      
      else if (gender == "M") {
         return CONVERSION_M;
      }
      
      else {return 0.0;}
   }
   
   public double calcTDEE() {
      switch(actlvl) {
         case(1):
            return ( calcBMR() * 1.2 );
         case(2):
            return ( calcBMR() * 1.375 );
         case(3):
            return ( calcBMR() * 1.55 );
         case(4):
            return ( calcBMR() * 1.725 );
         case(5):
            return ( calcBMR() * 1.9 );
         default:
            return 0.0;
      }
   }
   
}