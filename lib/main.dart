import 'package:flutter/material.dart';
void main() {
  runApp(
      MyApp()); 
    
  }

class MyApp extends StatefulWidget { 
                                                      //****here we are going to understand what are stateless and statefull widgets */
   @override
  State<StatefulWidget> createState() {
    
    return MyAppState(); // here we created a new object of MyAppState class
  }                                                    // we can pass data from outside the class to the Stateless widget using constructor 
  }                                                    // and then flutter will rebuild that widget. when that external data will change
                                                       // notes is that there will be no change in data inside stateless widget only you can pass data from outside
class MyAppState extends State<MyApp>{
  var questionIndex = 0;                               // **Stateful widget class ** //
  void answers() {                                     //  here data can be passed from outside the class(statefull widget class) to statefull class using the constructor +
    questionIndex = questionIndex +1;                  // there is a intenal state pressent in the widget class which can be change which means internal data can be changed
    print(questionIndex);                              // so now what happens is that will rebuild the widget in both the scenerio if data is send from outside or if data is changed in internal state
                                                      // Its get re-rendered when Input data or local state change
                                                    
  }
  @override 
  Widget build(BuildContext context) {                  //So now u might think why are we actually talking about this concept . its because in our quiz app we wanted that when we press the button a new text should be displayed from the question list which we have
                                                        // so i know your smart mind might be thinking cant i simply rename that StatelessWidget class with stateful class and everything is over
    var questions = [                                   // for this i would say no just renaming will not help  like this    class MyApp extends StatefulWidget  // if this is not the solution so what should we do now
      'What\'s your favourite color?',                  // just try refract ctrl+shift+r or left click on  StatelessWidget 
      'What\'s your favourite animal'                   // when i did that it told me to convert it Statefulwidget lets achieve this in steps
    ];                                                  //1.  Rename -> Statelesswidget to StatefullWidget
    return MaterialApp(                                 //            --->okay so one thing to keep in mind StatefullWidget is collection of two class
        home: Scaffold(                                 //  class MyApp extends StatefulWidget { }
      appBar: AppBar(                                   //  class MyAppState extends State {} // here State is a generic class pressent in Material.dart Package
        title: Text('My First App'),                    // okay so lets understand why we made this second class or why we want these two classes to achieve StatefulWidget
                                                        // so MyApp class state changes when new data is send using the constructor of this class and flutter ui is re-rendered to show the change in state 
      ),                                                // but MyAppState class state is Persistant it does not change it atteched to the element in ui which u see but unlike that class its not recreated so when the text changes and external data is passed to the above class only that data is rebuild are data in MyAppState does not change
      body: Column(                                     // now we need to set up the connection between MyAppState class and MyApp class [dont go in the missconception that MyAppState & MyApp have simillar naming then they will connect automatically ]
        children: [                                     // since State is a generic class so we need to add angular brackets here State<>
          Text(questions[questionIndex]),               // State to point to my MyApp class so we will create a pointer to it State<MyApp> now its pointing to MyApp class => lets see final instruction down
          RaisedButton(                                 // class MyApp extends StatefulWidget {
                                                        //  @overide
                                                        // State<StatefulWidget> createState() {} //just write createState and press enter in hint it wil generate code for u
                                                                                 //    }
            child: Text('Answer1'),//
            onPressed: answers,
          ),
          RaisedButton(                 // On pressed can have two type of function : named function and Anonymous function lets see both of there implementation
            child: Text('Answer 2'),    
            onPressed: answers,        
                                       
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
