import 'package:flutter/material.dart';
import 'package:milliy_shifo/core/utils/app_colors.dart';
import 'package:milliy_shifo/features/pages/notifications/presentation/widgets/notification_widget.dart';

class Notifications extends StatefulWidget {
  const Notifications({super.key});

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        actions: [
          TextButton(
            onPressed: () {},
            child: Text(
              "Read all",
              style: TextStyle(
                color: AppColors.enterButtonBack,
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: 10, right: 5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 20),
                child: Text(
                  "Notifications",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              NotificationWidget(
                icons: Icons.calendar_today,
                title: "Your Visit Has Been Rescheduled",
                subtitle:
                    "Your visit to Dr. Smith is rescheduled to 3:00 PM on December 15th.",
              ),
              NotificationWidget(
                icons: Icons.access_time_rounded,
                title: "Time to Take Your Medicine",
                subtitle:
                    "Don't forget to take : 50mg of Antibiotic. Stay on track with your treatment!",
              ),
              NotificationWidget(
                icons: Icons.laptop,
                title: "Appointment Reminder",
                subtitle:
                    "Your virtual visit with Dr. Lee is scheduled for tomorrow at 10:00 AM.",
              ),
              NotificationWidget(
                icons: Icons.help_outline,
                title: "Only 2 pills of AmoxiCare left",
                subtitle: "Time to refill your prescription! Go to e-pharmacy",
              ),
              NotificationWidget(
                icons: Icons.calendar_today,
                title: "Your Visit Has Been Rescheduled",
                subtitle:
                    "Your visit to Dr. Smith is rescheduled to 3:00 PM on December 15th.",
              ),
              NotificationWidget(
                icons: Icons.account_circle_outlined,
                title: "Card expired",
                subtitle:
                    "Your policy has expired. Please renew it as soon as possible to restore coverage.",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
