# Cholestrol-BMI-Height-and-Weight

TOPIC NAME:
A combination of:
-Cholesterol and its ratios calculator
-BMI calculator
-Height and Weight convertor

CREATOR DETAILS:
NAME: Vishesh Luthra

INCTRUCTIONS FOR THE USER RUNNING THIS PROGRAM:
1) Run on local system by installing the SDK:                [RECOMMENDED]
> https://dart.dev/get-dart - download zip file link.
> Enter the path of the bin folder in the pth variable of user variables(Environment variables).

2) Run the program on the online compiler:
> https://www.tutorialspoint.com/execute_dart_online.php - link to online compiler.
> Paste the sample std input in the stdin section of online compiler for easy program running( given after description).
  User can run any input as per their wish, but as the program is dynamic, thus it is recommended that the pattern of the sample given, be followed.
  Best experience of the program will come, when it is made to run on local system as mentioned above.

DESCRIPTION AND FNCTIONING OF PROGRAM:
It is a combination program of 
<br />-Cholesterol and its ratios calculator
-BMI calculator
-Height and Weight convertor
The code can be understood via the comments put in the code, but for better understanding:
The program starts with asking for the users name in order to welcome. The user is supposed to choose and enter options from 1,2,3 and 0,
depending on the  entity they want to use(1-cholesterol and ratios calculator/2-Bmi calculatir/3-height and weight convertor). If enterd 0 then the program is terminated.
If an entry other than the above mentioned indices in entered, an invalid input error is displayed and the user is asked for the input again. If wrong input is entered
3 times the program terminates.

If 1 is chosen(cholesterol and ratio calculator) the option chosen is displayed and the function for the respective entity is called.
Similarly for the other 2 options as well.
For cholesterol calculator , required input is taken(after you have given a blood test). If invalid input is given, erroe is given and the program asks for all the values to be input again. After all the input given is valid,
6 futher options are given to choose from. By chposing one out of the 6, its respective output is given qith comapisons that tell which range do the output lie in. The program terminates after deslpaying the outputs mentioned in the code. 

If 2 is chosen(BMI calculator), function for the respective entity is called. Then height and weight input is taken from the user. If any invalid input is given the, program will take the input of height and weight again untill the inputs are valid.
Then the BMI of the person is shown in 2 measures of bmi (kg/squared m and lbs/inch squared). It then compares the value found out with the ranges found from research in the feild of medical science as to whether the bmi lies in normal, underweight, overweight or obese category.
The program terminates after this.

If 3 is chosen (height and weight convertor), the program will ask for :(1- height conversion, 2- weight conversion). If any invalid input is given the program asks for input again until valid input is given.
If suppose height conversion is chosen(1), 2 for weight conversion, then the user has to enter their height and then the program asks for the unit of the height to be gievn by the user( can be: m,cm,inches). Similarly for weight enter weight(value only) and then the unit(kg,g,lbs).
The program asks is for which unit the weight should be converted to. If it is m to cm then it converts and shows the output. If it is the same unit then it shows the same a message that it is the same unit. If any wrong input is given, then program asks for the input again until valid inputs are given.
The program after displaying the output terminates.

SAMPLES FOR ONLINE STDIN:

=>For exiting the program after running:
Vishesh
0

=>For cholesterol calculator:

1)Total cholesterol:(enter the following)
Vishesh
1
40
122
84.0
1

2)Check range HDL,LDL and Triglycerides (enter the following)
Vishesh
1
38
124.0
85.0
2

3)LDL to HDL ratio (enter the following)
Vishesh
1
50.0
300.0
73.0
3

4)Triglycerides to HDL ratio (enter the following)
Vishesh
1
50.0
321.9
23.1
4

5)Total Cholesterol to HDL ratio: (enter the following)
Vishesh
1
40.0
122
84.1
5

6)How to correct your cholesterol?: (enter the following)
Vishesh
1
40.0
122
84.1
6

=>For BMI calculator
Vishesh
2
1.78
61

=>For Height weight convertor
1)For height conversion (here changing 178 cm to inches. To convert is to m replace 2 with 1. Even try 3 to see that the conversion doesnt happen as unit is same.)
Vishesh
3
1
178
cm
2

2) You can change 178 and cm to {any number} amd {m/cm/inch} and chose 1,2 or 3.

3)For weight conversion (here changing 300 lbs to g. To convert is to kg replace 3 with 1. Even try 2 to see that the conversion doesnt happen as unit is same.)
Vishesh
3
2
300
lbs
3

4) You can change 300 and lbs to {any number} and {kg/g/lbs} and chose 1,2 or 3.


-Hope you have fun while running the program.
-Thank you!
