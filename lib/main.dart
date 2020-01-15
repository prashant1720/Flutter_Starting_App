import 'package:flutter/material.dart';
void main() {
  runApp(
      MyApp()); 
    
  }
<<<<<<< HEAD
=======
// runApp() will prompt flutter to run and draw something on the screen and flutter will  call build method and build method will // create the MyApp widget on the screen// build method return new widget which need to be drawn on the screen// since flutter calls build method hence its flutter responsibility to provide the context argument of BuildContext type to it
// Instead of this main method implementation we can this also
// void main() => runApp(MyApp());                    
// This single level implementation comes  default in code shown when you create a new Project since we have created the project from scratch .lets understand this also it means when function has only one instruction to execute we can write it like this

// Each class has to extend atleast statelesswidget or statefull widget which are classes which helps in basic ui development
// 
//line 27: @overide is a decorator it is just use to make code little clear its not mandiatory but good to add
// return MaterialApp(home: Text('Hello!'));
// at line 36: appbar:Appbar() here Appbar is a Prebuilt widget Present in Material.dart which can be use to create appbar
// we have created a list name questions of string type at line 30
>>>>>>> f645cb50eb775d1743cdb3df01b8a632656abb2e

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
<<<<<<< HEAD
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
=======
  Widget build(BuildContext context) {

    var questions = [
      'What\'s your favourite color?',  // okay you might be thinking what is a need to write a backward slash in 'what\'s because we are writing two single qotes so we dont write in this way string will end here and we cant enter words so by doing this we tell compiler the this quote is a part of word 
      'What\'s your favourite animal'
    ];
    return MaterialApp(
        home: Scaffold(                // scafold is the widget which gives basic ui to your app like blue color to appbar a white screen basucally makes a simple ui for u
      appBar: AppBar(
        title: Text('My First App'),
      ),                              // body is the center white screen visible to user
      body: Column(                   // since body cant take more then one widget we used a predefined widget called columm which can now hold multiple value in a columm but remember we are passing a columm only which is still a single widget but it can hold multiple values
        children: [
          Text('The question'),
          RaisedButton(
            child: Text('Answer1'),
            onPressed: answers,
          ),
          RaisedButton(                 // On pressed can have two type of function : named function and Anonymous function lets see both of there implementation
            child: Text('Answer 2'),    // *****This is named function use with onPressed****** //
            onPressed: answers,        // here you might be thinking if i am calling the answer function then why didn't i have written answers(); this way because a 
                                       // dart program is compiled top to down and when the statement is executed function is also called there which we did  not want and which is actually wrong without pressing the button how can that function be called 
                                       // so we make a pointer a kind of refferene by just writing the name but not the function which will in turn call the function when the button is pressed
                                       // onpressed: answers() This means value of onpressed is what answer function returns this is actually return internally as onpressed=answers()
                                       // but  we dont want to store value return by answers() to be stored in onpressed which is even technically wrong as onpressd is kind of event we want on answers() to be called when button is pressed hence we write only reffrence of the funtion
                                       // onPressed wants a function but we are returning value of our function and when we see defenation of our function we are returning nothing which means we are passing null so it will cause error
                                       // hence we created the refference to the function
                                       // so we are passing name of the function which should be called but not the value of the function now
          ), 
>>>>>>> f645cb50eb775d1743cdb3df01b8a632656abb2e
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
