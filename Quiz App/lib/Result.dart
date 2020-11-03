import 'package:flutter/material.dart';

class result extends StatelessWidget{
  final int score;
  final int totalQue;
  final Function resetQuiz;
  result(this.score,this.totalQue,this.resetQuiz);

  String get greeting {
    var temp;
    if(score>=9) {
      temp = 'Congrats,';
    } else if(score>=6) {
      temp = 'Great, ';
    } else if(score>=5) {
      temp = 'You can do it ';
    }else {
      temp = 'You need to work hard.\n';
    }
    return temp;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
        Text(
            greeting + 'You scored ${score.toString()} marks out of ${totalQue.toString()}.'
            ,style: TextStyle(fontSize: 25 ,fontWeight: FontWeight.bold),
            textAlign:TextAlign.center
        ),
        FlatButton(
          child: Text(
              'Click me to restart Quiz!',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold,color: Colors.blue,),
          ),

          onPressed:resetQuiz,),
      ]
      )
      );
  }

}