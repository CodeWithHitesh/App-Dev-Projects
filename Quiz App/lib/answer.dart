import 'package:flutter/material.dart';

class Answer extends StatelessWidget {

  final Function answerQuestion;
  final String answerText;

  Answer(this.answerQuestion,this.answerText);

  @override
  Widget build(BuildContext context) {

    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blue,
        textColor: Colors.white,
        child: Text(answerText),

        /*
        Color of the button will come grey as we have disabled the buttton
        by doing onPressed: null.
        RaisedButton(
            onPressed: () => {
            	//do something
                },
             child: new Text('Click me'),
         ),
         onPressed takes a function which takes in no argument.
         */
        onPressed: answerQuestion,
      ),
    );
  }
}