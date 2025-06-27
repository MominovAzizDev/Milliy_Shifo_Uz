import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:milliy_shifo/core/utils/app_colors.dart';
import 'package:milliy_shifo/features/pages/chats/presentation/widgets/messages.dart';

class AccauntsPage extends StatefulWidget {
  final String chatId;

  const AccauntsPage({super.key, required this.chatId});

  @override
  State<AccauntsPage> createState() => _AccauntsPageState();
}

class _AccauntsPageState extends State<AccauntsPage> {
  final TextEditingController sendmessages = TextEditingController();

  void addmessages() async {
    final messageText = sendmessages.text.trim();

    if (messageText.isEmpty) return;
    await FirebaseFirestore.instance
        .collection("chats")
        .doc(widget.chatId)
        .collection("messages")
        .add({
          "sender": "me",
          "text": messageText,
          "timestamp": FieldValue.serverTimestamp(),
        });
    sendmessages.clear();
  }


  @override
  void dispose() {
    sendmessages.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: CircleAvatar(
          radius: 30,
          backgroundImage: AssetImage("assets/doctors/cardimage.jpg"),
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Aziz",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(
              "online",
              style: TextStyle(color: AppColors.enterButtonBack, fontSize: 17),
            ),
          ],
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.call)),
          IconButton(onPressed: () {}, icon: Icon(Icons.video_call)),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: StreamBuilder<QuerySnapshot>(
              stream: FirebaseFirestore.instance
                  .collection("chats")
                  .doc(widget.chatId)
                  .collection("messages")
                  .orderBy("timestamp")
                  .snapshots(),
              builder: (context, snapshot) {
                if (!snapshot.hasData)
                  return Center(child: CircularProgressIndicator());

                final docs = snapshot.data!.docs;

                return ListView.builder(
                  itemCount: docs.length,
                  itemBuilder: (context, index) {
                    final data = docs[index].data() as Map<String, dynamic>;
                    return Messages(
                      images: data["sender"] == "me"
                          ? "assets/doctors/cardimage.jpg"
                          : "assets/doctors/doctorimagetwo.png",
                      namesof: data["sender"],
                      textof: data["text"],
                    );
                  },
                );
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              children: [
                IconButton(onPressed: () {}, icon: Icon(Icons.attach_file)),
                IconButton(onPressed: () {}, icon: Icon(Icons.keyboard_voice)),
                Expanded(
                  child: TextField(
                    onSubmitted: (_) => addmessages(),
                    controller: sendmessages,
                    decoration: InputDecoration(
                      hintText: "Type your message...",
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                IconButton(onPressed: addmessages, icon: Icon(Icons.send)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}