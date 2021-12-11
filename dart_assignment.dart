import 'dart:io';

// The below function is used to check whether the input is valid or not.
// It prints an error message - output if input is 0, negative,empty, NumberFormatException or any random text is entered.
// It returns true if none of the above mentioned inputs occur. True will be retured if the input is a non negative, non-zero double value.
bool check(String str) {
  try {
    var c = double.parse(str);
    if (c == 0) {
      print(
          "\nCant enter 0 as input. Output will become 0.\nPlease enter a non zero positive value.\n\n");
      return false;
    } else if (c > 0) {
      return true;
    } else {
      print(
          "\nCant enter negative values.\nPlease enter a positive non zero value!\n\n");
      return false;
    }
  } catch (NumberFormatException) {
    //exception
    print("\nInvalid input. Please enter a valid value(integer/double).\n\n");
    return false;
  }
}

//The below function is used to check the value of the unit sent via the parameter of the function
//It prints an error message if the entered value is invalid and does not satisfy the conditions and returns false.
//Else for other conditons , if met returns true.
bool check2(String str) {
  if (str == "m" || str == "meter" || str == "meters") {
    return true;
  } else if (str == "cm" || str == "centimeter" || str == "centimeters") {
    return true;
  } else if (str == "inches" || str == "inch" || str == "in") {
    return true;
  } else {
    print("\nInvalid input. Please enter a valid input as directed.\n\n");
    return false;
  }
}

// same as mentioned in the above comments.
bool check3(String str) {
  if (str == "kg" || str == "kilogram" || str == "kilograms") {
    return true;
  } else if (str == "g" || str == "gram" || str == "grams") {
    return true;
  } else if (str == "pound" || str == "pounds" || str == "lbs") {
    return true;
  } else {
    print("\nInvalid input. Please enter a valid input as directed.\n\n");
    return false;
  }
}

