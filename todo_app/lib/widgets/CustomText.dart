import 'package:flutter/material.dart';
import 'package:todo_app/constans.dart';

class CustomText extends StatelessWidget {
  
  CustomText({this.hintText,this.maxlines=1 });
String ?hintText;
int ?maxlines;
  @override
  Widget build(BuildContext context) {
    return  TextField(
      
      
     maxLines: maxlines,
      decoration: InputDecoration(
        
        hintText: hintText,

        hintStyle: const TextStyle(color:kPrimaryColor,fontSize: 20),
        border:  OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(
              color: Colors.white
          ),
          
        ),
        enabledBorder: OutlineInputBorder(
           borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(
            color: Colors.white
          ),
          
          
        ),
        focusedBorder:  OutlineInputBorder(
           borderRadius: BorderRadius.circular(10),
          borderSide:const BorderSide(
            color: kPrimaryColor
          ),
      ),
      
    ));
  }
}
