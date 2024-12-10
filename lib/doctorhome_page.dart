import 'package:flutter/material.dart';
class DoctorhomePage extends StatefulWidget {
  const DoctorhomePage({ Key? key }) : super(key: key);
  @override
  _DoctorhomePageState createState() => _DoctorhomePageState();
}
class _DoctorhomePageState extends State<DoctorhomePage> {
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
                "Patient Details",
                style: TextStyle(fontSize: 32,fontWeight: FontWeight.w600),
              ),
              SizedBox(height: 25,),
              Text("Enter the patient name or ID"),
              TextFormField(
                decoration: InputDecoration(
                  hintText: "Name or ID",
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(8))),
              ),
            ],
          ),
          TextButton(onPressed: () {}, child: Text("Serach"))
         ]),
       ), 
      ),
    );
  }
}