// cholesterol function. Runs when called in the main function ...depending on the option chosen by the user.
void cholesterol() {
  double total_cholesterol = 0.0, result = 0.0;
  var hdl, ldl, triG;
  int flag2 = 0;
  while (flag2 != 1) {
    //used to control input. The loop is exited when the value of the flag becomes 1,which happens when the correct input in put. If wrong input is entered, it takes the correct inputs again.If wrong input entered, user has to input again because of check function.
    stdout.write("Enter High-density lipidprotein value(in mg/dL): \n> ");
    hdl = stdin.readLineSync() as String;
    if (check(hdl) == true) {
      hdl = double.parse(hdl);
      stdout.write("Enter Low-density lipidprotein value(in mg/dL): \n> ");
      ldl = stdin.readLineSync() as String;
      if (check(ldl) == true) {
        ldl = double.parse(ldl);
        stdout.write("Enter Triglycerides value(in mg/dL): \n> ");
        triG = stdin.readLineSync() as String;
        if (check(triG) == true) {
          triG = double.parse(triG);
          flag2 = 1;
        }
      }
    }
  }
  var cholesterol_map = {
    "1": "Total Cholesterol",
    "2":
        "Check range of HDL (High-density lipidprotein), LDL(Low-density lipidprotein) and Triglycerides ",
    "3": "LDL to HDL ratio",
    "4": "Triglycerides to HDL ratio",
    "5": "Total Cholesterol to HDL ratio",
    "6": "How to correct your cholesterol levels?"
  };
  var flag3 = 0;
  while (flag3 != 1) {
    print("\nPlease choose one of the folowing options: ");
    print(
        "1 - Total Cholesterol\n2 - Check range of HDL (High-density lipidprotein), LDL(Low-density lipidprotein) and Triglycerides\n3 - LDL to HDL ratio\n4 - Triglycerides to HDL ratio\n5 - Total Cholesterol to HDL ratio\n6 - How to correct your cholesterol levels?");
    stdout.write("> ");
    var choice = stdin.readLineSync() as String;
    print(
        "\nYou have chosen $choice - ${cholesterol_map[choice]}"); // prints the chosen inputs by the user.
    // according to the inputs given by the user the following blocks of code run. If wrong input is given then input is taken again(controlled by the while loop).
    if (choice == "1") {
      total_cholesterol = hdl + ldl + (0.2 * triG); //calculation
      print(
          "Desirable: Less than 200 mg/dL\nBorderline high: 200 - 239 mg/dL\nHigh: 240 mg/dL and above\n\n");
      print("Your total Cholesterol is: " +
          total_cholesterol.toString() +
          " mg/dL");
      //comparasion statements to find the range the output exists in.
      if (total_cholesterol < 200) {
        print("It is desirable.");
      }
      if (total_cholesterol >= 200 && total_cholesterol <= 239) {
        print("It is borderline high.");
      }
      if (total_cholesterol >= 240) {
        print("It is high.");
      }
      flag3 = 1;
    } else if (choice == "2") {
      print(
          "\nFor LDL:\nOptimal: Less than 100 mg/dL\nBorderline: 100 - 159 mg/dL\nHigh:More than 160 mg/dL\n\n");
      print("Your LDL levels are: " + ldl.toString());
      //comparasion statements to find the range the output exists in.
      if (ldl < 100) {
        print("It is optimal.");
      }
      if (ldl <= 159 && ldl >= 100) {
        print("It is borderline.");
      }
      if (ldl >= 160) {
        print("It is high.");
      }
      print(
          "\nFor HDL:\nOptimal: 60 mg/dL and above\nBorderline: 40 - 59 mg/dL\nRisk of heart disease: Less than 40 mg/dL\n\n");
      print("Your HDL levels are: " + hdl.toString());
      if (hdl >= 60) {
        print("It is optimal.");
      }
      if (hdl < 60 && hdl >= 40) {
        print("It is borderline.");
      }
      if (hdl < 40) {
        print("It is low. You are at a high risk of getting a heart disease.");
      }
      print(
          "\nFor Triglycerides:\nNormal: Less than 150 mg/dL\nBorderline: 150 - 199 mg/dL\nHigh: 200 mg/dL and above\n\n");
      print("Your Triglycerides levels are: " + triG.toString());
      if (triG < 150) {
        print("It is Normal.");
      }
      if (triG < 200 && triG >= 150) {
        print("It is borderline.");
      }
      if (triG >= 200) {
        print("It is high.");
      }
      flag3 = 1;
    } else if (choice == "3") {
      result = ldl / hdl; //calculation
      print("\nIdeal: below 2.0\nGood: below 5.0\nToo high: 5.0 or above");
      print("\nYour LDL to HDL ratio is: " + result.toString());
      if (result < 2.0) {
        print("It is ideal.");
      }
      if (result < 5.0) {
        print("It is good.");
      }
      if (result >= 5.0) {
        print("It is too high.");
      }
      flag3 = 1;
    } else if (choice == "4") {
      result = triG / hdl; //calculation
      print("\nIdeal: 2.0 or less\nHigh: 2.0 to 6.0\nToo high: 6.0 or above");
      print("\nYour Triglycerides to HDL ratio is: " + result.toString());
      //comparasion statements to find the range the output exists in.
      if (result <= 2.0) {
        print("It is ideal.");
      }
      if (result < 6.0 && result >= 2.0) {
        print("It is good.");
      }
      if (result >= 6.0) {
        print("It is too high.");
      }
      flag3 = 1;
    } else if (choice == "5") {
      total_cholesterol = hdl + ldl + (0.2 * triG);
      result = total_cholesterol / hdl; //calculation
      print("\nIdeal: under 3.5\nGood: under 5.0\nBad: over 5.0");
      print("\nYour Total Cholesterol to HDL ratio is: " + result.toString());
      //comparasion statements to find the range the output exists in.
      if (result <= 3.5) {
        print("It is ideal.");
      }
      if (result <= 5.0) {
        print("It is good.");
      }
      if (result > 5.0) {
        print("It is bad.");
      }
      flag3 = 1;
    } else if (choice == "6") {
      stdout.write(
          "\n1. Regular aerobic physical exercise:\n Regular exercises increase HDL cholesterol (i.e. good cholesterol) and decrease LDL cholesterol (i.e. bad cholesterol).\n It can also lower the risk of heart attack or stroke, as it reduces BP.\n");
      stdout.write(
          "2. Diet:\n Eat food items which have low fatty acids, saturated fats, and cholesterol.\n Eat fish as they're a source of omega-3 fatty acids.\n Can also eat cholesterol-lowering foods such as: margarine(plant sterols and stanols).\n");
      stdout.write(
          "3. Medications: If non-pharmacological ways of treatment do not bring satisfactory results, contact your doctor, who could propose drug therapies.\n\n");
      flag3 = 1;
    } else {
      print(
          "Please enter a valid option."); //printed if no condition is satisfied.
    }
  }
  print("\nThank you for your time!\nSee you next time!");
}

