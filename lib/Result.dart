import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  Result(
      {required this.result, required this.resultNum, required this.message});

  final String result;
  final String resultNum;
  final String message;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: MaterialApp(
        theme: ThemeData.dark(),
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(
                  height: 5,
                ),
                Text(
                  'Your result is',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 50,
                  ),
                ),
                Container(
                  height: 500,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        result,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                            color: Colors.purple[900]),
                      ),
                      Text(
                        resultNum,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 100,
                        ),
                      ),
                      Text(
                        message,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                        ),
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(11),
                    color: Colors.blueGrey[400],
                  ),
                ),
                MaterialButton(
                  splashColor: Colors.white60,
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 60),
                  color: Colors.blueGrey[600],
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18),
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    'TRY AGAIN!',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 50,
                    ),
                  ),
                ),
                SizedBox(height: 5)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
