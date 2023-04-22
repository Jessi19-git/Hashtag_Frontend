import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
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
                          hintText: "Email",
                          prefixIcon: Icon(Icons.mail,color:Colors.black),

                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          )),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextField(
                      keyboardType: TextInputType.emailAddress,
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
                        onPressed: (){},
                        child: Text('SIGNUP', style: TextStyle(color: Colors.white),),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Column(
                      children:[
                        Text('or',style: TextStyle(fontSize: 12),),
                        SizedBox(
                          height: 8,
                        ),
                        Text('Continue with Google'),
                        SizedBox(
                          height: 8,
                        ),
                        Text('Continue with Facebook'),
                        ///Add google and facebook picture before text
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [

                        Text("Have aN accouNt?"),

                        SizedBox(
                          width: 90,
                        ),

                        Container(
                          child:TextButton(

                            onPressed: (){
                              Navigator.pushNamed(context, 'login');
                            },
                            child: Text('Login here', style: TextStyle(
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
