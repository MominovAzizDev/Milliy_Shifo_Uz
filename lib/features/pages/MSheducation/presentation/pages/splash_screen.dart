import 'package:flutter/material.dart';
import 'package:milliy_shifo/features/pages/MSheducation/presentation/pages/kirish_qoshl.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  final List<Map<String, String>> _splashData = [
    {
      'image': 'assets/logos/edu.png',
      'title': 'Onlayn ta’lim',
      'description':
          'Biz sizga onlayn darslar va oldindan yozib olingan video saboqlarni taqdim etamiz.',
    },
    {
      'image': 'assets/logos/shifo.jpg',
      'title': 'Istalgan vaqtda o‘rganing',
      'description':
          'Saboqlarga istalgan joydan va istalgan vaqtda osongina kirish imkoniyati.',
    },
    {
      'image': 'assets/logos/onlayn.png',
      'title': 'Onlayn sertifikatga ega bo‘ling',
      'description':
          'Natijalaringizni tahlil qiling va o‘z yutuqlaringizni kuzatib boring.',
    },
  ];

  @override
  void initState() {
    super.initState();
    _pageController.addListener(() {
      int next = _pageController.page!.round();
      if (_currentPage != next) {
        setState(() {
          _currentPage = next;
        });
      }
    });
  }

  void _goToKirishQoshl(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (_) => const KirishQoshl()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        // Bu yerga istalgan oldingi sahifaga qaytish funksiyasini yozish mumkin
        Navigator.pop(context); // orqaga qayt
        return false; // avtomatik chiqib ketishni to‘xtatish
      },
      child: Scaffold(
        body: Stack(
          children: [
            PageView.builder(
              controller: _pageController,
              itemCount: _splashData.length,
              itemBuilder: (context, index) {
                final data = _splashData[index];
                return _buildPage(
                  image: data['image']!,
                  title: data['title']!,
                  description: data['description']!,
                );
              },
            ),
            // indicatorlar
            Positioned(
              bottom: 30,
              left: 16,
              child: Row(
                children: List.generate(
                  _splashData.length,
                  (index) => AnimatedContainer(
                    duration: const Duration(milliseconds: 300),
                    margin: const EdgeInsets.symmetric(horizontal: 4),
                    width: _currentPage == index ? 20 : 10,
                    height: 10,
                    decoration: BoxDecoration(
                      color: _currentPage == index
                          ? Colors.teal
                          : Colors.grey.shade400,
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 20,
              right: 16,
              child: IconButton(
                onPressed: () => _goToKirishQoshl(context),
                icon: const Icon(Icons.arrow_forward_ios),
                color: Colors.teal,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPage({
    required String title,
    required String description,
    required String image,
  }) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            const SizedBox(height: 160),
            Container(
              height: 240,
              width: 240,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    blurRadius: 10,
                    offset: const Offset(0, 5),
                  ),
                ],
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(image, fit: BoxFit.cover),
              ),
            ),
            const SizedBox(height: 130),
            Text(
              title,
              style: const TextStyle(fontSize: 27, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 8),
            Text(
              description,
              style: const TextStyle(fontSize: 17),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}
