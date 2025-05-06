import 'dart:ffi';

class UserModels {
  int? id;
  String? name;
  String? Email;
  String? password;
  Array? paketid;


  UserModels({this.id,this.name, this.Email, this.password, this.paketid});

  UserModels.fromJson(Map<String,dynamic>json){
    id= json['id'];
    name= json['name'];
    Email= json['Email'];
    password= json['password'];
    paketid=json['paketid'];
  }

  Map<String,dynamic>toJson(){
    final Map<String,dynamic> data = <String,dynamic>{};
    data['id']=id;
    data['name']=name;
    data['Email']=Email;
    data['password']=password;
    data['paketid']=paketid;
    return data;
  }
}

class PaketModels {

  int? paketid;
  String? konu;
  Array? soruid;

  PaketModels({this.paketid,this.konu, this.soruid});

  PaketModels.fromJson(Map<String,dynamic>json){
    paketid= json['paketid'];
    konu= json['konu'];
    soruid= json['soruid'];
  }

  Map<String,dynamic>toJson(){
    final Map<String,dynamic> data = <String,dynamic>{};
    data['paketid']=paketid;
    data['konu']=konu;
    data['soruid']=soruid;
    return data;
  }
}