import 'dart:io';

import 'package:learn_apis/web_services.dart';

import 'UserMD.dart';

class MyRepo {
  final WebServices webServices;

  MyRepo(this.webServices);

  Future<List<UserMd>> getAllUsersData() async {
    //  List<UserMd> response = await webServices.getAllUsersData();//here's the call
    //  return response.map((user) => UserMd.fromJson(user.toJson())).toList();
    //retrofit do this all in the generated files, you can only return the generated functions
    return await webServices.getAllUsersData();
  }

  Future<UserMd> getUserDetailsById(int userId) async {
    // UserMd response = await webServices.getUserDetailsById(userId);//here's the call
    // return UserMd.fromJson(response.toJson());
    return await webServices.getUserDetailsById(userId);
  }

  Future<UserMd> createNewUser(UserMd newUser) async {
    return await webServices.createNewUser(newUser,
        'Bearer 08400f17bb64f95b87beabd47fde99ee57ee46bd07a0059e4f8da8161e85cab3');
  }
  Future<dynamic> deleteUser(int userId) async {
    return await webServices.deleteUser(userId,
        'Bearer 08400f17bb64f95b87beabd47fde99ee57ee46bd07a0059e4f8da8161e85cab3');
  }
}
