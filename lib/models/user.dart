import 'wallets.dart';

class User {
  User({
      this.name, 
      this.uuid, 
      this.limitPerMinute, 
      this.wallets});

  User.fromJson(dynamic json) {
    name = json['name'];
    uuid = json['uuid'];
    limitPerMinute = json['limit_per_minute'];
    if (json['wallets'] != null) {
      wallets = [];
      json['wallets'].forEach((v) {
        wallets?.add(Wallets.fromJson(v));
      });
    }
  }
  String? name;
  String? uuid;
  int? limitPerMinute;
  List<Wallets>? wallets = [];

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['uuid'] = uuid;
    map['limit_per_minute'] = limitPerMinute;
    map['wallets'] = wallets?.map((v) => v.toJson()).toList();
    return map;
  }

}