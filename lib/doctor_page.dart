import 'package:flutter/material.dart';
class DoctorPage extends StatefulWidget {
  const DoctorPage({ Key? key }) : super(key: key);
  @override
  _DoctorPageState createState() => _DoctorPageState();
}
class _DoctorPageState extends State<DoctorPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
       width: MediaQuery.of(context).size.width,
       height: MediaQuery.of(context).size.height,
       child: Padding(
         padding: const EdgeInsets.only(left: 50,right: 50),
         child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Image.asset("images/pharmatech.png",width: 160,height: 160,
          ),
          SizedBox(height: 50,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text( 
                "Welcome",
                style: TextStyle(fontSize: 32,fontWeight: FontWeight.w600),
              ),
              SizedBox(height: 25,),
              Text(
                "Welcome back please enter your credentials to get access to your account",
                style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400,color: Color.fromRGBO(138, 144, 162, 1) ),
              ),
              SizedBox(height: 25,),
              Text("Enter Doctor ID"),
              TextFormField(
                decoration: InputDecoration(
                  hintText: "123FT45",
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(8))),
              ),
              SizedBox(height: 25,),
              Text("Enter Password"),
              TextFormField(
                decoration: InputDecoration(
                   hintText: "Password",
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(8))),
              ),
              SizedBox(height: 25,),
            ],
          ),
          TextButton(onPressed: () {
            Navigator.pushNamed(context,"/doctorhome");
          }, child: Text("Login")),
          SizedBox(height: 25,),
         ]),
       ), 
      ),
    );
  }
}