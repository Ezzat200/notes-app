
import 'package:flutter/material.dart';

class TodoSearch extends StatelessWidget {
  const TodoSearch({
   required this.Title, required this.icon,
  }); 
final String Title;
final IconData  icon;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(Title,style: const TextStyle(fontSize: 30,),),
        
        
       const Spacer(flex: 2,),
        Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.05),
            borderRadius: BorderRadius.circular(16)
          ),
          child:  Icon(icon,size: 30,),
        )
      ],
    );
  }
}