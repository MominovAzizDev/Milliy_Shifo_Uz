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

  void _goToNextPage() {
    if (_currentPage > 2) {
      _pageController.nextPage(
        duration: Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _pageController,
            children: [
              _buildPage(
                image: 'assets/logos/edu.png',
                title: 'Onlayn ta’lim',
                description:
                    'Biz sizga onlayn darslar va oldindan yozib olingan video saboqlarni taqdim etamiz.',
              ),
              _buildPage(
                image: 'assets/logos/shifo.jpg',
                title: 'Istalgan vaqtda o‘rganing',
                description:
                    'Saboqlarga istalgan joydan va istalgan vaqtda osongina kirish imkoniyati.',
              ),
              _buildPage(
                image: 'assets/logos/onlayn.png',
                title: 'Onlayn sertifikatga ega bo‘ling',
                description:
                    'Natijalaringizni tahlil qiling va o‘z yutuqlaringizni kuzatib boring.',
              ),
            ],
          ),

          Positioned(
            bottom: 30,
            left: 16,
            child: Row(
              children: List.generate(
                3,
                (index) => AnimatedContainer(
                  duration: Duration(milliseconds: 300),
                  margin: EdgeInsets.symmetric(horizontal: 4),
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
              onPressed: _currentPage < 2
                  ? () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => KirishQoshl()),
                      );
                    }
                  : _goToNextPage,
              icon: Icon(Icons.arrow_forward_ios),
              color: Colors.teal,
            ),
          ),
        ],
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
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 160),
            Container(
              height: 240,
              width: 240,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    blurRadius: 10,
                    offset: Offset(0, 5),
                  ),
                ],
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(image, fit: BoxFit.cover),
              ),
            ),
            SizedBox(height: 130),
            Text(
              title,
              style: const TextStyle(fontSize: 27, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 8),
            Text(
              description,
              style: TextStyle(fontSize: 17),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}