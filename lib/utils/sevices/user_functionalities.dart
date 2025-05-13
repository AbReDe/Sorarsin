import 'package:flutter/material.dart';
import 'package:sorarsin/utils/model/models.dart';
import '../../screen/HomeScreen/Home_Screen.dart';
import '../../screen/girisekranlari/singin.dart';
import 'api_service.dart';

class UserFunctions {
  final APIservice apiService = APIservice();

  // KULANICI GİRİŞ EKRAN ONAYLAMA FONKSİYONU
  Future<void> Signin(
    BuildContext context,
    String email,
    String password,
  ) async {
    /*
      if(email==1234 || password==1234){
        Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const HomeScreen()),
      );

    }
    else*/

    if (email.isEmpty || password.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Lütfen e-posta ve şifrenizi girin.')),
      );
      return;
    }

    UserModels? user = await apiService.GetUserByEmail(email);

    if (user != null) {
      if (user.password == password) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const HomeScreen()),
        );
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('E-posta veya şifre hatalı.')),
        );
      }
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('E-posta veya şifre hatalı.')),
      );
    }
  } // sign in sonu

  //KAYIT ETME FONKSİYONU
  Future<void> signup(
    BuildContext context,
    String name,
    String email,
    String password,
  ) async {
    if (email.isEmpty || password.isEmpty || name.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Lütfen e-posta ve şifrenizi girin.')),
      );
      return;
    }

    UserModels model = UserModels(name: name, email: email, password: password);

    bool tester = await apiService.postUser(model);

    if (tester) {
      print('Kayıt başarılı!');
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const signin(),
        ), // Örnek yönlendirme
      );
    } else {
      print('Kayıt başarısız!');
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Kayıt işlemi başarısız oldu. Lütfen tekrar deneyin.'),
        ),
      );
    }
  } // sing up sonu

  //KULANICI ŞİFRE YENİLEME FONKSİYONU
  Future<void> Reset_password(
    BuildContext context,
    String email,
    String newPassword,
    String aceptPassword,
  ) async {
    if (newPassword != aceptPassword) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(const SnackBar(content: Text("şifreler uyuşmuyor")));
    } else {
      bool onay = await apiService.UpdateUserPassword(
        email: email,
        newPassword: newPassword,
      );

      if (onay) {
        print("şifre basarıyla güncelendi!");
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text("şifre başarılı bir şekılde güncelendi"),
          ),
        );
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => signin()),
        );
      } else {
        print("şifre guncelenmesinde bir hata oluştu");
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text(
              "şifre guncelenmesinde bir hata olustu! LÜTFEN TEKRARA DENEYİNİZ",
            ),
          ),
        );
      }
    } // else sonu
  } //Reset_Password sonu
} // user function sonu
