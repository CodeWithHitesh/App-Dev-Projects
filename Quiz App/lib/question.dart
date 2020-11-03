import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


/*
    Stateless Widget gets re-rendered only if input data changes.
    Stateful Widget gets re-rendered if either input data or state changes.
    Here input data is coming outside from widget not internal.

    The BuildContext is used to locate a particular widget in a widget tree
    and every widget has its own BuildContext i.e. a particular BuildContext is
    associated with only one widget.

 */


class Question extends StatelessWidget{

  /*
      A variable with the final keyword will be initialized at runtime and
      can only be assigned for a single time. In a class and function, you can
      define a final variable. For Flutter specific, when the state is updated,
      everything in the build method will be initialized again. This includes
      all the variables with final .
   */

  final String questionText;

  Question(this.questionText);

  @override
  Widget build(BuildContext context){
    return Container(
      margin: EdgeInsets.all(12),
      width: double.infinity,
        child: Text(
          questionText,
          style: TextStyle(fontSize: 28),
          textAlign: TextAlign.center,
        ),
    );
  }


}





