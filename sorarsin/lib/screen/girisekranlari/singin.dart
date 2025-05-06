
import 'package:flutter/material.dart' ;
import 'package:sorarsin/common/Colors.dart';
import 'package:sorarsin/screen/girisekranlari/reset_password.dart';
import 'package:sorarsin/screen/girisekranlari/singup.dart';
import 'package:sorarsin/utils/sevices/user_functionalities.dart';

class signin extends StatefulWidget {
  const signin({super.key});

  @override
  State<signin> createState() => _singinState();
}

class _singinState extends State<signin> {


  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final UserFunctions _userFunctions = UserFunctions();





  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/image/backgrandimage.png"),
              fit: BoxFit.cover)
            ),
          ),
          AspectRatio(aspectRatio: 1,
          child:Container(
            padding: const EdgeInsets.all(
              15,
            ),
            decoration: const BoxDecoration(
              color: ContainerColor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              )
            ),
    child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(
                    vertical: 8
                  ),
                    alignment: Alignment.center,
                  child: const Text("Sign in",
                  style: TextStyle(
                    fontFamily: 'BebasNeue' ,
                    color:Textcolor,
                    fontSize: 35
                  ),
                  ),
                ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: TextFormField(
              controller: _emailController,
              style: TextStyle(
                color: Textcolor
              ),
                    decoration:  InputDecoration(
                      labelText: "Email",
                        labelStyle: TextStyle(
                            color: Textcolor,
                            fontFamily: "BebasNeue",
                            fontSize: 20
                        ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular( 4 ),
                        borderSide: BorderSide(
                          color: Textboxcolor
                        )
                      )
                    ),
                  ),
          ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: TextFormField(
                    controller: _passwordController,
                    obscureText: true,
                    style: TextStyle(
                        color: Textcolor
                    ),
                    decoration:  InputDecoration(
                        labelText: "password",
                        labelStyle: TextStyle(
                          color: Textcolor,
                            fontFamily: "BebasNeue",
                            fontSize: 20
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular( 4 ),
                            borderSide: BorderSide(
                                color: Textboxcolor
                            )
                        )
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: MaterialButton(
                    onPressed: (){
                      _userFunctions.Signin(context, _emailController.text, _passwordController.text);

                    },
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4),
                    ),
                    color: Buttomcolor,
                    minWidth: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5),
                      child: const Text("Sing In",
                      style: TextStyle(
                        color: Textcolor,
                          fontFamily: "BebasNeue",
                        fontSize: 20
                       ),
                      ),
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.symmetric(vertical: 4),
                child:TextButton(onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Create_Password()),
                  );
                }, child: const Text("Forgot password",
                style: TextStyle(
                  color: Buttomcolor,
                  fontFamily: "BebasNeue",
                  fontSize: 17
                ),
                ),
                ),
                ),
                Container(
                  alignment: Alignment.centerRight,
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [

                        Text("hesabiniz yoksa buraya basın",
                        style: TextStyle(
                            color: Textcolor,
                            fontFamily: "BebasNeue",
                            fontSize: 17
                        ),
                        ),

                           TextButton(onPressed: (){ Navigator.push(
                             context,
                             MaterialPageRoute(
                                 builder: (context) => signup()),
                           );
                             }, child: Text("Sing Up",
                           style: TextStyle(
                               color: Buttomcolor,
                               fontFamily: "BebasNeue",
                               fontSize: 17
                           ),
                           )
                      )
                    ],
                  ),

                )

              ],
            ),
          ) ,
          )
          )
        ],

      ),
    );
  }
}
