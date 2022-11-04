class Wallets {
  Wallets({
      this.name, 
      this.brlValue,});

  Wallets.fromJson(dynamic json) {
    name = json['name'];
    brlValue = json['brl_value'];
  }
  String? name;
  int? brlValue;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['brl_value'] = brlValue;
    return map;
  }

}