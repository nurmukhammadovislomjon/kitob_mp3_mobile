import 'package:shared_preferences/shared_preferences.dart';

class SaveLogin {
  // --------------------save---------------------------
  static Future saveName(String name) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    await preferences.setString('name', name);
    print(name);
  }

  static Future saveFamilya(String familya) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    await preferences.setString('familya', familya);
    print(familya);
  }

  // --------------------get-----------------------------
  static Future<String?> getName() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return preferences.getString('name');
  }

  static Future getFamilya() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return preferences.getString('familya');
  }

  static Future logOut() async{
    SharedPreferences preferences = await SharedPreferences.getInstance();
    await preferences.clear();
  }
}
