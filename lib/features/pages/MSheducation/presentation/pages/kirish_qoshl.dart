import 'package:flutter/material.dart';
import 'package:milliy_shifo/features/pages/MSheducation/presentation/pages/searchScreen.dart';
import 'package:milliy_shifo/features/pages/MSheducation/presentation/widgets/coursecard_widget.dart';
import 'package:milliy_shifo/features/pages/MSheducation/presentation/widgets/filterChipWidget.dart';

class KirishQoshl extends StatelessWidget {
  const KirishQoshl({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xFFF5F8FF),
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: const Text(
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'Categories',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Text('SEE ALL', style: TextStyle(color: Colors.blue)),
                ],
              ),
              const SizedBox(height: 12),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'Popular Courses',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Text('SEE ALL', style: TextStyle(color: Colors.blue)),
                ],
              ),
              const SizedBox(height: 12),
              Wrap(
                spacing: 8,
                children: const [
                  FilterChipWidget(label: 'All', selected: false),
                  FilterChipWidget(label: 'Graphic Design', selected: true),
                  FilterChipWidget(label: '3D Design', selected: false),
                  FilterChipWidget(label: 'Arts &...', selected: false),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                children: const [
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
              SizedBox(height: 25),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Top Mentor',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 12),
                  Row(
                    children: [
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'SEE ALL ▶️',
                          style: TextStyle(color: Colors.blue),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Container(
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          image: const DecorationImage(
                            image: AssetImage('assets/logos/edu.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const SizedBox(height: 6),
                      const Text('Jiya', style: TextStyle(fontSize: 12)),
                    ],
                  ),
                  // Mentor 2
                  Column(
                    children: [
                      Container(
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          image: const DecorationImage(
                            image: AssetImage('assets/logos/keycloak.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const SizedBox(height: 6),
                      const Text('Aman', style: TextStyle(fontSize: 12)),
                    ],
                  ),
                  // Mentor 3
                  Column(
                    children: [
                      Container(
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          image: const DecorationImage(
                            image: AssetImage('assets/logos/workOS.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const SizedBox(height: 6),
                      const Text('Rahul.J', style: TextStyle(fontSize: 12)),
                    ],
                  ),
                  // Mentor 4
                  Column(
                    children: [
                      Container(
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          image: const DecorationImage(
                            image: AssetImage('assets/logos/myedu.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const SizedBox(height: 6),
                      const Text('Manav', style: TextStyle(fontSize: 12)),
                    ],
                  ),
                ],
              ),

              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}

void _navigateToSearch(BuildContext context) {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => SearchScreen()),
  );
}
