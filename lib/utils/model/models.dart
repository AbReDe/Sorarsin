import 'dart:ffi';

class UserModels {
  int? userId; // 'id' yerine 'userId' kullanmak daha tutarlı olabilir
  String? name;
  String? email; // Dart'ta genellikle küçük harfle başlar
  String? password;
  List<int>?
  packageIds; // 'Array' yerine Dart'ta 'List' kullanılır ve tip belirtilir

  UserModels({
    this.userId,
    this.name,
    this.email,
    this.password,
    this.packageIds,
  });

  UserModels.fromJson(Map<String, dynamic> json) {
    userId = json['user_id']; // Veritabanı sütun adlarına göre
    name = json['name'];
    email = json['email'];
    password = json['password'];
    // JSON'daki 'paketid' bir liste ise doğrudan atayabilirsiniz
    if (json['package_ids'] is List) {
      packageIds = (json['package_ids'] as List).cast<int>().toList();
    } else if (json['package_ids'] != null) {
      // Tek bir ID ise listeye çevirebilirsiniz veya backend'e göre düzenleyebilirsiniz
      packageIds = [json['package_ids'] as int];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['user_id'] = userId;
    data['name'] = name;
    data['email'] = email;
    data['password'] = password;
    data['package_ids'] = packageIds;
    return data;
  }
}

class PaketModels {
  int?
  packageId; // 'paketid' yerine 'packageId' kullanmak daha tutarlı olabilir
  String? name; // 'konu' yerine 'name' kullanmak daha genel olabilir
  List<int>?
  questionIds; // 'Array' yerine Dart'ta 'List' kullanılır ve tip belirtilir

  PaketModels({this.packageId, this.name, this.questionIds});

  PaketModels.fromJson(Map<String, dynamic> json) {
    packageId = json['package_id']; // Veritabanı sütun adlarına göre
    name = json['name']; // Veritabanı sütun adlarına göre
    // JSON'daki 'soruid' bir liste ise doğrudan atayabilirsiniz
    if (json['question_ids'] is List) {
      questionIds = (json['question_ids'] as List).cast<int>().toList();
    } else if (json['question_ids'] != null) {
      // Tek bir ID ise listeye çevirebilirsiniz veya backend'e göre düzenleyebilirsiniz
      questionIds = [json['question_ids'] as int];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['package_id'] = packageId;
    data['name'] = name;
    data['question_ids'] = questionIds;
    return data;
  }
}
