import 'package:flutter/material.dart';

import 'drawer_pages.dart';

class HomePages extends StatefulWidget {
  const HomePages({super.key});

  @override
  State<HomePages> createState() => _HomePagesState();
}

class _HomePagesState extends State<HomePages> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: Container(
          margin: EdgeInsets.only(bottom: 20, right: 20),
          child: FloatingActionButton(
            onPressed: () {},
            elevation: 100,
            child: Icon(Icons.add),
          ),
        ),
        appBar: AppBar(
          title: Text(
            "NoteBook",
            style: TextStyle(fontSize: 20),
          ),
          centerTitle: true,
        ),
        drawer: DrawerPages(),
        body:  Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              Row(
                children: [
                  Icon(Icons.menu_book,size:20,),
                  SizedBox(width:2,),
                  Text("Hello ",style: TextStyle(fontSize:15,fontWeight: FontWeight.normal),),
                  SizedBox(width:2,),
                  Text("MD.Naim Hosen ",style: TextStyle(fontSize: 15,fontWeight: FontWeight.normal),),
                  // SizedBox(width:2,),
                  // Text("Good Morning ",style: TextStyle(fontSize: 15,fontWeight: FontWeight.normal),)
                ],
              ),
              SizedBox(height: 10,),
              Container(
                child:TextField(
                  onChanged: (value){},
                  decoration: InputDecoration(
                    hintText: "Search by name",hintStyle: TextStyle(color: Colors.black12),
                    fillColor: Colors.blue.shade300,
                    filled:true,
                    focusedBorder: UnderlineInputBorder(
                       borderSide: BorderSide(
                         color: Colors.black12
                       ),
                      borderRadius: BorderRadius.all(Radius.circular(7))
                    )
                  ),
                ) ,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
