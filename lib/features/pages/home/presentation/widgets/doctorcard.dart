import 'package:flutter/material.dart';
import 'package:milliy_shifo/core/utils/app_colors.dart';
import 'package:milliy_shifo/core/utils/mediaquery_meneger.dart';
import 'package:milliy_shifo/features/pages/register/presentation/widgets/enter_main_button.dart';
import '../../../chats/presentation/pages/accaunts_page.dart';


class Doctorcard extends StatelessWidget {
  final String images;
  final String name;
  final String jobs;
  final String day;
  final String typeofmeeting;

  const Doctorcard({
    super.key,
    required this.images,
    required this.name,
    required this.jobs,
    required this.day,
    required this.typeofmeeting,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaqueryMeneger.height(22),
      child: Card(
        child: Column(
          children: [
            ListTile(
              leading: CircleAvatar(
                maxRadius: 30,
                backgroundImage: AssetImage(images),
              ),
              title: Text(
                name,
                style: TextStyle(fontSize: MediaqueryMeneger.fontSize(20)),
              ),
              subtitle: Text(
                jobs,
                style: TextStyle(fontSize: MediaqueryMeneger.fontSize(15)),
              ),
              trailing: IconButton(
                onPressed: () {},
                icon: Icon(Icons.more_vert),
              ),
            ),
            ListTile(
              title: Row(
                children: [
                  Icon(Icons.calendar_month, color: AppColors.enterButtonBack),
                  SizedBox(width: 10),
                  Text(
                    day,
                    style: TextStyle(fontSize: MediaqueryMeneger.fontSize(13)),
                  ),
                ],
              ),
              subtitle: Row(
                children: [
                  Icon(Icons.laptop, color: AppColors.enterButtonBack),
                  SizedBox(width: 10),
                  Text(
                    typeofmeeting,
                    style: TextStyle(fontSize: MediaqueryMeneger.fontSize(15)),
                  ),
                ],
              ),
              trailing: EnterMainButtonPage(
                labels: "Chat",
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => AccauntsPage(chatId: "me_$name"),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