// hwconverter function. Runs when called in the main function ...depending on the option chosen by the user.
void hwconverter() {
  dynamic height, weight, unit;
  var flag4 = 0;
  var flag = 0;
  while (flag4 != 1) {
    //used to control input. The loop is exited when the value of the flag becomes 1,which happens when the correct input in put. If wrong input is entered, it takes the correct inputs again.If wrong input entered, user has to input again because of check and check2 function.
    print("Do you want to convert height or weight?\n1 - Height\n2 - Weight\n");
    stdout.write("> ");
    String answer = stdin.readLineSync() as String;
    if (answer == "1") {
      while (flag != 1) {
        print("Enter your height(only value):");
        stdout.write("> ");
        height = stdin.readLineSync() as String;
        if (check(height) == true) {
          print("Enter units(m/cm/inches):");
          stdout.write("> ");
          unit = stdin.readLineSync() as String;
          if (check2(unit) == true) {
            flag = 1;
          }
        }
      }
      while (flag4 != 1) {
        // according to the inputs given by the user the following blocks of code run. If wrong input is given then input is taken again(controlled by the while loop).
        print(
            "Convert to( Enter the s.no number ):\n1 - Meter\n2 - Inches\n3 - Centimeter");
        stdout.write("> ");
        String answer2 = stdin.readLineSync() as String;
        if (unit.toLowerCase() == "cm" ||
            unit.toLowerCase() == "centimeter" ||
            unit.toLowerCase() == "centimeters") {
          //comparasion statements as per input given by user
          if (answer2 == "1") {
            height = double.parse(height);
            height = height * 0.01; //calculation
            print("Your height is: " + height.toString() + " m");
            flag4 = 1;
          } else if (answer2 == "2") {
            height = double.parse(height);
            height = height * 0.393701; //calculation
            print("Your height is: " + height.toString() + " inches");
            flag4 = 1;
          } else if (answer2 == "3") {
            print("Value is already in cm.\n");
            flag4 = 1;
          } else {
            print(
                "Imvalid Input. Please try again."); //printed when no statement is satsfied and input is taken again
          }
        } else if (unit.toLowerCase() == "m" ||
            unit.toLowerCase() == "meter" ||
            unit.toLowerCase() == "meters") {
          //comparasion statements as per input given by user
          if (answer2 == "1") {
            print("Value is already in m.\n");
            flag4 = 1;
          } else if (answer2 == "2") {
            height = double.parse(height);
            height = height * 39.3701; //calculation
            print("Your height is: " + height.toString() + " inches");
            flag4 = 1;
          } else if (answer2 == "3") {
            height = double.parse(height);
            height = height * 100; //calculation
            print("Your height is: " + height.toString() + " cm");
            flag4 = 1;
          } else {
            print(
                "Imvalid Input. Please try again."); //printed when no statement is satsfied and input is taken again
          }
        } else if (unit.toLowerCase() == "inches" ||
            unit.toLowerCase() == "in" ||
            unit.toLowerCase() == "inch") {
          //comparasion statements as per input given by user
          if (answer2 == "1") {
            height = double.parse(height);
            height = height * 0.0254; //calculation
            print("Your height is: " + height.toString() + " m");
            flag4 = 1;
          } else if (answer2 == "2") {
            print("Value is already in inches.\n");
            flag4 = 1;
          } else if (answer2 == "3") {
            height = double.parse(height);
            height = height * 2.54; //calculation
            print("Your height is: " + height.toString() + " cm");
            flag4 = 1;
          } else {
            print(
                "Invalid input! Please try again."); //printed when no statement is satsfied and input is taken again
          }
        }
      }
    } else if (answer == "2") {
      while (flag != 1) {
        //used to control input. The loop is exited when the value of the flag becomes 1,which happens when the correct input in put. If wrong input is entered, it takes the correct inputs again.If wrong input entered, user has to input again because of check and check2 function.
        print("Enter your weight(only value):");
        stdout.write("> ");
        weight = stdin.readLineSync() as String;
        if (check(weight) == true) {
          print("Enter units(kg/g/lbs):");
          stdout.write("> ");
          unit = stdin.readLineSync() as String;
          if (check3(unit) == true) {
            flag = 1;
          }
        }
      }
      while (flag4 != 1) {
        print(
            "Convert to( Enter the s.no number ):\n1 - kilograms\n2 - pounds\n3 - grams");
        stdout.write("> ");
        String answer2 = stdin.readLineSync() as String;
        if (unit.toLowerCase() == "kg" ||
            unit.toLowerCase() == "kilograms" ||
            unit.toLowerCase() == "kilogram") {
          //comparasion statements as per input given by user
          if (answer2 == "1") {
            print("Value is already in kg.\n");
            flag4 = 1;
          } else if (answer2 == "2") {
            weight = double.parse(weight);
            weight = weight * 2.20462; //calculation
            print("Your weight is: " + weight.toString() + " lbs");
            flag4 = 1;
          } else if (answer2 == "3") {
            weight = double.parse(weight);
            weight = weight * 1000; //calculation
            print("Your weight is: " + weight.toString() + " g");
            flag4 = 1;
          } else {
            print(
                "Invalid input! Please try again."); //printed when no statement is satsfied and input is taken again
          }
        } else if (unit.toLowerCase() == "pound" ||
            unit.toLowerCase() == "pounds" ||
            unit.toLowerCase() == "lbs") {
          //comparasion statements as per input given by user
          if (answer2 == "1") {
            weight = double.parse(weight);
            weight = weight * 0.453592; //calculation
            print("Your weight is: " + weight.toString() + " kg");
            flag4 = 1;
          } else if (answer2 == "2") {
            print("Value is already in lbs.\n");
          } else if (answer2 == "3") {
            weight = double.parse(weight);
            weight = weight * 453.592; //calculation
            print("Your weight is: " + weight.toString() + " g");
            flag4 = 1;
          } else {
            print(
                "Invalid input! Please try again."); //printed when no statement is satsfied and input is taken again
            flag4 = 1;
          }
        } else if (unit.toLowerCase() == "gram" ||
            unit.toLowerCase() == "grams" ||
            unit.toLowerCase() == "g") {
          //comparasion statements as per input given by user
          if (answer2 == "1") {
            weight = double.parse(weight);
            weight = weight * 0.001; //calculation
            print("Your weight is: " + weight.toString() + " kg");
            flag4 = 1;
          } else if (answer2 == "2") {
            weight = double.parse(weight);
            weight = weight * 0.00220462; //calculation
            print("Your weight is: " + weight.toString() + " lbs");
            flag4 = 1;
          } else if (answer2 == "3") {
            print("Value is already in g.\n");
          } else {
            print(
                "Invalid input! Please try again."); //printed when no statement is satsfied and input is taken again
            flag4 = 1;
          }
        }
      }
    } else {
      print("Invalid input! Please input number from the given options.");
    }
  }
  print("\nThank you for your time!\nSee you next time");
}

