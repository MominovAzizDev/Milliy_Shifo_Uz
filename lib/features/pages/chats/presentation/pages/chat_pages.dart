import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import '../widgets/listofchats.dart';

import '../../../../../../core/utils/mediaquery_meneger.dart';
import 'accaunts_page.dart';

class ChatPages extends StatefulWidget {
  const ChatPages({super.key});

  @override
  State<ChatPages> createState() => _ChatPagesState();
}

Future<void> addContactsFirebase({
  required String name,
  required String surename,
}) async {
  final docId = name.replaceAll(" ", "_").toLowerCase();

  await FirebaseFirestore.instance.collection("contacts").doc(docId).set({
    "name": name,
    "surename": surename,
    "timestamp": FieldValue.serverTimestamp(),
  });
}

class _ChatPagesState extends State<ChatPages> {
  void addContacts() {
    TextEditingController nameController = TextEditingController();
    TextEditingController surenameController = TextEditingController();

    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text("Add new Doctor"),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: nameController,
                decoration: InputDecoration(
                  hintText: "Doctor name",
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 10),
              TextField(
                controller: surenameController,
                decoration: InputDecoration(
                  hintText: "Doctor surename",
                  border: OutlineInputBorder(),
                ),
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text("Cancel"),
            ),
            ElevatedButton(
              onPressed: () async {
                final String name = nameController.text.trim();
                final String surename = surenameController.text.trim();

                if (name.isNotEmpty && surename.isNotEmpty) {
                  await addContactsFirebase(name: name, surename: surename);
                  Navigator.of(context).pop();
                }
              },
              child: Text("Add"),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          "Messages",
          style: TextStyle(
            fontSize: MediaqueryMeneger.fontSize(25),
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(8),
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search),
                hintText: "Search by name",
                border: OutlineInputBorder(),
              ),
            ),
          ),
          Expanded(
            child: StreamBuilder<QuerySnapshot>(
              stream: FirebaseFirestore.instance
                  .collection("contacts")
                  .orderBy("timestamp", descending: true)
                  .snapshots(),
              builder: (context, snapshot) {
                if (!snapshot.hasData) {
                  return Center(child: CircularProgressIndicator());
                }
                final docs = snapshot.data!.docs;

               return ListView.separated(
                  itemCount: docs.length,
                  separatorBuilder: (_, _) => SizedBox(height: 5),
                  itemBuilder: (BuildContext context, int index) {
                    final data = docs[index].data() as Map<String, dynamic>;
                    return Listofchats(
                      names: data["name"],
                      surename: data["surename"] ?? "",
                      linkofpage: AccauntsPage(chatId: "me_${data["name"]}"),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          addContacts();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
