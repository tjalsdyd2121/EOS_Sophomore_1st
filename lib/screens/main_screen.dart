import 'package:flutter/material.dart';
import '../config/palette.dart';
class LoginSignUpScreen extends StatefulWidget {
  const LoginSignUpScreen({Key? key}) : super(key: key);
  @override
  State<LoginSignUpScreen> createState() => _LoginSignUpScreenState();
}

class _LoginSignUpScreenState extends State<LoginSignUpScreen>{
  bool isSignupScreen = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.backgroundColor,
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
              child: Container( // 3.15
                height: 300,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/background.png'),
                    fit: BoxFit.fill
                  ),
                ),
                child: Container(
                  padding: EdgeInsets.fromLTRB(20, 90, 0, 0),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RichText(
                          text: TextSpan(
                            text: 'Welcome ',
                            style: TextStyle(
                              letterSpacing: 1.0 , fontSize: 25, color: Colors.white
                            ),
                              children: [
                                TextSpan(
                                  text: 'to EOS chat',
                                  style: TextStyle(
                                    letterSpacing: 1.0 , fontSize: 25, color: Colors.white, fontWeight: FontWeight.bold
                                  )

                            )
                        ]
                      )
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Text(
                        'Signup to continue',
                        style: TextStyle(
                          letterSpacing: 1.0, color: Colors.white
                        ),
                      )
                    ],
                  ),
                ),
              )
          ),
        Positioned(
          top: 150,
            child: Container(
              height: 280.0,
              padding: EdgeInsets.all(20),
              width: MediaQuery.of(context).size.width - 40,
              margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
              decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.all(Radius.circular(15)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.3),
                    //offset: Offset(0.3, 0.3),
                    blurRadius: 15,
                    spreadRadius: 5
                  )
                ]
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      GestureDetector(
                        child: Column(
                          children: [
                            Text(
                              'Login',
                              style: TextStyle(
                                  color: isSignupScreen == true ? Palette.textColor1 : Palette.activeColor,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                            if(!isSignupScreen) Container( height:1.0,
                              width:500.0,
                              color:Colors.black,),
                            Container(
                              margin: EdgeInsets.fromLTRB(0, 3, 0, 0),
                              height: 2,
                              width: 55,
                              color: Colors.green,
                            )
                          ],
                        ),
                      ),
                      GestureDetector(
                        child: Column(
                          children: [
                            Text(
                              'SIGNUP',
                              style: TextStyle(
                                color: isSignupScreen == true ? Palette.activeColor : Palette.textColor1,
                                fontSize: 16,
                                fontWeight: FontWeight.bold
                              ),
                            ),
                            if(isSignupScreen) Container( height:1.0,
                              width:55.0,
                              color:Colors.black,),
                            Container(
                              margin: EdgeInsets.fromLTRB(0, 3, 0, 0),
                              height: 2,
                              width: 55,
                              color: Colors.green,
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  Container(
                    child: Form(
                      child: Column(
                        children: [
                          TextFormField(
                            decoration: InputDecoration(
                              prefixIcon: Icon(Icons.adb, color: Palette.iconColor),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Palette.textColor1),
                                borderRadius: BorderRadius.all(Radius.circular(35))
                              ),

                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Palette.textColor1),
                                borderRadius: BorderRadius.all(Radius.circular(35))
                              )

                            ),
                          )
                        ],
                      ),
                    ),
                  )

                ],
              ),
        ))  //Positioned(child: child)
        ],
      )
    );
  }
}