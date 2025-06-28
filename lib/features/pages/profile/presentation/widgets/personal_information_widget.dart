import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:milliy_shifo/features/pages/profile/presentation/pages/profiles.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PersonalInformationWidget extends StatefulWidget {
  @override
  State<PersonalInformationWidget> createState() =>
      _PersonalInformationWidgetState();
}

class _PersonalInformationWidgetState extends State<PersonalInformationWidget> {
  File? _image;
  String? _imageURL;
  final picker = ImagePicker();

  Future<void> imagepicker() async {
    final pickedimage = await picker.pickImage(source: ImageSource.gallery);

    if (pickedimage != null) {
      setState(() {
        _image = File(pickedimage.path);
      });
    }
  }

  Future<String?> uploadImage(File image) async {
    try {
      final uid = FirebaseAuth.instance.currentUser!.uid;
      final ref = FirebaseStorage.instance.ref().child(
        'profile_images/$uid.jpg',
      );
      final uploadTask = await ref.putFile(image);
      final downloadUrl = await ref.getDownloadURL();
      return downloadUrl;
    } catch (e) {
      print("Error: $e");
      return null;
    }
  }

  final TextEditingController nameController = TextEditingController();

  final TextEditingController lastnameController = TextEditingController();

  final TextEditingController dateController = TextEditingController();

  final TextEditingController numberController = TextEditingController();

  final TextEditingController cityController = TextEditingController();

  final TextEditingController adressController = TextEditingController();

  void addinfo() async {
    final name = nameController.text.trim();
    final lastname = lastnameController.text.trim();
    final date = dateController.text.trim();
    final numbers = numberController.text.trim();
    final city = cityController.text.trim();
    final adress = adressController.text.trim();

    if (name.isEmpty ||
        lastname.isEmpty ||
        date.isEmpty ||
        numbers.isEmpty ||
        city.isEmpty ||
        adress.isEmpty)
      return;
    final uid = FirebaseAuth.instance.currentUser!.uid;
    String? imageURL;
    if (_image != null) {
      imageURL = await uploadImage(_image!);
    }

    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('name', name);
    await prefs.setString('lastname', lastname);
    await prefs.setString('date', date);
    if (imageURL != null) {
      await prefs.setString('imageUrl', imageURL);
    }

    await FirebaseFirestore.instance.collection("profile").doc(uid).set({
      "name": name,
      "lastname": lastname,
      "date": date,
      "numbers": numbers,
      "imageURL": imageURL,
      "city": city,
      "adress": adress,
      "timestamp": FieldValue.serverTimestamp(),
    });
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => Profiles()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.only(left: 7.5, right: 7.5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    TextButton.icon(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      label: Text("Cancel", style: TextStyle(fontSize: 18)),
                    ),
                    Text(
                      "Personal information",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 19,
                      ),
                    ),
                    TextButton.icon(
                      onPressed: addinfo,
                      label: Text("Save", style: TextStyle(fontSize: 18)),
                    ),
                  ],
                ),

                Padding(
                  padding: EdgeInsets.only(top: 20, left: 100),
                  child: Column(
                    children: [
                      GestureDetector(
                        onTap: imagepicker,
                        child: CircleAvatar(
                          backgroundColor: Colors.amber,
                          radius: 50,
                          backgroundImage: _image != null
                              ? FileImage(_image!)
                              : null,
                          child: _image == null
                              ? Icon(
                                  Icons.camera_alt,
                                  size: 30,
                                  color: Colors.white,
                                )
                              : null,
                        ),
                      ),
                      TextButton.icon(
                        onPressed: () {},
                        label: Text(
                          "Delete photo",
                          style: TextStyle(fontSize: 18, color: Colors.red),
                        ),
                      ),
                    ],
                  ),
                ),
                Text(
                  "First name",
                  style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 5),
                TextField(
                  controller: nameController,
                  decoration: InputDecoration(
                    hintText: "Alexander",
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  "Last name",
                  style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 5),
                TextField(
                  controller: lastnameController,
                  decoration: InputDecoration(
                    hintText: "Johnson",
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  "Date of birth",
                  style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 5),
                TextField(
                  controller: dateController,
                  keyboardType: TextInputType.datetime,
                  decoration: InputDecoration(
                    hintText: "05/07/1989",
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  "Phone number",
                  style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 5),
                TextField(
                  controller: numberController,
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                    hintText: "+99855555555",
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  "City",
                  style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 5),
                TextField(
                  controller: cityController,
                  decoration: InputDecoration(
                    hintText: "Boston, MA",
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  "Address",
                  style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 5),
                TextField(
                  controller: adressController,
                  decoration: InputDecoration(
                    hintText: "Boylston St, Building 45, Apartment 3A",
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 10),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
