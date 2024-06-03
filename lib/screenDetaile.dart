import 'package:flutter/material.dart';

class ScreenDetaile extends StatelessWidget {
   const ScreenDetaile({super.key,required this.title,required this.description,required this.letre});
  final String title;
  final String description;
  final String letre;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
                CircleAvatar(
                  child: Center(
                    child: Text(letre,style: TextStyle(
                      color: Color.fromARGB(255, 255, 123, 7)
                    ),),
                  ),
                  backgroundColor: Color.fromARGB(255, 28, 8, 104),
                ),
                 Text(title,style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                     ),),
                     Text(description,style: TextStyle(
                      fontSize: 12,
                      
                     ),),
            ],
          ),
        ),
      ),
    );
  }
}