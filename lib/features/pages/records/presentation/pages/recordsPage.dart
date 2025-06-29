import 'package:flutter/material.dart';
import '/features/pages/records/presentation/widgets/recordsCard_widget.dart';

class Recordspage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 3,

        title: Text(
          'Medical records',
          style: TextStyle(color: Colors.black87, fontSize: 18),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade200,
                    blurRadius: 10,
                    offset: const Offset(0, 5),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                children: [
                  RecordscardWidget(
                    title: 'Prescriptions',
                    image: 'assets/icons/medication.png',
                  ),
                  RecordscardWidget(
                    title: 'Lab reports',
                    image: 'assets/icons/microscope.png',
                  ),
                  RecordscardWidget(
                    title: 'Health metrics',
                    image: 'assets/icons/note.png',
                  ),
                  RecordscardWidget(
                    title: 'Visit summeries',
                    image: 'assets/icons/tracker.png',
                  ),
                  RecordscardWidget(
                    title: 'Drug',
                    image: 'assets/icons/fampay.svg',
                  ),
                  RecordscardWidget(
                    title: 'My Family',
                    image: 'assets/icons/drupal.svg',
                  ),
                  RecordscardWidget(
                    title: 'Chat archive',
                    image: 'assets/icons/internetarchive.svg',
                  ),
                  RecordscardWidget(
                    title: 'Statistics',
                    image: 'assets/icons/boehringeringelheim.svg',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
