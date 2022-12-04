import "package:flutter/material.dart";

class Chats extends StatefulWidget {
  const Chats({Key? key}) : super(key: key);

  @override
  State<Chats> createState() => _ChatsState();
}







class _ChatsState extends State<Chats> {

  List person=[["person1.jpg",true,"Jordan","Hii","13:00",1],["person2.jpg",false,"Tim","","13:10",0],["person3.jpg",true,"James","Hii","13:10",10]];

  @override
  Widget build(BuildContext context) {
    return SliverList(

        delegate: SliverChildBuilderDelegate(
                (BuildContext context, index) {
              return Card(
                child: ListTile(
                  leading: CircleAvatar(
                    radius: 50,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                      child: Image.asset("assets/${person[index][0]}"),
                    ),
                  ),
                  title:Row(
                    children: [
                      Text("${person[index][2]}"),
                      person[index][1]?const Icon(
                          Icons.verified_rounded,
                          color: Colors.blueAccent,
                      ):const Text(""),
                    ],
                  ),
                  subtitle: Text("${person[index][3]}"),
                  trailing: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text("${person[index][4]}"),
                      person[index][5]>0?Container(
                        height:25,
                        width:25,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Colors.orangeAccent,
                          borderRadius:BorderRadius.circular(100)
                        ),
                        child: Text(person[index][5]<10?"${person[index][5]}":"9+",
                        style: TextStyle(fontSize: 10)),
                      ):Text(""),
                    ],
                  ),

                ),
              );
            },
            childCount: 3,

        )
    );
  }
}
