import "package:flutter/material.dart";




class Reels extends StatefulWidget {
  const Reels({Key? key}) : super(key: key);

  @override
  State<Reels> createState() => _ReelsState();
}


class _ReelsState extends State<Reels> {

  List person=[["Jhon",true],["Tony",true],["James",true],["Jordan",true]];
  List opacity_val=[false,false,false,false];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
          itemCount: opacity_val.length,
          itemBuilder: (context,index){

        return GestureDetector(
          child: Card(

            child: Opacity(
                child: Container(
                  width:125,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/person${index+1}.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child:opacity_val[index]?Flex(
                    direction: Axis.vertical,
                    children: <Widget>[
                      Image.asset("assets/like.png"),
                      Text("20",
                      style: TextStyle(fontSize: 50,
                        color: Colors.red,
                      ),
                      ),
                      Expanded(
                        child: Align(
                          alignment: FractionalOffset.bottomCenter,
                          child: Container(
                            color: Colors.white,
                            child: Text("Like"),
                          ),
                        ),
                      )
                    ],
                  ): Flex(
                    direction:Axis.horizontal,
                    children:<Widget>[
                      Expanded(
                      child: Align(
                      alignment: FractionalOffset.bottomCenter,
                      child: Container(
                        width:110,
                        height:20,
                        alignment: Alignment.bottomCenter,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: Colors.white,
                        ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("${person[index][0]}"),
                          person[index][1]?Icon(Icons.verified_sharp,
                          color: Colors.blueAccent,
                          ):Text(""),
                        ],
                      ),
                      ),
            ),
                ),
                  ],
                  )

                ),
                opacity:  opacity_val[index]?0.3:1.0 ,
            ),
          ),
          onTap: (){
            setState(() {
              opacity_val[index]=!opacity_val[index];
              print("${opacity_val[index]}");
            });
          },
        );

      },
      scrollDirection: Axis.horizontal,
      );

  }
}