// bmi function. Runs when called in the main function ...depending on the option chosen by the user.
bmi() {
  print(
      "\nBMI is a simple calculation that uses a person’s height and weight.\nThe formula is BMI = kg/m2 where\nkg: person’s weight in kilograms\nm2: height in metres squared.\n");
  double Bmi = 0.0;
  var height, weight;
  int flag = 0;
  while (flag != 1) {
    //used to control input. The loop is exited when the value of the flag becomes 1,which happens when the correct input in put. If wrong input is entered, it takes the correct inputs again.If wrong input entered, user has to input again because of check function.
    stdout.write("Enter height in m: \n> ");
    height = stdin.readLineSync() as String;
    if (check(height) == true) {
      height = double.parse(height);
      stdout.write("Enter weight in kg: \n> ");
      weight = stdin.readLineSync() as String;
      if (check(weight) == true) {
        weight = double.parse(weight);
        Bmi = weight / (height * height); //calculation
        print("Your Body Mass Index is: " +
            Bmi.toString() +
            " kg/m squared\nOr : ${Bmi * 0.00142233} lbs/inch squared"); //calculation in print statement
        flag = 1;
      }
    }
  }
  if (Bmi < 18.5) {
    //comparasion statements to determine which range does bmi lie in
    print("\nYour are underweight!\nEat more along with regular excercise!");
  } else if (Bmi >= 18.5 && Bmi < 25) {
    print("\nYour have a healthy weight!\nWell done!\nKeep it up!");
  } else if (Bmi >= 25 && Bmi < 30) {
    print("\nYour are overweight!\nStart working out!");
  } else if (Bmi >= 30) {
    print(
        "\nYou are obese!\n Start working out and make a diet plan.\nTake advice from a doctor as well!");
  }
  print("\nThank you for your time!\nSee you next time");
}

