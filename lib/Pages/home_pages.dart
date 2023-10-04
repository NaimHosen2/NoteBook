import 'package:flutter/material.dart';

import 'drawer_pages.dart';

class HomePages extends StatefulWidget {
  const HomePages({super.key});

  @override
  State<HomePages> createState() => _HomePagesState();
}

class _HomePagesState extends State<HomePages> {
  List<String>? nameList;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    nameList=[];
    nameList?.add!("Md.Naim Hosen");
    nameList?.add!("Md.Nahid Hosen");
  }
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
        body: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              Row(
                children: [
                  Icon(
                    Icons.menu_book,
                    size: 20,
                  ),
                  SizedBox(
                    width: 2,
                  ),
                  Text(
                    "Hello ",
                    style:
                        TextStyle(fontSize: 15, fontWeight: FontWeight.normal),
                  ),
                  SizedBox(
                    width: 2,
                  ),
                  Text(
                    "MD.Naim Hosen ",
                    style:
                        TextStyle(fontSize: 15, fontWeight: FontWeight.normal),
                  ),
                  // SizedBox(width:2,),
                  // Text("Good Morning ",style: TextStyle(fontSize: 15,fontWeight: FontWeight.normal),)
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                child: TextField(
                  onChanged: (value) {},
                  decoration: InputDecoration(
                      hintText: "Search by name",
                      hintStyle: TextStyle(color: Colors.white),
                      fillColor: Colors.white,
                      filled: true,
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.black12),
                          borderRadius: BorderRadius.all(Radius.circular(10)))),
                ),
              ),
              SizedBox(height: 5,),
              Expanded(
                  child: ListView.separated(
                      separatorBuilder: (context, index) {
                        return SizedBox(
                          height: 6,
                        );
                      },
                      itemCount:nameList!.length,
                      itemBuilder: (
                        context,
                        index,
                      ) {
                        String name=nameList![index];
                        return Padding(
                          padding: EdgeInsets.only(left: 5, right: 5),
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: Colors.white,
                                border: Border.all(
                                    width: 1, color: Colors.black26)),
                            child: Padding(
                              padding: EdgeInsets.all(6),
                              child: Row(
                                children: [
                                  Expanded(
                                      child: Column(
                                    children: [
                                      Text(
                                      nameList![index],
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15),
                                      ),
                                      Text(
                                        "Here is my content",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.normal,
                                            fontSize: 15),
                                      ),
                                      Text(
                                        "03 October 2023",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.normal,
                                            fontSize: 15),
                                      ),
                                    ],
                                  ),
                                  ),
                                  PopupMenuButton(
                                    padding:EdgeInsets.zero,
                                      onSelected: (value){},
                                      icon: Icon(Icons.more_vert),
                                      itemBuilder: (context){
                                      return [
                                        PopupMenuItem(
                                            value: "edit",
                                            child: ListTile(
                                          leading: Icon(Icons.edit),
                                          title: Text("Update"),
                                        )),
                                        const PopupMenuItem(
                                            value: "Delete",
                                            child: ListTile(
                                          leading: Icon(Icons.delete),
                                          title: Text("Delete"),
                                        ))
                                      ];

                                  })
                                ],
                              ),
                            ),
                          ),
                        );
                      }))
            ],
          ),
        ),
      ),
    );
  }
}
