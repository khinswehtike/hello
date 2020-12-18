import 'package:coffee_shop/home_page.dart';
import 'package:flutter/material.dart';

class OnBoarding extends StatefulWidget {
  @override
  _OnBoardingState createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  List<Map<String,dynamic>> data=[
    {"title":"Coffee Espresso",
    "description":"Very Strong coffee for this day",
    "background":Colors.blueAccent,
    "image":"c1.png"},
     {"title":"Coffee 2 Plus One",
    "description":"Very Strong coffee for this day",
    "background":Colors.yellowAccent,
    "image":"c2.png"},
     {"title":"Coffee 3 Plus One",
    "description":"Very Strong coffee for this day",
    "background":Colors.greenAccent,
    "image":"c1.png"},
  ];
   var index=0;
  @override
  Widget build(BuildContext context) {
    var page=data[index];
   
    var bg=page["background"];
    var image=page["image"] as String;
    return Scaffold(
      backgroundColor: bg,
      body:  Column(
         children: [

Expanded(
  flex: 2,
  child: Image.asset("assets/$image")),
   Expanded(flex: 1,child: Column(children: [
     Text(page['title']),
      Text(page['description']),
   ],),),

   Expanded(child: FlatButton(
     child: Text('Next'),
     onPressed: (){
       if(index<(data.length-1)){
        
         setState(() {
            index++;
         });
       }else{
         Navigator.of(context).pushReplacement(MaterialPageRoute(builder:(context){return HomePage();} ));
       }
     },
   
   ),)
       ],),
      

      
      
    );
  }
}