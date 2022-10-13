import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    String resultText;
    if (resultScore == 30) {
      resultText = 'Awesome!!! Buy a chocolate as your reward... <3';
    } else if (resultScore == 0) {
      resultText = 'I sentence you for 100 years for only having khichdi!!! ';
    } else {
      resultText = 'Better know me more NEXT TIME!!!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          TextButton(
            style: TextButton.styleFrom(
              primary: Colors.blue[800],
              shadowColor: Colors.black,
              backgroundColor: Colors.yellow[100],
              elevation: 5,
            ),
            onPressed: resetHandler, 
            child: Text('Restart Quiz')
          ),
        ],
      ),
    );
  }
}
