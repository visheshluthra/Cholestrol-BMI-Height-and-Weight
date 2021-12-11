# Cholestrol-BMI-Height-and-Weight

TOPIC NAME:
A combination of:
<br />-Cholesterol and its ratios calculator
<br />-BMI calculator
<br />-Height and Weight convertor
<br />
<br />CREATOR DETAILS:
<br />NAME: Vishesh Luthra
<br />
<br />INCTRUCTIONS FOR THE USER RUNNING THIS PROGRAM:
<br />1) Run on local system by installing the SDK:                [RECOMMENDED]
<br />> https://dart.dev/get-dart - download zip file link.
<br />> Enter the path of the bin folder in the pth variable of user variables(Environment variables).
<br />
<br />2) Run the program on the online compiler:
<br />> https://www.tutorialspoint.com/execute_dart_online.php - link to online compiler.
<br />> Paste the sample std input in the stdin section of online compiler for easy program running( given after description).
<br />  User can run any input as per their wish, but as the program is dynamic, thus it is recommended that the pattern of the sample given, be followed.
<br />  Best experience of the program will come, when it is made to run on local system as mentioned above.
<br />
<br />DESCRIPTION AND FNCTIONING OF PROGRAM:
<br />It is a combination program of 
<br />-Cholesterol and its ratios calculator
<br />-BMI calculator
<br />-Height and Weight convertor
<br />The code can be understood via the comments put in the code, but for better understanding:
<br />The program starts with asking for the users name in order to welcome. The user is supposed to choose and enter options from 1,2,3 and 0,
<br />depending on the  entity they want to use(1-cholesterol and ratios calculator/2-Bmi calculatir/3-height and weight convertor). If enterd 0 then the program is terminated.
<br />If an entry other than the above mentioned indices in entered, an invalid input error is displayed and the user is asked for the input again. If wrong input is entered
<br />3 times the program terminates.
<br />
<br />If 1 is chosen(cholesterol and ratio calculator) the option chosen is displayed and the function for the respective entity is called.
<br />Similarly for the other 2 options as well.
<br />For cholesterol calculator , required input is taken(after you have given a blood test). If invalid input is given, erroe is given and the program asks for all the values to be input again. After all the input given is valid,
<br />6 futher options are given to choose from. By chposing one out of the 6, its respective output is given qith comapisons that tell which range do the output lie in. The program terminates after deslpaying the outputs mentioned in the code. 

<br />If 2 is chosen(BMI calculator), function for the respective entity is called. Then height and weight input is taken from the user. If any invalid input is given the, program will take the input of height and weight again untill the inputs are valid.
<br />Then the BMI of the person is shown in 2 measures of bmi (kg/squared m and lbs/inch squared). It then compares the value found out with the ranges found from research in the feild of medical science as to whether the bmi lies in normal, underweight, overweight or obese category.
<br />The program terminates after this.
<br />
<br />If 3 is chosen (height and weight convertor), the program will ask for :(1- height conversion, 2- weight conversion). If any invalid input is given the program asks for input again until valid input is given.
<br />If suppose height conversion is chosen(1), 2 for weight conversion, then the user has to enter their height and then the program asks for the unit of the height to be gievn by the user( can be: m,cm,inches). Similarly for weight enter weight(value only) and then the unit(kg,g,lbs).
<br />The program asks is for which unit the weight should be converted to. If it is m to cm then it converts and shows the output. If it is the same unit then it shows the same a message that it is the same unit. If any wrong input is given, then program asks for the input again until valid inputs are given.
<br />The program after displaying the output terminates.
<br />
<br />SAMPLES FOR ONLINE STDIN:
<br />
<br />=>For exiting the program after running:
<br />Vishesh
<br />0
<br />
<br />=>For cholesterol calculator:
<br />
<br />1)Total cholesterol:(enter the following)
<br />Vishesh
<br />1
<br />40
<br />122
<br />84.0
<br />1
<br />
<br />2)Check range HDL,LDL and Triglycerides (enter the following)
<br />Vishesh
<br />1
<br />38
<br />124.0
<br />85.0
<br />2
<br />
<br />3)LDL to HDL ratio (enter the following)
<br />Vishesh
<br />1
<br />50.0
<br />300.0
<br />73.0
<br />3
<br />
<br />4)Triglycerides to HDL ratio (enter the following)
<br />Vishesh
<br />1
<br />50.0
<br />321.9
<br />23.1
<br />4
<br />
<br />5)Total Cholesterol to HDL ratio: (enter the following)
<br />Vishesh
<br />1
<br />40.0
<br />122
<br />84.1
<br />5
<br />
<br />6)How to correct your cholesterol?: (enter the following)
<br />Vishesh
<br />1
<br />40.0
<br />122
<br />84.1
<br />6
<br />
<br />=>For BMI calculator
<br />Vishesh
<br />2
<br />1.78
<br />61
<br />
<br />=>For Height weight convertor
<br />1)For height conversion (here changing 178 cm to inches. To convert is to m replace 2 with 1. Even try 3 to see that the conversion doesnt happen as unit is same.)
<br />Vishesh
<br />3
<br />1
<br />178
<br />cm
<br />2
<br />
<br />2) You can change 178 and cm to {any number} amd {m/cm/inch} and chose 1,2 or 3.
<br />
<br />3)For weight conversion (here changing 300 lbs to g. To convert is to kg replace 3 with 1. Even try 2 to see that the conversion doesnt happen as unit is same.)
<br />Vishesh
<br />3
<br />2
<br />300
<br />lbs
<br />3
<br />
<br />4) You can change 300 and lbs to {any number} and {kg/g/lbs} and chose 1,2 or 3.
<br />
<br />
<br />-Hope you have fun while running the program.
<br />-Thank you!
<br />
