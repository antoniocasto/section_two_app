import 'package:flutter/material.dart';

import 'app_screens/home.dart';

void main(){
  runApp(MaterialApp(
    title: "Exploring UI widgets",
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      //appBar: AppBar(title: Text("ListView semplice"),),
      //body: getListView(),

      appBar: AppBar(title: Text("Long List"),),
      body: getListView(),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            debugPrint("Floating action button premuto");
          },
        child: Icon(Icons.add),
        tooltip: 'Add One More Item', //se tengo premuto compare questo messaggio
      ),
    ),
  ));
}

void showSnackBar(BuildContext context, String item){
  var snackBar = SnackBar(
    content: Text("Hai premuto: $item"),
    action: SnackBarAction(
        label: "UNDO",
        onPressed: (){
          //azione eseguita premendo UNDO
          debugPrint("Premuto UNDO");
        }
    ),
  );
  
  Scaffold.of(context).showSnackBar(snackBar);
}

List<String> getListElements(){
  
  var items = List<String>.generate(100, /*funzione gemeratore della stringa*/ (counter)=> "Item $counter");
  return items;
}

Widget getListView(){

  //Da trasformare
  var listItems = getListElements();

   var listView = ListView.builder(
       itemBuilder: (context, index) {
         //construisco l'item della lista
         return ListTile(
           leading: Icon(Icons.arrow_right),
           title: Text(listItems[index]),
           onTap: (){
             //debugPrint("${listItems[index]} è stato premuto");
             showSnackBar(context, listItems[index]);
           },
         );
       }
   );
   return listView;
}


//Widget getListView(){ Per liste di pochi elementi -> tanta memoria
//
//  var listView = ListView(
//    children: <Widget>[
//
//      ListTile(
//        leading: Icon(Icons.landscape),
//        title: Text("Landscape"),
//        subtitle: Text("Beautiful View !"),
//        trailing: Icon(Icons.wb_sunny),
//        onTap: (){
//          debugPrint("Premuto Landscape");
//        },
//      ),
//      ListTile(
//        leading: Icon(Icons.laptop_chromebook),
//        title: Text("Windows"),
//      ),
//      ListTile(
//        leading: Icon(Icons.phone),
//        title: Text("Phone"),
//      ),
//      Text("Un altro eleento"),
//      Container(color: Colors.red,height: 50.0,)
//    ],
//  );
//
//  return listView;
//}