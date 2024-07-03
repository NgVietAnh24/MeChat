import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mechat/Config/imges.dart';
import 'package:mechat/Pages/Home/Widgets/ChatTile.dart';

class ChatsList extends StatelessWidget {
  const ChatsList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        InkWell(
          onTap: () {
            Get.toNamed("/chatPage");
          },
          child: ChatTile(
            imageUrl: AssetsImage.girlPic,
            name: "SSSA KUMARI",
            lastChat: "Bad me bat krte hai",
            lastTime: "09:23",
          ),
        ),
        ChatTile(
          imageUrl: AssetsImage.girlPic,
          name: "SSSA KARI",
          lastChat: "Bad me bat krte hai",
          lastTime: "08:23",
        ),
        ChatTile(
          imageUrl: AssetsImage.boyPic,
          name: "S KUMRI",
          lastChat: "Bad me bat krte hai",
          lastTime: "09:03",
        ),
        ChatTile(
          imageUrl: AssetsImage.girlPic,
          name: "SSSA KUMARI",
          lastChat: "Bad me bat krte hai",
          lastTime: "09:23",
        ),
        ChatTile(
          imageUrl: AssetsImage.boyPic,
          name: "S KUMRI",
          lastChat: "Bad me bat krte hai",
          lastTime: "09:03",
        ),
        ChatTile(
          imageUrl: AssetsImage.girlPic,
          name: "SSSA KUMARI",
          lastChat: "Bad me bat krte hai",
          lastTime: "09:23",
        ),
        ChatTile(
          imageUrl: AssetsImage.boyPic,
          name: "S KUMRI",
          lastChat: "Bad me bat krte hai",
          lastTime: "09:03",
        ),
        ChatTile(
          imageUrl: AssetsImage.girlPic,
          name: "SSSA KUMARI",
          lastChat: "Bad me bat krte hai",
          lastTime: "09:23",
        ),
      ],
    );
  }
}
