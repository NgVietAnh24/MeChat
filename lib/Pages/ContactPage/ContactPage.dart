import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mechat/Pages/ContactPage/Widgets/ContactSearch.dart';
import 'package:mechat/Pages/ContactPage/Widgets/NewContactTile.dart';

import '../../Config/imges.dart';
import '../Home/Widgets/ChatTile.dart';

class Contactpage extends StatelessWidget {
  const Contactpage({super.key});

  @override
  Widget build(BuildContext context) {
    RxBool isSearchEnable = false.obs;
    return Scaffold(
      appBar: AppBar(
        title: Text("Select contact"),
        actions: [
          Obx(
            () => IconButton(
              onPressed: () {
                isSearchEnable.value = !isSearchEnable.value;
              },
              icon:
                  isSearchEnable.value ? Icon(Icons.close) : Icon(Icons.search),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: [
            Obx(
              () => isSearchEnable.value ? ContactSearch() : SizedBox(),
            ),
            SizedBox(
              height: 10,
            ),
            NewContactTile(
              btnName: "New Contact",
              icon: Icons.person_add,
              onTap: () {},
            ),
            SizedBox(
              height: 10,
            ),
            NewContactTile(
              btnName: "New Group",
              icon: Icons.group_add,
              onTap: () {},
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Text("Contacts on Sampark"),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Column(
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
              ],
            ),
          ],
        ),
      ),
    );
  }
}
