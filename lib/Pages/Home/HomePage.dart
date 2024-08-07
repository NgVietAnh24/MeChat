import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:mechat/Config/String.dart';
import 'package:mechat/Config/imges.dart';
import 'package:mechat/Controller/ImagePicker.dart';
import 'package:mechat/Pages/Home/Widgets/ChatsList.dart';
import 'package:mechat/Pages/Home/Widgets/TableBar.dart';
import 'package:mechat/Pages/ProfilePage/ProfilePage.dart';

import '../../Controller/ProfileController.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController tabController = TabController(length: 3, vsync: this);
    ProfileController profileController = Get.put(ProfileController());

    ImagePickerController imagePickerController =
        Get.put(ImagePickerController());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primaryContainer,
        title: Text(
          AppString.appName,
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SvgPicture.asset(
            AssetsImage.appIconSVG,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              imagePickerController.pickImage();
            },
            icon: Icon(
              Icons.search,
            ),
          ),
          IconButton(
            onPressed: () async {
              // Get.toNamed("/profilePage");
              await profileController.getUserDetails();
              Get.to(ProfilePage());
            },
            icon: Icon(
              Icons.more_vert,
            ),
          ),
        ],
        bottom: myTabBar(tabController, context),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.toNamed("/contactPage");
        },
        backgroundColor: Theme.of(context).colorScheme.primary,
        child: Icon(Icons.add),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: TabBarView(
          controller: tabController,
          children: [
            ChatsList(),
            ListView(
              children: [
                ListTile(
                  title: Text("Name Nitish"),
                ),
              ],
            ),
            ListView(
              children: [
                ListTile(
                  title: Text("Name Nitish"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
