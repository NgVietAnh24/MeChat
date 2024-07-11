import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:mechat/Model/UserModel.dart';
import 'package:firebase_storage/firebase_storage.dart';

class ProfileController extends GetxController {
  final auth = FirebaseAuth.instance;
  final db = FirebaseFirestore.instance;
  final store = FirebaseStorage.instance;
  RxBool isLoading = false.obs;
  Rx<UserModel> currentUser = UserModel().obs;

  @override
  void onInit() {
    super.onInit();
    getUserDetails();
  }

  Future<void> getUserDetails() async {
    try {
      DocumentSnapshot document = await db.collection("users").doc(auth.currentUser!.uid).get();
      if (document.exists) {
        currentUser.value = UserModel.fromJson(document.data() as Map<String, dynamic>);
      } else {
        print("Document does not exist");
      }
    } catch (e) {
      print(e.toString());
    }
  }

  Future<void> updateProfile(String imageUrl, String name, String about, String number) async {
    isLoading.value = true;
    try {
      final imageLink = await uploadFileToFirebase(imageUrl);
      final updateUser = UserModel(
        id: auth.currentUser!.uid,
        email: currentUser.value.email,
        name: name,
        about: about,
        profileImage: imageLink,
        phoneNumber: number,
      );
      await db.collection("users").doc(auth.currentUser!.uid).set(updateUser.toJson());
    } catch (ex) {
      print(ex);
    } finally {
      isLoading.value = false;
    }
  }

  Future<String> uploadFileToFirebase(String imagePath) async {
    final path = "file/${auth.currentUser!.uid}/${DateTime.now().millisecondsSinceEpoch}";
    final file = File(imagePath);
    if (imagePath.isNotEmpty) {
      try {
        final ref = store.ref().child(path);
        await ref.putFile(file);
        final downloadUrl = await ref.getDownloadURL();
        return downloadUrl;
      } catch (ex) {
        print(ex);
      }
    }
    return "";
  }
}
