import 'package:flutter/material.dart';
class SplashScreen1 extends StatefulWidget {
const SplashScreen1({Key? key}) : super(key: key);
@override
_SplashScreenState createState() => _SplashScreenState();
}
class _SplashScreenState extends State<SplashScreen1> {
@override
Widget build(BuildContext context) {
return Scaffold(
body: Container(
width: MediaQuery.of(context).size.width,
height: MediaQuery.of(context).size.height,
child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
Image.asset("images/pharmatech.png"),
SizedBox(
height: 100,
),
Padding(
padding:
const EdgeInsets.only(top: 50, left: 25, right: 25, bottom: 16),
child: Text(
"PharmTech",
textAlign: TextAlign.center,
style: TextStyle(fontSize: 28, fontWeight: FontWeight.w600),
),
),
Text(
" Now its so easy to make your appointment with your doctor",
style: TextStyle(fontSize: 16, fontWeight: FontWeight.w300),
),
SizedBox(height: 60),
TextButton(onPressed: () {
           Navigator.pushNamed(context,"/splash2");
          }, child: Text("Get Started!"))
]
),
),
);
}
}