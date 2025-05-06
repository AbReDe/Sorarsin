import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:sorarsin/utils/model/models.dart';

import '../constants/api_constants.dart';

class APIservice{


  //tum kulanicilari cek donder
  Future<List<UserModels>>GetUser() async{
    final response = await http.get(Uri.parse(url));

    List<UserModels> commets = [];

    List<dynamic> Resposelist = jsonDecode(response.body);
    for(var i =0 ; i<Resposelist.length; i++){
      commets.add(UserModels.fromJson(Resposelist[i]));
    }

    return commets;

  }

//tek bir email sorgusu
  Future<UserModels?> GetUserByEmail(String Email)async{
    final String ApiUrl = '$url/$Email';

    try{
      final response = await http.get(Uri.parse(ApiUrl));

      if(response.statusCode==200){
        final Map<String,dynamic> responsedata = jsonDecode(response.body);
        return UserModels.fromJson(responsedata);
      }else if(response.statusCode==404){
        print('Belirtilen Email\'ye sahip kullanıcı bulunamadı. Durum kodu: ${response.statusCode}');
        return null;
      }else {
        print('Kullanıcı bilgileri alınırken bir hata oluştu. Durum kodu: ${response.statusCode}');
        return null;
      }
    }//try sonu
    catch (e) {
      print('bir hata olustu: $e');
      return null;
    }

  }// GetUserByEmail sonu






}

