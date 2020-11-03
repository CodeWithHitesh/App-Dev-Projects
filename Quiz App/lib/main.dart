// Flutter Package.
import 'package:flutter/material.dart';

// To load another widget/file into this.
import './Quiz.dart';
import './Result.dart';

//void main() {
//  runApp(MyApp());
//}

void main() => runApp(MyApp());

/*
class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Text('Hello!...'),
    );
  }
}
 */

/*
  Scaffold is a class in flutter which provides many widgets or we can
  say APIs like Drawer, SnackBar, BottomNavigationBar, FloatingActionButton,
  AppBar etc. ... Scaffold will provide a framework to implement the basic
  material design layout of the application.
*/

/*
class MyApp extends StatelessWidget {

  void correctAnswer(){
    print("Correct Answer!");
  }

  void wrongAnswer(){
    print("Incorrect Answer!");
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\'s your favorite color?',
      'What\'s your favorite animal?',
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(
          children: [
            Text('The Question!'),
            RaisedButton(
              child: Text('Answer 1'),
              onPressed: correctAnswer,
            ),
            RaisedButton(
              child:  Text('Answer 2'),
              onPressed: () => print('Wrong answer!'),
            ),
            RaisedButton(
              child: Text('Answer 3'),
              onPressed: () {
                // ....
                print('You seem lucky');
              },
            ),
          ],
        ),
      ),
    );
  }
}
*/
/*
    A widget is either stateful or stateless. If a widget
    can change—when a user interacts with it, for example—it's stateful.
    A stateless widget never changes. ... A widget's state is stored in a
    State object, separating the widget's state from its appearance.

    An example of stateless widget would be the inbuilt widget i.e text where
    we only pass in input and get required output. The widget won't change
    internally.
    But for stateful widget on click or something the internal changes too.

 */

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    // throw UnimplementedError();
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  int _totalScore = 0;

  void correctAnswer() {
    print("Correct Answer!");
  }

  void _resetQuiz(){
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    /*
        Calling setState notifies the framework that the internal state of this
        object has changed in a way that might impact the user interface in this
        subtree, which causes the framework to schedule a build for this State
        object.
        If you just change the state directly without calling setState, the
        framework might not schedule a build and the user interface for this
        subtree might not be updated to reflect the new state.
        Naming anything with underscore makes it private and won't be accessible
        in another file.
     */
//      if(_questionIndex == 2){
//        setState(() {
//          _questionIndex=0;
//        });
//      }
        _totalScore += score;
//      else{
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
//      }

    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
/*
      We create a map here which is a complex object by which we can keep questions
      and answers together by assigning keys to them.
 */
    var questions = [
      {
        'questionText': 'Who was the india’s first person in the space??',
        'answers': [
          {'text':'Rajesh Sharma','score': 0}, {'text':'Rakesh sharma','score':0}, { 'text':'Kalpana chawla',
          'score':1}, {'text':'Sunita williams','score':0}],
      },
      {
        'questionText': 'Heart is made up of:',
        'answers': [{'text':'Non-Striated muscle','score': 0}, {'text':'Cardiac muscle','score':1},
          {'text':'Adipose Tissue','score':0}, {'text':'Striated Muscle','score':0}],
      },
      {
        'questionText': 'Where does the digestion of protein starts in our body?',
        'answers': [{'text':' Mouth','score':0}, {'text':'Stomach','score':1},
          {'text':'Duodenum','score':0}],
      },
      {
        'questionText': 'If the radius of the earth is reduced by half, then the day-night on the earth would be of:',
        'answers': [{'text':'6 hrs','score':1}, {'text':'12 hrs','score':0},
          {'text':'18 hrs','score':0}, {'text':'36 hrs','score':0}],
      },
      {
        'questionText': 'Which of the following planet is the nearest to the earth?',
        'answers': [{'text':'Mercury','score':0}, {'text':'Venus','score':1},
          {'text':'Mars','score':0},{'text':'36 hrs','score':0}],
      },
      {
        'questionText': 'A dice is thrown. Probability of getting an even number?',
        'answers': [{'text':'2/3','score':0}, {'text':'1','score':0},
          {'text':'5/6','score':0},{'text':'1/2','score':1}],
      },
      {
        'questionText': 'What is the probability of getting 53 Mondays in a leap year?',
        'answers': [{'text':'1/7','score':0}, {'text':'53/366','score':0},
          {'text':'2/7','score':1},{'text':'7/366','score':0}],
      },
      {
        'questionText': 'If the arithmetic mean of x, x + 3, x + 6, x + 9 and x + 12 is 10, then x = ?',
        'answers': [{'text':'1','score':0}, {'text':'2','score':0},
          {'text':'6','score':0},{'text':'4','score':1}],
      },
      {
        'questionText': 'If the mean of first n natural numbers is 5n/9, then n =?',
        'answers': [{'text':'6','score':0}, {'text':'7','score':0},
          {'text':'9','score':1},{'text':'10','score':0}],
      },
      {
        'questionText': 'The value of (tan1° tan2° tan3° ... tan89°) is:',
        'answers': [{'text':'0','score':0}, {'text':'1','score':1},
          {'text':'2','score':0},{'text':'1/2','score':0}],
      },
    ];
//    print(questions.runtimeType);
    /*
       Difference between constant and final:
          A final variable can be set only once; a const variable is a
          compile-time constant.
          final is run-time constant, but at time of writing code we don't know what
          the final value will be.
          All var's are constant only; everything which
       */

    /*
    This makes the value constant, not the object.
      var  dummy = const ['Hello'];
      dummy=[];   Works
      dummy.add['Hye']; Error
    */

    /*
    Dummy can now get new value entered but the address needs to stay same.
      final  dummy =  ['Hello'];
      dummy.add('Hey');   // Works.
      dummy=[];           // Error.
      print(dummy);
    */

    /*
    Both gives an error.
    This also shows that using const before var name protects both the
    variable and value assigned.
      const dummy = ['Hello'];
      dummy=[];
      dummy[0]='Hi';
    */

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: _questionIndex < questions.length
            ? Quiz(questions , _questionIndex , _answerQuestion)
            : result(_totalScore,questions.length,_resetQuiz)
      ),
    );
  }
}

