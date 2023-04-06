import 'package:flutter/material.dart';

class InfoCar{
  String id_car,image,title;
  List<String> component;
  List<String> infoCar;
  InfoCar({required this.id_car,required this.image,required this.title,required this.component,required this.infoCar});
}

class Post {
  var user;
  var userImages;

  bool like = false;
  List<String> commmentUser = [];
  List<String> commentUserMessage = [];
  TextEditingController controller = TextEditingController();
  Post(var user, var userImages, List<String> commmentUser, List<String> commentUserMessage) {
    this.user = user;
    this.userImages = userImages;

    this.commmentUser = commmentUser;
    this.commentUserMessage = commentUserMessage;
  }
}