
import 'package:flutter/material.dart';

class TodoSearch extends StatelessWidget {
  const TodoSearch({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children:  [
       const Text('ToDo',style: TextStyle(fontSize: 30,),),
        
        
       const Spacer(flex: 2,),
        Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.05),
            borderRadius: BorderRadius.circular(16)
          ),
          child: const Icon(Icons.search,size: 30,),
        )
      ],
    );
  }
}