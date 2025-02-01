import 'package:flutter/material.dart';
import 'package:flutter_application_1/secondPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late double screenWidth;
  late double screenHeight;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    // Ekran boyutlarını burada alıyoruz
    screenWidth = MediaQuery.of(context).size.width;
    screenHeight = MediaQuery.of(context).size.height;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF815EEA),
      // Center yerine SizedBox.expand kullanarak tam ekran alan sağlıyoruz.
      body: SizedBox.expand(
        child: Stack(
          children: [
            // Üstteki pembe alan
            Container(
              color: Colors.pink,
              width: screenWidth,
              height: screenHeight * 0.175,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Text("VOISER"),
                  FloatingActionButton(onPressed: () {}),
                  FloatingActionButton(onPressed: () {}),
                  FloatingActionButton(onPressed: () {}),
                ],
              ),
            ),
            // Alt kısım arka planı (tek renk)
            Container(
              width: screenWidth,
              height: screenHeight,
              margin: const EdgeInsets.only(top: 120),
              padding:
                  const EdgeInsets.symmetric(horizontal: 8.0, vertical: 14.0),
              decoration: BoxDecoration(
                color: const Color(0xFF191D1E),
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: Container(
                // İçerik için Row
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // Sol sütun
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Card(
                          color: const Color(0xFF1F2223),
                          elevation: 2,
                          child: Container(
                            height: screenHeight * 0.16,
                            width: screenWidth * 0.43,
                            child: const Center(child: Text('Card 1')),
                          ),
                        ),
                        Card(
                          color: const Color(0xFF1F2223),
                          elevation: 2,
                          child: Container(
                            height: screenHeight * 0.394,
                            width: screenWidth * 0.43,
                            child: const Center(child: Text('Card 2')),
                          ),
                        ),
                        Card(
                          color: const Color(0xFF1F2223),
                          elevation: 2,
                          child: Container(
                            height: screenHeight * 0.145,
                            width: screenWidth * 0.43,
                            child: const Center(child: Text('Card 3')),
                          ),
                        ),
                      ],
                    ),
                    // Sağ sütun
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Card(
                          color: const Color(0xFF1F2223),
                          elevation: 2,
                          child: Container(
                            height: screenHeight * 0.42,
                            width: screenWidth * 0.43,
                            child: const Center(child: Text('Card 4')),
                          ),
                        ),
                        Card(
                          color: const Color(0xFF1F2223),
                          elevation: 2,
                          child: Container(
                            height: screenHeight * 0.30,
                            width: screenWidth * 0.43,
                            child: const Center(child: Text('Card 5')),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            // Üst üste bindirilmiş yarı saydam gradient katmanı
            Container(
              width: screenWidth,
              height: screenHeight,
              margin: const EdgeInsets.only(top: 120),
              padding:
                  const EdgeInsets.symmetric(horizontal: 8.0, vertical: 14.0),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    const Color(0xFF191D1E).withOpacity(0.0),
                    const Color(0xFF191D1E).withOpacity(0.7),
                    const Color(0xFF191D1E).withOpacity(1.0),
                  ],
                ),
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
            ),
            // İçerik: Metinler, özel tasarımlı buton ve FloatingActionButton'lar
            Container(
              width: screenWidth,
              height: screenHeight,
              margin: const EdgeInsets.only(top: 120),
              padding:
                  const EdgeInsets.symmetric(horizontal: 8.0, vertical: 14.0),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Nothin Here Yet",
                    style: TextStyle(color: Colors.white),
                  ),
                  const Text(
                    "Nothin Here Yet",
                    style: TextStyle(color: Colors.white),
                  ),
                  const SizedBox(height: 20),
                  Container(
                    decoration: const BoxDecoration(
                      color: Colors.purple, // Arka plan rengi mor
                      shape:
                          BoxShape.circle, // Butonun yuvarlak olmasını sağlar
                    ),
                    child: IconButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => SecondPage()),
                        );
                      },
                      icon: const Icon(Icons.add, color: Colors.white),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      FloatingActionButton(
                        onPressed: () {},
                      ),
                      FloatingActionButton(
                        onPressed: () {},
                      ),
                      FloatingActionButton(
                        onPressed: () {},
                      ),
                    ],
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
