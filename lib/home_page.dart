import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_api_getx/user_controller.dart';

class MyHomePage extends StatelessWidget {
  UserController userController = Get.put(UserController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Obx(()=>
            Text("data ${userController.email}")
          ),
        ],
      ),
    );
  }
}
