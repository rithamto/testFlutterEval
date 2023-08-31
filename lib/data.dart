class Data {
  late Map<String, Map<String, String>> code;

  Data.fromMap(Map<String, dynamic> data){
    // code = data['code'];
    code = data['code'].map((key, value) => MapEntry(key.toString(), convert(value)));
  }

  Map<String, String> convert(dynamic value) {
    List<MapEntry<String, String>> entries = value.map((key, value) {
      String stringKey = key.toString();
      String stringValue = value.toString();
      return MapEntry(stringKey, stringValue);
    }).toList();
    return Map.fromEntries(entries);
  }
} 