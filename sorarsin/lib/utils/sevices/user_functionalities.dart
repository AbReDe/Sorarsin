import 'package:flutter/material.dart';
import 'package:sorarsin/utils/model/models.dart';
import '../../screen/HomeScreen/Home_Screen.dart';
import 'api_service.dart';


class UserFunctions{

  final APIservice apiService = APIservice();

  Future<void> Signin (BuildContext context,String email, String password) async {

  /*
      if(email==1234 || password==1234){
        Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const HomeScreen()),
      );

    }
    else*/


    if (email.isEmpty || password.isEmpty){
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Lütfen e-posta ve şifrenizi girin.'))
      );
      return;
    }

    UserModels? user = await apiService.GetUserByEmail(email);

    if(user != null){

      if(user.password==password){
        Navigator.pushReplacement(
          context,
        MaterialPageRoute(builder: (context) => const HomeScreen()),
        );
      }else{
        ScaffoldMessenger.of(context).showSnackBar(
           const SnackBar(content:
              Text('E-posta veya şifre hatalı.')),);
      }
    }else{
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content:
            Text('E-posta veya şifre hatalı.')),);
      }
    }// sign in sonu






  }// user function sonu



