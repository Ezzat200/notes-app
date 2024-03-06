import 'package:flutter/material.dart';
import 'package:todo_app/constans.dart';

class CustomText extends StatelessWidget {
  
  CustomText();

  @override
  Widget build(BuildContext context) {
    return  TextFormField(
      
      
     
      decoration: InputDecoration(
        
        hintText: 'Titel',
        
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
