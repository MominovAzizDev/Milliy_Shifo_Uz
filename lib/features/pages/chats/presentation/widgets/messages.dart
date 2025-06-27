import 'package:flutter/material.dart';

class Messages extends StatelessWidget {
  final String images;
  final String namesof;
  final String textof;

  const Messages({
    super.key,
    required this.images,
    required this.namesof,
    required this.textof,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(radius: 30, backgroundImage: AssetImage(images)),
      title: Text(namesof),
      subtitle: Text(textof),
    );
  }
}
