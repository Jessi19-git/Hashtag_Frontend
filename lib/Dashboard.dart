import 'package:flutter/material.dart';


class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {



    return Scaffold(
      backgroundColor: Color.fromARGB(255, 202,207,250),
      appBar: AppBar(
        backgroundColor:Color.fromARGB(255, 202,207,250),
        elevation: 0,
        // title: Image.asset("assets/logo.png",
        // width : 100,
        // ),
        // alignment: Alignment.topLeft,
        centerTitle: false,
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.search), color: Colors.black),
          IconButton(onPressed: (){}, icon: Icon(Icons.notifications_active_outlined),color: Colors.indigoAccent),
          // Row(
          // children: [
          //   Text('Recommended For You')
          // ],
          // )
        ],
        bottom: PreferredSize(
          preferredSize: Size(20,20),

          child: Column(

            children: [





            ],
          ),

        ),


      ),
        body: ListView(
          children: [
            SizedBox(
              height: 250,
              width: 200,
              child:Container(
                color: Color.fromARGB(255, 243, 244, 250),
                child: Column(
                  children: [
                    Text('  #Earthquake',
                      style: TextStyle(
                          color: Colors.black,fontSize: 20,fontWeight: FontWeight.w500
                      ),
                    ),
                    Text('Rick',
                      style: TextStyle(
                        color: Colors.grey,fontSize: 8,
                      ),
                    ),
                    Text('1 hr ago',
                      style: TextStyle(
                        color: Colors.grey,fontSize: 8,
                      ),
                    ),
                    SizedBox(
                      height:10,
                    ),
                    Text(' Earthquake in Turkey!'
                        'After the attack on Pearl Harbor, the feelings of animosity in America against Japan increased. By late 1945, the Allied leaders met in Germany with news of a secret new weapon, called the atomic bomb, created by American scientists, that was powerful enough to destroy an entire city. However, there were some feelings that the bomb was too powerful, and the leaders chose instead to send the Potsdam Declaration to Japan warning them to surrender. The Japanese military did not know about the atomicAfter the attack on Pearl Harbor, the feelings of animosity in America against Japan increased. By late 1945, the Allied leaders met in Germany with news of a secret new weapon, called the atomic bomb, created by American scientists, that was powerful enough to destroy an entire city. about the atomic',
                      style: TextStyle(
                        color: Colors.black,fontSize: 10,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            SizedBox(
              height: 250,
              width: 200,
              child:Container(
                color: Color.fromARGB(255, 243, 244, 250),
                child: Column(
                  children: [
                    Text('  #Earthquake',
                      style: TextStyle(
                          color: Colors.black,fontSize: 20,fontWeight: FontWeight.w500
                      ),
                    ),
                    Text('Rick',
                      style: TextStyle(
                        color: Colors.grey,fontSize: 8,
                      ),
                    ),
                    Text('1 hr ago',
                      style: TextStyle(
                        color: Colors.grey,fontSize: 8,
                      ),
                    ),
                    SizedBox(
                      height:10,
                    ),
                    Text(' Earthquake in Turkey!'
                        'After the attack on Pearl Harbor, the feelings of animosity in America against Japan increased. By late 1945, the Allied leaders met in Germany with news of a secret new weapon, called the atomic bomb, created by American scientists, that was powerful enough to destroy an entire city. However, there were some feelings that the bomb was too powerful, and the leaders chose instead to send the Potsdam Declaration to Japan warning them to surrender. The Japanese military did not know about the atomicAfter the attack on Pearl Harbor, the feelings of animosity in America against Japan increased. By late 1945, the Allied leaders met in Germany with news of a secret new weapon, called the atomic bomb, created by American scientists, that was powerful enough to destroy an entire city. about the atomic',
                      style: TextStyle(
                        color: Colors.black,fontSize: 10,
                      ),
                    ),

                  ],
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            SizedBox(
              height: 250,
              width: 200,
              child:Container(
                color: Color.fromARGB(255, 243, 244, 250),
                child: Column(
                  children: [
                    Text('  #Earthquake',
                      style: TextStyle(
                          color: Colors.black,fontSize: 20,fontWeight: FontWeight.w500
                      ),
                    ),
                    Text('Rick',
                      style: TextStyle(
                        color: Colors.grey,fontSize: 8,
                      ),
                    ),
                    Text('1 hr ago',
                      style: TextStyle(
                        color: Colors.grey,fontSize: 8,
                      ),
                    ),
                    SizedBox(
                      height:10,
                    ),
                    Text(' Earthquake in Turkey!'
                        'After the attack on Pearl Harbor, the feelings of animosity in America against Japan increased. By late 1945, the Allied leaders met in Germany with news of a secret new weapon, called the atomic bomb, created by American scientists, that was powerful enough to destroy an entire city. However, there were some feelings that the bomb was too powerful, and the leaders chose instead to send the Potsdam Declaration to Japan warning them to surrender. The Japanese military did not know about the atomicAfter the attack on Pearl Harbor, the feelings of animosity in America against Japan increased. By late 1945, the Allied leaders met in Germany with news of a secret new weapon, called the atomic bomb, created by American scientists, that was powerful enough to destroy an entire city. about the atomic',
                      style: TextStyle(
                        color: Colors.black,fontSize: 10,
                      ),
                    ),
                  ],
                ),
              ),
            ),

          ],


        )

    );
  }
}
