

import 'package:get_api_getx/network/base_network.dart';

class DataSource {
  static DataSource instance = DataSource();

  Future<Map<String,dynamic>> loadUserData(){
    return BaseNetwork.get("users/2");
  }

  Future<Map<String,dynamic>> loadCountries(){
    return BaseNetwork.get("countries");
  }

  Future<Map<String,dynamic>> loadSelectedCountry(iso3){
    return BaseNetwork.get("countries/$iso3");
  }
}