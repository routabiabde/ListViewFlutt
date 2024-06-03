import 'package:flutter/material.dart';

class listViewItem extends StatelessWidget {
  const listViewItem({super.key,required this.title,required this.description,required this.letre});
  final String title;
  final String description;
  final String letre;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 70,
       
      child:  Padding(
        padding: EdgeInsets.all(10),
        child: Row(
          children: [
            CircleAvatar(
              child: Center(
                child: Text(letre,style: TextStyle(
                  color: Color.fromARGB(255, 255, 123, 7)
                ),),
              ),
              backgroundColor: Color.fromARGB(255, 28, 8, 104),
            ),
            SizedBox(
              width: 12,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                 Text(title,style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold
                 ),),
                 Text(description,style: TextStyle(
                  fontSize: 12,
                  
                 ),),
        
              ],
            )
          ],
        ),
      ),

    );
    
  }
}