import 'package:flutter/material.dart';
import 'package:milliy_shifo/features/pages/MSheducation/presentation/pages/searchScreen.dart';
import 'package:milliy_shifo/features/pages/MSheducation/presentation/widgets/coursecard_widget.dart';
import 'package:milliy_shifo/features/pages/MSheducation/presentation/widgets/filterChipWidget.dart';

class KirishQoshl extends StatelessWidget {
  const KirishQoshl({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F8FF),
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Color(0xFF1B1C3B)),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          'Hi, ALEX',
          style: TextStyle(
            color: Color(0xFF1B1C3B),
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications, color: Color(0xFF1B1C3B)),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: ListView(
          children: [
            const Text(
              'What Would you like to learn Today?\nSearch Below.',
              style: TextStyle(fontSize: 14, color: Colors.grey),
            ),
            const SizedBox(height: 20),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(14),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade300,
                    blurRadius: 10,
                    offset: const Offset(0, 5),
                  ),
                ],
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      child: TextField(
                        onSubmitted: (value) => _navigateToSearch(context),
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Search for..',
                        ),
                      ),
                    ),
                  ),
                  IconButton(
                    icon: const Icon(Icons.search, color: Colors.blue),
                    onPressed: () => _navigateToSearch(context),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: const Color(0xFF007DFE),
                borderRadius: BorderRadius.circular(20),
              ),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '25% OFF*',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                  SizedBox(height: 5),
                  Text(
                    'Today’s Special',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Get a Discount for Every\nCourse Order only Valid for Today.!',
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 25),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Categories',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Text('SEE ALL', style: TextStyle(color: Colors.blue)),
              ],
            ),
            const SizedBox(height: 12),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  '3D Design',
                  style: TextStyle(color: Colors.grey, fontSize: 15),
                ),
                Text(
                  'Arts & Humanities',
                  style: TextStyle(color: Colors.blue, fontSize: 15),
                ),
                Text(
                  'Graphic Design',
                  style: TextStyle(color: Colors.grey, fontSize: 15),
                ),
              ],
            ),
            const SizedBox(height: 25),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Popular Courses',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Text('SEE ALL', style: TextStyle(color: Colors.blue)),
              ],
            ),
            const SizedBox(height: 12),
            const Wrap(
              spacing: 8,
              children: [
                FilterChipWidget(label: 'All', selected: false),
                FilterChipWidget(label: 'Graphic Design', selected: true),
                FilterChipWidget(label: '3D Design', selected: false),
                FilterChipWidget(label: 'Arts &...', selected: false),
              ],
            ),
            const SizedBox(height: 20),
            const Row(
              children: [
                Expanded(
                  child: CoursecardWidget(
                    title: 'Graphic Design Advanced',
                    price: '850/-',
                    rating: '4.2',
                    students: '7830 Std',
                  ),
                ),
                SizedBox(width: 12),
                Expanded(
                  child: CoursecardWidget(
                    title: 'Advertisement Design',
                    price: '400/-',
                    rating: '4.0',
                    students: '2500 Std',
                  ),
                ),
              ],
            ),
            const SizedBox(height: 25),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Top Mentor',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'SEE ALL ▶️',
                    style: TextStyle(color: Colors.blue),
                  ),
                ),
              ],
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                // Mentor 1
                _MentorCard(name: 'Jiya', imagePath: 'assets/logos/edu.png'),
                _MentorCard(
                  name: 'Aman',
                  imagePath: 'assets/logos/keycloak.png',
                ),
                _MentorCard(
                  name: 'Rahul.J',
                  imagePath: 'assets/logos/workOS.png',
                ),
                _MentorCard(name: 'Manav', imagePath: 'assets/logos/myedu.png'),
              ],
            ),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }

  void _navigateToSearch(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => SearchScreen()),
    );
  }
}

class _MentorCard extends StatelessWidget {
  final String name;
  final String imagePath;

  const _MentorCard({required this.name, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 60,
          height: 60,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            image: DecorationImage(
              image: AssetImage(imagePath),
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(height: 6),
        Text(name, style: const TextStyle(fontSize: 12)),
      ],
    );
  }
}
