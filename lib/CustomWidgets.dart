import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

class Gender extends StatelessWidget {
  Gender(
      {required this.genderIcon,
      required this.genderTxt,
      required this.onPress,
      required this.colour});

  final String genderTxt;
  final IconData genderIcon;
  final VoidCallback onPress;
  final Color colour;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        padding: EdgeInsets.fromLTRB(65, 30, 65, 30),
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(11),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              genderIcon,
              size: 50,
            ),
            Text(genderTxt),
          ],
        ),
      ),
    );
  }
}

class CalculationInfo extends StatelessWidget {
  CalculationInfo(
      {required this.dataInput,
      required this.userData,
      required this.minusFunction,
      required this.plusFunction});

  final String dataInput;
  final String userData;
  final VoidCallback plusFunction;
  final VoidCallback minusFunction;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(40),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            dataInput,
            style: TextStyle(
                color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              MaterialButton(
                onPressed: minusFunction,
                child: Icon(LineIcons.minus),
                color: Colors.blueGrey[700],
                splashColor: Colors.white60,
                shape: CircleBorder(),
                height: 65,
              ),
              Text(
                userData,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 40,
                    fontWeight: FontWeight.bold),
              ),
              MaterialButton(
                onPressed: plusFunction,
                child: Icon(LineIcons.plus),
                color: Colors.blueGrey[700],
                splashColor: Colors.white60,
                shape: CircleBorder(),
                height: 65,
              )
            ],
          ),
        ],
      ),
    );
  }
}
