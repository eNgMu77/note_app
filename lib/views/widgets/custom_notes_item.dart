import 'package:flutter/material.dart';

class NotesItem extends StatelessWidget {
  const NotesItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 25,bottom: 25),
      decoration: BoxDecoration(
        color: Color(0xffFFCC80),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            title: Text('Flutter Tips', style: TextStyle(color: Colors.black,fontSize: 30)),
            
            subtitle: Padding(
              padding: const EdgeInsets.only(top: 16),
              child: Text(
                'Build your career with Muhammed Ahmed',
                style: TextStyle(color: Colors.black.withOpacity(0.5),fontSize: 18),
              ),
            ),
            trailing: IconButton(
              onPressed: () {},
              icon: Icon(Icons.delete, color: Colors.black,size: 30,),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 24,top: 16),
            child: Text('May 5 , 2025',style: TextStyle(color: Colors.black.withOpacity(.5),fontSize: 15),),
          )
        ],
      ),
    );
  }
}
