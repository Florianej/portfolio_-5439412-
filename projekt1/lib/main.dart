import 'package:flutter/material.dart';
import 'pages/fahigkeit_page.dart';
import 'pages/ubermich_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'FlorianeDevFlutter',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final ScrollController _scrollController = ScrollController();

  void _scrollToSection(GlobalKey key) {
    final context = key.currentContext;
    if (context != null) {
      Scrollable.ensureVisible(context,
          duration: const Duration(seconds: 1), curve: Curves.easeInOut);
    }
  }

  final GlobalKey _homeKey = GlobalKey();
  final GlobalKey _skillsKey = GlobalKey();
  final GlobalKey _contactKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flo'),
        actions: [
          TextButton(
            onPressed: () => _scrollToSection(_homeKey),
            child: const Text(
              'Startseite',
              style: TextStyle(color: Colors.black),
            ),
          ),
          TextButton(
            onPressed: () => _scrollToSection(_skillsKey),
            child: const Text(
              'Fähigkeiten',
              style: TextStyle(color: Colors.black),
            ),
          ),
          TextButton(
            onPressed: () => _scrollToSection(_contactKey),
            child: const Text(
              'Kontakt',
              style: TextStyle(color: Colors.black),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        controller: _scrollController,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                key: _homeKey,
                child: Column(
                  children: [
                    const CircleAvatar(
                      radius: 100,
                      backgroundImage: AssetImage('assets/images/IMG_1747_pp (1).JPG'),
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      'Hallo! ich bin Floriane',
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Text(
                      'Ein Entwicklerin_',
                      style: TextStyle(
                        fontSize: 28,
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      'Ich bin ein Student in Deutschland mit einer Leidenschaft für Programmierung und Design,',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 18),
                    ),
                    const Text(
                      'von dem Wunsch getrieben, innovativ zu sein und Ideen durch Code in die Realität umzusetzen.',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 18),
                    ),
                    const SizedBox(height: 20),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            Text('Email:'),
                            Text('floriane.kaptoum.djuidje@mnd.thm.de'),
                          ],
                        ),
                        SizedBox(width: 40),
                        Column(
                          children: [
                            Text('LinkedIn:'),
                            Text('linkedin.com/in/floriane-kaptoum-261719255'),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () {},
                      child: const Text('Download CV'),
                    ),
                    const SizedBox(height: 100),
                  ],
                ),
              ),
              Container(
                key: _skillsKey,
                child: const FahigkeitPage(),
              ),
              const SizedBox(height: 100),
              Container(
                key: _contactKey,
                child: const ContactPage(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}