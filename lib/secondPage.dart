import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            // Eğer isterseniz, hizalamayı düzenleyebilirsiniz.
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // 1. Satır
              Row(
                children: [
                  FloatingActionButton(
                    onPressed: () {
                      // Örneğin, önceki sayfaya dönmek için:
                      Navigator.pop(context);
                    },
                    child: const Icon(Icons.arrow_back),
                  ),
                  const SizedBox(width: 10),
                  const Text("texttt"),
                  const SizedBox(width: 10),
                  FloatingActionButton(
                    onPressed: () {
                      // Buraya başka bir işlev ekleyebilirsiniz.
                    },
                    child: const Icon(Icons.arrow_forward),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              // 2. Satır
              Row(
                children: const [
                  Text("describe your video"),
                  SizedBox(width: 10),
                  Text("guide"),
                ],
              ),
              const SizedBox(height: 20),
              // 3. Satır: TextField
              Row(
                children: const [
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8.0),
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: "Enter text",
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              // 4. Satır: Video Duration
              const Row(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.0),
                    child: Text("video duration"),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              // 5. Satır: Dört adet FloatingActionButton
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  FloatingActionButton(
                    onPressed: () {},
                    child: const Icon(Icons.fast_rewind),
                  ),
                  FloatingActionButton(
                    onPressed: () {},
                    child: const Icon(Icons.play_arrow),
                  ),
                  FloatingActionButton(
                    onPressed: () {},
                    child: const Icon(Icons.pause),
                  ),
                  FloatingActionButton(
                    onPressed: () {},
                    child: const Icon(Icons.fast_forward),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              // 6. Satır: Video Size
              Row(
                children: const [
                  SizedBox(width: 8),
                  Text("video size"),
                  SizedBox(width: 10),
                  Icon(Icons.ac_unit_outlined),
                ],
              ),
              const SizedBox(height: 20),
              // 7. Satır: Dört adet FloatingActionButton (örnek farklı ikonlar)
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  FloatingActionButton(
                    onPressed: () {},
                    child: const Icon(Icons.zoom_out),
                  ),
                  FloatingActionButton(
                    onPressed: () {},
                    child: const Icon(Icons.zoom_in),
                  ),
                  FloatingActionButton(
                    onPressed: () {},
                    child: const Icon(Icons.aspect_ratio),
                  ),
                  FloatingActionButton(
                    onPressed: () {},
                    child: const Icon(Icons.fullscreen),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              // 8. Satır: Loop Ayarı
              Row(
                children: [
                  const SizedBox(width: 8),
                  const Text("loop"),
                  const SizedBox(width: 10),
                  const Icon(Icons.loop),
                  Switch(
                    value: true,
                    onChanged: (bool value) {
                      // Switch değişikliği işlevi
                      setState(() {
                        // Örneğin, bir değişken güncelleyebilirsiniz.
                      });
                    },
                  ),
                ],
              ),
              const SizedBox(height: 20),
              // 9. Satır: İkinci Loop (örnek başka bir ayar)
              Row(
                children: [
                  const SizedBox(width: 8),
                  const Text("some option"),
                  const SizedBox(width: 10),
                  const Icon(Icons.settings),
                  Switch(
                    value: false,
                    onChanged: (bool value) {
                      setState(() {});
                    },
                  ),
                ],
              ),
              const SizedBox(height: 20),
              // 10. Satır: İki adet FloatingActionButton
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  FloatingActionButton(
                    onPressed: () {},
                    child: const Icon(Icons.check),
                  ),
                  FloatingActionButton(
                    onPressed: () {},
                    child: const Icon(Icons.cancel),
                  ),
                ],
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
