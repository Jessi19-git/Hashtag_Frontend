import 'package:flutter/material.dart';



class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override



  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 202,207,250),
      appBar: AppBar(
        backgroundColor:Color.fromARGB(255, 202,207,250),
        elevation: 1,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: Colors.black,
          onPressed: (){
            Navigator.pushNamed(context, 'home');
          },
        ),
        // title: Image.asset("assets/logo.png",
        // width : 100,
        // ),
        // alignment: Alignment.topLeft,
        centerTitle: false,
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.dehaze), color: Colors.black),


          // Row(
          // children: [
          //   Text('Recommended For You')
          // ],
          // )
        ],
        // bottom: PreferredSize(
        //   preferredSize: Size(20,20),
        //
        //   child: Column(
        //
        //     children: [
        //
        //
        //       Text('Cr',
        //         style: TextStyle(
        //             color: Colors.black,fontSize: 20,fontWeight: FontWeight.w700
        //         ),
        //       ),
        //       Container(
        //
        //       )
        //     ],
        //   ),
        //
        // ),


      ),


    );
  }
}
