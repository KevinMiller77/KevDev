import java.util.*;
public class HowHealthy {
   private static Scanner in;
   private static Healthy patient;
   
   public static void main(String[] args) {

      //Setup scanner
      in = new Scanner(System.in);

      //Instatiate patient
      patient = new Healthy();

      //Call all of the member functions to grab patient info
      getName();
      getGender();
      getWeight();
      getHeight();
      getAge();
      getActivity();

      //Print out patients basic information 
      System.out.println(patient.getName() + "'s information");
      System.out.println("Weight: " + patient.getWeight());
      System.out.println("Height: " +  patient.getHeight());
      System.out.println("Age: " + patient.getAge());

      if (patient.getGender() == "F" || patient.getGender() == "f") {
         System.out.println("These are for a female.\n");
      } else {
         System.out.println("These are for a male.\n");
      }
      
      //Print the calculated values and weight classification
      System.out.printf("BMR is %.2f%n", patient.calcBMR() );
      System.out.printf("BMI is %.2f%n", patient.calcBMI() );
      System.out.printf("TDEE is %.2f%n", patient.calcTDEE());
      
      System.out.printf("Your BMI classifies you as: ");
      
      if (patient.calcBMI() < 18.5) {
         System.out.println("Underweight");
      } else if (patient.calcBMI() >= 18.5 && patient.calcBMI() < 25) {
         
         System.out.println("Normal weight");
      } else if (patient.calcBMI() >= 25 && patient.calcBMI() < 30) {
         
         System.out.println("Overweight");
      } else {
         
         System.out.println("Obese");
      }
   
      //Close stdout
      in.close();
   }

   //Grab name and exit if bad input
   private static void getName()
   {
      System.out.println("Person's name: ");
      String name = in.nextLine();

      if (patient.setName(name) == false)
      {
         System.out.println("Name must be at least one character");
         System.exit(0);
      }
   }

   //Grab gender and exit if bad input
   public static void getGender()
   {
      System.out.println(patient.getName() + ", are you male or female (M/F): ");
      String gender = in.nextLine().substring(0, 1);
      
      if (patient.setGender(gender) == false) {
         System.out.println("Please select either M or F, lower or upper case");
         System.exit(0);
      }
   }
   
   //Grab weight and exit if bad input
   public static void getWeight()
   {
      System.out.println(patient.getName() + "'s weight (lbs): ");
      int weight = in.nextInt();
      
      if (patient.setWeight(weight) == false) {
         System.out.println("Weight must be at least 100lbs");
         System.exit(0);
      }
   }
   
   //Grab Height and exit if bad input
   public static void getHeight()
   {
      System.out.println(patient.getName() + "'s height (inches): ");
      int height = in.nextInt();
            
      if (patient.setHeight(height) == false) {
         System.out.println("Height must be between 60-84 inches, inclusively");
         System.exit(0);
      }
   }

   //Grab age and exit if bad input
   public static void getAge()
   {
      System.out.println(patient.getName() + "'s age (years):");
      int age = in.nextInt();

      if (patient.setAge(age) == false) {
         System.out.println("Must be at least 18 years old");
         System.exit(0);
      }
   }
   
   //Grab average activity and exit if bad input
   public static void getActivity()
   {
      System.out.println("Activity Level - Use these categories:");
      System.out.println("   1 - Sedentary (little or no exercise, desk job)");
      System.out.println("   2 - Lightly active (light exercise/sports 1-3 days/wk)");
      System.out.println("   3 - Moderately active (moderate exercise/sports 3-5 days/wk)");
      System.out.println("   4 - Very active (hard exercise/sports 6-7 days/wk)");
      System.out.println("   5 - Extra active (hard, daily exercise/sports & physical job or 2X day training, i.e marathon etc.)");
      System.out.println("How active are you? ");

      int actlvl = in.nextInt();
      
      if (patient.setActLvl(actlvl) == true) {
         System.out.println("Activity Level must be between 1 and 5, inclusively");
         System.exit(0);
      }
   }
}