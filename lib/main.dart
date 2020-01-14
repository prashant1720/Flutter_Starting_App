import 'package:flutter/material.dart';

// I have imported material.dart Package because there are many essential features Present in it
// runApp function is present in Material.dart
// MaterailApp class is Present in the material.dart file
void main() {
  runApp(
      MyApp()); // runApp() will prompt flutter to run draw something on the screen and flutter will  call build method and build method will // create the MyApp widget on the screen// build method return new widget which need to be drawn on the screen// since flutter calls build method hence its flutter responsibility to provide the context argument of BuildContext type to it
}

// Instead of this main method implementation we can this also
// void main() => runApp(MyApp());                     // This single level implementation in default code shown when you create a new Project

// Each class has to extend atleast statelesswidget or statefull widget
// decorator is just to make code little clear its not mandiatory but good to add
  // return MaterialApp(home: Text('Hello!'));
  // its a Prebuilt widget Present in Material.dart which can be use to create appbar
// we have created a list questions ofstring type

class MyApp extends StatelessWidget {
  void answers() {
    print('This is my answer');
  }
  @override 
  Widget build(BuildContext context) {

    var questions = [
      'What\'s your favourite color?',
      'What\'s your favourite animal'
    ];
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('My First App'),
      ),
      body: Column(
        children: [
          Text('The question'),
          RaisedButton(
            child: Text('Answer1'),
            onPressed: answers,
          ),
          RaisedButton(                 // On pressed can have two type of function : named function and Anonymous function lets see both of there implementation
            child: Text('Answer 2'),    // *****This is named function use with onPressed****** //
            onPressed: answers,        // here you might be thinking if i am calling the answer function then why didn't i have written answers() this way because in 
                                       // dart program is compiled top to down and when the statement is executed function is also called there which we did  not want and which is actually wrong without pressing the button how can that function be called 
                                       // so we make a pointer a kind of refferene by just writing the name but not the function which will in turn call the function when the button is pressed
                                       // onpressed: answers() This means value of onpressed is what answer function returns this is actually return internally as onpressed=answers()
                                       // but  we dont want to store value return by answers() to be stored in onpressed which is even technically wrong as onpressd is kind of event we want on answers() to be called when button is pressed hence we write only reffrence of the funtion
                                       // onPressed wants a function but we are returning value of our function and when we see defenation of our function we are returning nothing which means we are passing null so it will cause error
                                       // hence we created the refference to the function
                                       // so we are passing name of the function which should be called but not the value of the function now
          ), 
          RaisedButton(
            child: Text('Answer 3'),
            onPressed: answers,
          ),
         RaisedButton(child: Text('Answer4'),
         onPressed:() =>print('This is answer 4 displaying Anonymous function'), // lets see how we can use a Anonymous function which actually means function without any name just curly braceses
                                                // above syntax was  when we only have one instrunction but for multiple we can even have
                                                // onpressed: () { 
                                                //                Print("Here any text") ...
                                                //                 }
         )                           
                                               
        ],
      ),
    ));
  }
}
