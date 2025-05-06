import 'package:flutter/material.dart' ;
import 'package:sorarsin/common/Colors.dart';
import 'package:sorarsin/screen/girisekranlari/singin.dart';

class signup extends StatefulWidget {
  const signup({super.key});

  @override
  State<signup> createState() => _signupState();
}

class _signupState extends State<signup> {
  String _gender = "Erkek";
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
                    image: AssetImage(
                        "assets/image/backgrandimage.png",),
                  fit: BoxFit.cover
                ),
            ),

          ),
            AspectRatio(aspectRatio: 0.8,
            child: Container(
              padding: const EdgeInsets.all(10),
              decoration: const BoxDecoration(
                color: ContainerColor,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                topRight: Radius.circular(20)
                )
              ),

            child: SingleChildScrollView(
               child:  Column(
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(
                        vertical: 8
                    ),
                    alignment: Alignment.center,
                    child: const Text("Sign Up",
                      style: TextStyle(
                          fontFamily: 'BebasNeue' ,
                          color:Textcolor,
                          fontSize: 35
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 4),
                    child: TextFormField(
                      style: TextStyle(
                          color: Textcolor
                      ),
                      decoration:  InputDecoration(
                          labelText: "Kulanıcı adınız",
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
                    padding: const EdgeInsets.symmetric(vertical: 4),
                    child: TextFormField(
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
                    padding: const EdgeInsets.symmetric(vertical: 4),
                    child: TextFormField(
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
                    padding: const EdgeInsets.symmetric(vertical: 1),
                    child: RadioListTile(

                      title: Text("Erkek",
                        style: TextStyle(
                          color: Textcolor,
                          fontFamily: "BebasNeue",
                          fontSize: 18,
                        ),
                      ),
                      value: "Erkek",
                      groupValue: _gender,
                      activeColor: Buttomcolor,
                      onChanged: (value) {
                        setState(() {
                          _gender = value!;
                        });
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 1),
                    child: RadioListTile(
                      title: Text("Kadın",
                        style: TextStyle(
                          color: Textcolor,
                          fontFamily: "BebasNeue",
                          fontSize: 18,
                        ),
                      ),
                      value: "Kadın",
                      groupValue: _gender,
                      activeColor: Buttomcolor,
                      onChanged: (value) {
                        setState(() {
                          _gender = value!;
                        });
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 7),
                    child: MaterialButton(
                      onPressed: (){},
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4),
                      ),
                      color: Buttomcolor,
                      minWidth: double.infinity,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 7),
                        child: const Text("Sign Up",
                          style: TextStyle(
                              color: Textcolor,
                              fontFamily: "BebasNeue",
                              fontSize: 20
                          ),
                        ),
                      ),
                    ),
                  ),
                  // Cinsiyet Seçimi



                  Container(
                    alignment: Alignment.centerRight,
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [

                        Text("Zaten bir hesabınız varsa",
                          style: TextStyle(
                              color: Textcolor,
                              fontFamily: "BebasNeue",
                              fontSize: 17
                          ),
                        ),

                        TextButton(onPressed: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => signin()),
                          );
                        }, child: Text("Sing In",
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
              ),),
            ),

            ),
          ],
        ),
    );
  }
}
