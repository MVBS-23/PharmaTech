import 'package:flutter/material.dart';
class SplashScreen2 extends StatefulWidget {
 const SplashScreen2 ({Key? key}) : super(key: key);
 @override
 _SplashScreenState createState() => _SplashScreenState();
}
class _SplashScreenState extends State<SplashScreen2> {
 @override
 Widget build(BuildContext context) {
 return Scaffold(
 body: Container(
 width: MediaQuery.of(context).size.width,
 height: MediaQuery.of(context).size.height,
 child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [

 Row(mainAxisAlignment: MainAxisAlignment.end,
 children: [
 TextButton(onPressed: (){
 Navigator.pushNamed(context, "/doctor");
 }, child: Text("Doctor login")),
 TextButton(onPressed: (){
 Navigator.pushNamed(context,"/adminpage");
 }, child: Text("Admin page")),
 ],
 ),
 Image.asset("images/pharmatech.png",width: 200,height:200),
 SizedBox(
 height: 100,
 ),
 Padding(
 padding:
 const EdgeInsets.only(top: 10, left: 10, right: 10, bottom: 10),
 child: Text(
 "PharmaTech",
 textAlign: TextAlign.center,
 style: TextStyle(fontSize: 28, fontWeight: FontWeight.w600),
 ),
 ),
 Text(
 '"Excellence in health care every time"',
 style: TextStyle(fontSize: 16, fontWeight: FontWeight.w300),
 ),
 SizedBox(height: 50),
 TextButton(onPressed: () {
            Navigator.pushNamed(context,"/login");
          }, child: Text("Login")),
          SizedBox(height: 25,),
          TextButton(onPressed: () {
           Navigator.pushNamed(context,"/signup");
          }, child: Text("Sign Up"))
 ]
 ),
 ),
 );
 }
}