import 'package:flutter/material.dart';
import 'package:tp06/components/listViewItem.dart';
import 'package:tp06/model/jour.dart';
import 'package:tp06/screenDetaile.dart';

class Screen1 extends StatelessWidget {
    Screen1({super.key, });
  List<jour> myList = [jour(nom: "lundi", description: "taches a faire le "),
  jour(nom: "Mardi", description: "taches a faire le "),
  jour(nom: "Mercredi", description: "taches a faire le "),
  jour(nom: "jeudi", description: "taches a faire le "),
  jour(nom: "Vendredi", description: "taches a faire le "),
  jour(nom: "Samedi", description: "taches a faire le "),
  jour(nom: "dimanche", description: "taches a faire le "),
  
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: ListView.separated(
        itemCount: myList.length,
        itemBuilder:(context,i){
          return ListTile(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>ScreenDetaile(title: myList[i].nom, description: 'taches à faire le ' + myList[i].nom, letre: myList[i].nom[0])));
            },
            title: Text(myList[i].nom, style: TextStyle(fontSize: 30)),
       subtitle: Text('taches à faire le ' + myList[i].nom),
       leading: CircleAvatar(
        backgroundColor: Color.fromARGB(255, 55, 1, 126),
        child: Text(
         myList[i].nom[0]
           , 
         style: TextStyle(
          fontSize: 25,
          color: Colors.orange,
         ),
        ))
            );
         
        },
        separatorBuilder:(context,position){
       return Container(
       color:Colors.orange,
       child:Icon(
        Icons.add_a_photo,
       ));    }, 
        
      ),
    );
  }
}