void main() {
  //main function
  print("Please enter your name: ");
  stdout.write("> ");

  var choice_map = {
    "1": "Cholestrol & Ratios Calculator",
    "2": "Body-Mass-Index (BMI) Calculator",
    "3": "Height & Weight Converter"
  };

  String name = stdin.readLineSync() as String;
  print("Welcome $name !! \nPlease select one option from below:");
  print(
      "1 - Cholestrol & Ratios Calculator\n2 - Body-Mass-Index (BMI) Calculator\n3 - Height & Weight Converter\n\nEnter 0 to EXIT\n\nPlease enter 1,2 or 3 as per your choice!");
  stdout.write("> ");
  var option;
  option = stdin.readLineSync() as String;
  var counter = 1;
  while (counter < 4) {
    //used to control input. The loop is exited when the value of the flag becomes 1,which happens when the correct input in put. If wrong input is entered, it takes the correct inputs again.
    //It will take input 3 times and then terminate the program.If wrong input entered, user has to input again because of check function.
    switch (option) {
      case "0": //terminates the program if 0 is entered
        {
          print("Thank you for your time!\nSee you next time");
          counter = 4;
          break;
        }
      case "1":
        {
          print("You have chosen $option - ${choice_map[option]}");
          print("Please enter the required details asked:");
          cholesterol();
          counter = 4;
          break;
        }
      case "2":
        {
          print("You have chosen $option - ${choice_map[option]}");
          print("Please enter the required details asked:");
          bmi();
          counter = 4;
          break;
        }
      case "3":
        {
          print("You have chosen $option - ${choice_map[option]}");
          print("Please enter the required details asked:");
          hwconverter();
          counter = 4;
          break;
        }
      default:
        {
          print("You have entered a wrong input: $option");
          counter++;
          if (counter == 4) {
            print("Program Terminated. Enetred wrong value 3 times.");
            break;
          }
          print("Please enter a number from the displayed values only:\n");
          print(
              "1 - Cholestrol & Ratios Calculator\n2 - Body-Mass-Index (BMI) Calculator\n3 - Height & Weight Converter\n\nEnter 0 to EXIT.\n");
          stdout.write("> ");
          option = stdin.readLineSync() as String;
        }
    }
  }
}
