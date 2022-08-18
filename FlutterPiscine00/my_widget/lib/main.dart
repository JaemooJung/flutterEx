import 'package:flutter/material.dart';
import 'package:my_widget/blur_image.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final String _squidLogoUrl =
      'https://w.namu.la/s/420422c9668360c3654fb8d4ba4b4921a22a8732d660e08d81cfa5281035aae6573a4f61927aaeecdcf6ee911af6ea5a4aa49bef54be3f63ada78ac5f914e1cfb4b78e644e2190944fb886f2688ffb91';
  final String _squidPosterUrl =
      'https://uyjoqvxyzgvv9714092.cdn.ntruss.com/data2/content/image/2021/10/07/.cache/512/20211007320109.jpg';

  @override
  Widget build(BuildContext context) {
    return Stack (        
        children: [
          BlurImage(
            imageUrl: _squidPosterUrl,
          ),
          Column (
            children: [
              Padding(
                padding: const EdgeInsets.all(50),
                child: Image.network(
                  _squidLogoUrl,
                ),
              ),
              const Spacer(),
            ],
          ),
        ],
    );
  }
}
