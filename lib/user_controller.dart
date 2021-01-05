import 'package:get/get.dart';
import 'package:get_api_getx/UserDM.dart';
import 'package:get_api_getx/network/data_source.dart';
import 'package:get_api_getx/network/remote_services.dart';
import 'package:http/http.dart' as http;

class UserController extends GetxController {
  //DataSource dataSource;

  // var userEntity = UserDm().obs;
  // var data = Data().obs;
  // var isLoading = true.obs;
  var productList = UserDm().obs;
  var email = "_".obs;

  @override
  void onInit() {
    fetchProducts();
    super.onInit();
  }

  void fetchProducts() async {
    try {

      var products = await RemoteServices.fetchProducts();
      if (products != null) {
        productList.value = products;
        email.value = productList.value.data.email;
      }
    } finally {

    }
  }
}
