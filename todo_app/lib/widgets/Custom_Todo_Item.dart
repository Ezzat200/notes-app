
import 'package:flutter/material.dart';
import 'package:todo_app/views/Edit_Todo_View.dart';

class TodoItem extends StatelessWidget {
  const TodoItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context){
          return const EditTodoView();
        }));
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: Container(
          padding: const EdgeInsets.only(top: 24, left: 16,bottom: 24),
          decoration: BoxDecoration(
           color: const Color(0xffFFCD7A),
           borderRadius: BorderRadius.circular(16)
        
          ),
          child: Column(
            
            crossAxisAlignment: CrossAxisAlignment.end,
            children:  [
              ListTile(
                
                title: const Text('data',style: TextStyle(color: Colors.black,fontSize: 24),),
        
                
                subtitle:  Padding(
                  padding:  const EdgeInsets.symmetric(vertical: 16),
                  child: Text('data',style: TextStyle(color: Colors.black.withOpacity(0.4),fontSize: 24),),
                ),
                trailing: IconButton(onPressed: (){}, icon: const Icon(Icons.delete,size: 30,color: Colors.black,)),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 24),
                child: Text('may 12,2022',style: TextStyle(color: Colors.black.withOpacity(0.4),fontSize: 16),),
              )
            ],
          ),
        ),
      ),
    );
  }
}
