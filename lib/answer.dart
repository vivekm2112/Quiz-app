import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectHandler;
  final String answerText;

  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      //  color: ,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          onPrimary: Colors.white,
          shadowColor: Colors.black,
          elevation: 25,
          side: BorderSide(color: Colors.grey, width: 2),
        ),
        onPressed: selectHandler,
        child: Text(answerText),
      ),
    );
  }
}
