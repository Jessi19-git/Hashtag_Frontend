import 'package:flutter/material.dart';

class MyLogin extends StatefulWidget {
  const MyLogin({Key? key}) : super(key: key);

  @override
  State<MyLogin> createState() => _MyLoginState();
}

class _MyLoginState extends State<MyLogin> {
  @override
  bool isChecked=false;
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/background.png')
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.42,
                right: 65,
                  left: 65,
                ),
                child : Column(
                  children: [
                    TextField(
                      style: TextStyle(color: Colors.black),
                      decoration: InputDecoration(
                          fillColor: Colors.grey.shade100,
                          filled: true,
                          hintText: "Username",
                          prefixIcon: Icon(Icons.account_circle,color:Colors.black),

                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          )),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextField(
                      obscureText: true,
                      style: TextStyle(color: Colors.black),
                      decoration: InputDecoration(
                          fillColor: Colors.grey.shade100,
                          filled: true,
                          hintText: "Password",
                          prefixIcon: Icon(Icons.lock,color:Colors.black),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          )),
                    ),
                    SizedBox(
                     height: 8,
                    ),
                    Row(
                      children: [

                     Checkbox(value: isChecked, onChanged: (value){
                       isChecked=! isChecked;
                       setState(() {

                       });
                     }
                     ),
                        Text('Remember me'),

                        SizedBox(
                          width: 40,
                        ),
                        Text('Forgot Password'),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: double.infinity,
                      child: RawMaterialButton(
                        fillColor: Color.fromARGB(255, 83,84,176),
                       padding: EdgeInsets.symmetric(vertical: 15.0),
                        shape:  RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12)
                        ),
                        onPressed: (){
                          Navigator.pushNamed(context, 'home');
                        },
                        child: Text('LOGIN', style: TextStyle(color: Colors.white),),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    // Row(
                    //   children:[
                    //   Text('Login with'),
                    //     ///Add facebook and all like figma
                    //  ],
                    // ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [

                        Text("Don't have a accout?"),

                        SizedBox(
                          width: 47,
                        ),

                        Container(
                            child:TextButton(

                              onPressed: (){
                                Navigator.pushNamed(context, 'signup');
                              },
                              child: Text('Register Here', style: TextStyle(
                                decoration: TextDecoration.underline,
                                  color: Colors.black),
                              ),
                            ),
                        ),

                      ],
                    ),
                  ],
                ),
              ),
            )
          ],


        ),

      ),


    );



  }
}
