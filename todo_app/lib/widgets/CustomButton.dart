
import 'package:flutter/material.dart';
import 'package:todo_app/constans.dart';

class CustomButton extends StatelessWidget {
   CustomButton( {
    required this.text,
    this.ontap,  this.isloading=false
   });
   final bool isloading;
String text;
VoidCallback?ontap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
onTap: ontap,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 60,
        decoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.circular(8),
              
        ),
              
        child: Center(child: 
        isloading? const SizedBox(
          height: 24,
          width: 24,
          child: CircularProgressIndicator(
            color: Colors.black,
          )):
        Text( text,
        
        style: const TextStyle(fontSize: 20,color: Colors.black),)),
      ),
    );
  }
}
