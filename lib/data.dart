class Data {
  late Map<String, Map<String, String>> code;

  Data.fromMap(Map<String, dynamic> data){
    code = data['code'];
  }
}