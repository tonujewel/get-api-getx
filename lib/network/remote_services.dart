import 'package:flutter/cupertino.dart';
import 'package:get_api_getx/UserDM.dart';
import 'package:http/http.dart' as http;

class RemoteServices {
  static var client = http.Client();

  static Future <UserDm> fetchProducts() async {
    var response = await client.get(
        'https://reqres.in/api/users/2');
    if (response.statusCode == 200) {
      var jsonString = response.body;
      debugPrint("response - $jsonString");
      return userDmFromJson(jsonString);
    } else {
      //show error message
      return null;
    }
  }
}
