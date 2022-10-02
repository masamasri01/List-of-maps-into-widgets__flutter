import 'dart:html';

class Data {
  late List<String> domains;
  late String alpha_two_code;
  late String country;
  late List<String> web_pages;
  late String name;
  String? state_province;

  Data.fromMap(Map map) {
    this.domains = map['domains'];
    this.alpha_two_code = map['alpha_two_code'];
    this.country = map['country'];
    this.web_pages = map['web_pages'];
    this.state_province = map['state_province'];
    this.name = map['name'];
  }
}
