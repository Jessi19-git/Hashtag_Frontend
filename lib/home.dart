import 'package:flutter/material.dart';
import 'package:untitled1/Create.dart';
import 'package:untitled1/profile.dart';
import 'package:untitled1/Recommended.dart';
import 'package:untitled1/trending.dart';
import 'package:untitled1/Dashboard.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentTab=0;
  final List<Widget> screens=[
    Dashboard(),
     Create(),
    Profile(),
    Trending(),
    Recommended(),

  ];
  final PageStorageBucket bucket=PageStorageBucket();
  Widget currentScreen=Dashboard();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color.fromARGB(255, 202,207,250),
      // appBar: AppBar(
      //   backgroundColor:Color.fromARGB(255, 202,207,250),
      //   elevation: 0,
      //   title: Image.asset("assets/logo.png",
      //     width : 100,
      //   ),
      //   // alignment: Alignment.topLeft,
      //   centerTitle: false,
      //   actions: [
      //     IconButton(onPressed: (){}, icon: Icon(Icons.search), color: Colors.black),
      //     IconButton(onPressed: (){}, icon: Icon(Icons.notifications_active_outlined),color: Colors.indigoAccent),
      //
      //   ],
      // ),
      // body: SingleChildScrollView(
      //   child:Padding(padding:EdgeInsets.all(16),
      //
      //   ),
      // ),
      // bottomNavigationBar: BottomNavigationBar(
      //   unselectedItemColor: Colors.black,
      //   selectedItemColor: Colors.indigo,
      //   items: [
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.home),
      //       label:'Home',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.trending_flat),
      //       label:'Trending',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.add_circle),
      //       label:'Add',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.recommend_rounded),
      //       label:'Recommended',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.person_rounded),
      //       label:'Profile',
      //     ),
      //
      //   ],
      // ),


      body: PageStorage(
        child: currentScreen,
        bucket: bucket,
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.indigoAccent,
        child: Icon(Icons.add),

        onPressed: () {
          Navigator.pushNamed(context, 'Create');
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 10,
        child: Container(
          height:60,
          child:Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MaterialButton(
                      minWidth: 40,
                      onPressed:(){
                        setState(() {
                          currentScreen=Dashboard();
                          currentTab=0;
                        });
                      },
                      child:Column(
              mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.home,
                            color: Colors.indigoAccent,
                          ),
                          Text('Home',
                            style: TextStyle(color:Colors.indigoAccent,),
                          )
                        ],
          )
                  ),
                  MaterialButton(
                      minWidth: 40,
                      onPressed:(){
                        setState(() {
                          currentScreen=Trending();
                          currentTab=1;
                        });
                      },
                      child:Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.trending_up,
                            color:Colors.indigoAccent,
                          ),
                          Text('Trending',
                            style: TextStyle(color:  Colors.indigoAccent ,),
                          )
                        ],
                      )
                  ),

                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MaterialButton(
                      minWidth: 40,
                      onPressed:(){
                        setState(() {
                          currentScreen=Recommended();
                          currentTab=3;
                        });
                      },
                      child:Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.recommend,
                            color: Colors.indigoAccent,
                          ),
                          Text('Recommended',
                            style: TextStyle(color:Colors.indigoAccent,),
                          )
                        ],
                      )
                  ),
                  MaterialButton(
                      minWidth: 40,
                      onPressed:(){
                        setState(() {
                          currentScreen=Profile();
                          currentTab=4;
                        });
                      },
                      child:Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.person,
                            color:Colors.indigoAccent,
                          ),
                          Text('Profile',
                            style: TextStyle(color:  Colors.indigoAccent ,),
                          )
                        ],
                      )
                  ),

                ],
              ),
            ],
          )
        ),
      ),
    );
  }
}
