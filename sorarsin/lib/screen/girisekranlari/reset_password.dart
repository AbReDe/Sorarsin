import 'package:flutter/material.dart';
import 'package:sorarsin/screen/girisekranlari/singin.dart';

import '../../common/Colors.dart';

class Create_Password extends StatefulWidget {
  const Create_Password({super.key});

  @override
  State<Create_Password> createState() => _Create_PasswordState();
}

class _Create_PasswordState extends State<Create_Password> {
  bool _onaylandiMi = false;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
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
          AspectRatio(aspectRatio: 0.9,
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
                    child: const Text("Create Password",
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
                      obscureText: true,
                      style: TextStyle(
                          color: Textcolor
                      ),
                      decoration:  InputDecoration(
                          labelText: "new password",
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
                      obscureText: true,
                      style: TextStyle(
                          color: Textcolor
                      ),
                      decoration:  InputDecoration(
                          labelText: "confirm password",
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

                  //buraya şifreyi degistirmeyi onaylıyormusunuz chekbox eklenecek
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 4),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start, // İçeriği sol tarafa hizalar
                      children: [
                        Checkbox(
                          value: _onaylandiMi,
                          onChanged: (bool? newValue) {
                            setState(() {
                              _onaylandiMi = newValue!;
                            });
                          },
                          activeColor: Buttomcolor,
                        ),
                        const SizedBox(width: 8.0), // Checkbox ve yazı arasında biraz boşluk bırakır
                        const Text(
                          "Şifreyi değiştirmeyi onaylıyor musunuz?",
                          style: TextStyle(
                            color: Textcolor,
                            fontFamily: "BebasNeue",
                            fontSize: 21,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: MaterialButton(
                      onPressed: _onaylandiMi
                          ? () {
                        // Şifre oluşturma işlemleri burada yapılacak
                        print("Şifre oluşturma onaylandı!");
                      }
                          : null,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4),
                      ),
                      color: Buttomcolor,
                      minWidth: double.infinity,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5),
                        child: const Text(
                          "Create Password",
                          style: TextStyle(
                            color: Textcolor,
                            fontFamily: "BebasNeue",
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(padding: EdgeInsets.symmetric(vertical: 4),
                    child: TextButton(onPressed: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => signin()),
                      );
                    },
                        child:Text("Sign in",
                          style: TextStyle(
                              color: Buttomcolor,
                              fontFamily: "BebasNeue",
                              fontSize: 17
                          ) ,),
                    ),



                  )

                ],
              ),
            ) ,
          ),
          ),

        ],

      ),
    );
  }
}
