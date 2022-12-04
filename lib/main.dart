import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:social_media_ui/homepage/chats.dart';
import 'package:social_media_ui/homepage/reels.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const socialMediaUI(),
    );
  }
}

class socialMediaUI extends StatefulWidget {
  const socialMediaUI({Key? key}) : super(key: key);

  @override
  State<socialMediaUI> createState() => _socialMediaUIState();
}

class _socialMediaUIState extends State<socialMediaUI> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(

        resizeToAvoidBottomInset: false,
        backgroundColor: Color(0xfffff6fa),

        appBar: AppBar(

          backgroundColor:Colors.transparent,
          bottomOpacity: 0.0,
          elevation: 0.0,

          leading: CircleAvatar(

            radius:50.0,
            backgroundColor: Colors.transparent,

            child: ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Image.asset("assets/images.jpg"),
            ),
          ),

          centerTitle: true,

          title:const Text(
                  "Puzzels",
                  style: TextStyle(
                  color: Color(0xffff90b1),
                ),
          ),


          actions: [
            IconButton(
                icon:const Icon(
                              Icons.tune,
                              color: Color(0xff727071),
                    ),
                    onPressed: (){
                             print("Settings");
                    },
              ),
          ],
        ),


        body:SingleChildScrollView(
        child:Column(
          mainAxisAlignment:MainAxisAlignment.spaceAround,
          children: [
            Container(
              height:200,
              child:Reels(),
            ),
            SizedBox(height:20),
            ConstrainedBox(
              constraints: BoxConstraints(
                minHeight: 300,
                maxHeight:500,
              ),

              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.white,
                ),
                child: CustomScrollView(
                  slivers: <Widget>[
                    SliverAppBar(
                      backgroundColor: Colors.transparent,
                      pinned: true,
                      centerTitle: true,
                      elevation: 25.0,

                      title: TextField(
                        decoration:InputDecoration(

                          prefixIcon: Icon(Icons.search,
                            size: 40,
                          ),
                          fillColor: Colors.white,
                          filled: true,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50),
                          ),
                          hintText: "Search",

                        ) ,
                      ),
                    ),
                    Chats(),
                  ],
                ),
              ),
            ),
          ],
        ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home_sharp,
                          color: Colors.black),
                label: 'Home'
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.add_circle_outline,
                            color: Colors.black),
                label: 'Web'),
            BottomNavigationBarItem(
                icon: Icon(Icons.calendar_month,
                color: Colors.black,
                ),
                label: 'Calender'),
            BottomNavigationBarItem(
                icon: Icon(Icons.chat,
                color: Colors.black),
                label: 'chat')
          ],

        ),
      ),

    );
  }
}


