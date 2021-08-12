import 'package:bmi_calculator/Result.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:bmi_calculator/CustomWidgets.dart';
import 'Calculator.dart';

int age = 20;
int weight = 60;
int height = 160;
var selectedGender;
enum Genders { male, female }

class Input extends StatefulWidget {
  const Input({Key? key}) : super(key: key);

  @override
  _InputState createState() => _InputState();
}

class _InputState extends State<Input> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            leading: Icon(Icons.menu),
            title: Text('BMI CALCULATOR'),
            actions: [
              IconButton(
                icon: Icon(Icons.notifications),
                onPressed: () {},
              ),
            ],
          ),
          body: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Gender(
                      genderIcon: Icons.male,
                      genderTxt: 'MALE',
                      onPress: () {
                        setState(() {
                          selectedGender = Genders.male;
                        });
                      },
                      colour: selectedGender == Genders.male
                          ? Colors.blueGrey
                          : Colors.black45),
                  Gender(
                    genderIcon: Icons.female,
                    genderTxt: 'FEMALE',
                    onPress: () {
                      setState(() {
                        selectedGender = Genders.female;
                      });
                    },
                    colour: selectedGender == Genders.female
                        ? Colors.blueGrey
                        : Colors.black45,
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Expanded(
                child: CalculationInfo(
                    dataInput: 'Weight (kg)',
                    userData: weight.toString(),
                    minusFunction: () {
                      setState(() {
                        weight--;
                      });
                    },
                    plusFunction: () {
                      setState(() {
                        weight++;
                      });
                    }),
              ),
              SizedBox(
                height: 10,
              ),
              Expanded(
                child: CalculationInfo(
                    dataInput: 'Height (cm)',
                    userData: height.toString(),
                    minusFunction: () {
                      setState(() {
                        height--;
                      });
                    },
                    plusFunction: () {
                      setState(() {
                        height++;
                      });
                    }),
              ),
              SizedBox(
                height: 10,
              ),
              Expanded(
                child: CalculationInfo(
                    dataInput: 'Age',
                    userData: age.toString(),
                    minusFunction: () {
                      setState(() {
                        age--;
                      });
                    },
                    plusFunction: () {
                      setState(() {
                        age++;
                      });
                    }),
              ),
              SizedBox(
                height: 15,
              ),
              Expanded(
                child: MaterialButton(
                  splashColor: Colors.white60,
                  padding: EdgeInsets.symmetric(vertical: 5, horizontal: 70),
                  color: Colors.blueGrey[600],
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18),
                  ),
                  onPressed: () {
                    Calculator calc =
                        Calculator(height: height, weight: weight);

                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Result(
                          resultNum: calc.Calculation(),
                          result: calc.CalcResult(),
                          message: calc.CalcFeedback(),
                        ),
                      ),
                    );
                  },
                  child: Text(
                    'Calculate!',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 50,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
