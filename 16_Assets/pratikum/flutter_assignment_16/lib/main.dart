import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Assignment 16',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Assets Assignment'),
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
  final _url = [
    'https://photo-cdn2.icons8.com/YHF8ED9S18XL8DQzu_z131JTLu6LcxYHSQfT1UtEQ7c/rs:fit:1429:1072/czM6Ly9pY29uczgu/bW9vc2UtcHJvZC5l/eHRlcm5hbC9hMmE0/Mi8wYmVlZmRjZDY3/ZDk0OTgzODYxYTNh/ZjFjMDNiYmIyMy5q/cGc.jpg',
    'https://photo-cdn2.icons8.com/IDrcC__7Y1aduUgom2iD2CcKKbbfeghB3ajVNBg-iF8/rs:fit:1607:1072/czM6Ly9pY29uczgu/bW9vc2UtcHJvZC5l/eHRlcm5hbC9hMmE0/Mi9iOGUyMTljZjM4/Yjc0NjExYjgzZmYw/ZjFmOWVhNjJhZi5q/cGc.jpg',
    'https://photo-cdn2.icons8.com/4C1dCA8dP9HPnthKvCgyKgB2LLy0horwvSQ-oLJ-3go/rs:fit:1608:1072/czM6Ly9pY29uczgu/bW9vc2UtcHJvZC5l/eHRlcm5hbC9hMmE0/Mi9hOTQwMTdiYzg0/NTM0Yzg1OThkN2Jk/NGYyYjQ2ZDM0MS5q/cGc.jpg',
    'https://photo-cdn2.icons8.com/WnXRwfEnQcxuLukBRnOTEKiCwisNu1Q1jjs9_R_2uto/rs:fit:1608:1072/czM6Ly9pY29uczgu/bW9vc2UtcHJvZC5l/eHRlcm5hbC9hMmE0/Mi85ZDZiNGQ5ODc3/YjE0ZTg4YjE5ZDI5/NTc5MjE0ZDZhZi5q/cGc.jpg',
    'https://photo-cdn2.icons8.com/frpaLNL3CJ7634CQvd6fnlM1JOaCVCDAtsirepT-o6o/rs:fit:1606:1072/czM6Ly9pY29uczgu/bW9vc2UtcHJvZC5l/eHRlcm5hbC9hMmE0/Mi9kNmZhNzVmMzQy/M2M0ZTc4OTFkYjg1/MmFlODE5MmIwYS5q/cGc.jpg',
    'https://photo-cdn2.icons8.com/E9UC-3-XiEAOyBqUYpApNb05Q6eGzwtWAWosMpU4LLY/rs:fit:1607:1072/czM6Ly9pY29uczgu/bW9vc2UtcHJvZC5l/eHRlcm5hbC9hMmE0/Mi80MWRjYWZlNDU4/YTU0MGI3YThlMDJi/ZDlkOWIyY2I0ZS5q/cGc.jpg'
  ];

  final _tag = [
    'flowerOne',
    'flowerTwo',
    'flowerThree',
    'flowerFour',
    'flowerFive',
    'flowerSix'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: GridView(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),
          padding: const EdgeInsets.all(10),
          children: <Widget>[
            GestureDetector(
              child: Hero(
                tag: _tag[0],
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: CachedNetworkImage(imageUrl: _url[0]),
                ),
              ),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (_) {
                  return DetailScreen(tag: _tag[0], url: _url[0]);
                }));
              },
            ),
            GestureDetector(
              child: Hero(
                tag: _tag[1],
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: CachedNetworkImage(imageUrl: _url[1]),
                ),
              ),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (_) {
                  return DetailScreen(tag: _tag[1], url: _url[1]);
                }));
              },
            ),
            GestureDetector(
              child: Hero(
                tag: _tag[2],
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: CachedNetworkImage(imageUrl: _url[2]),
                ),
              ),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (_) {
                  return DetailScreen(tag: _tag[2], url: _url[2]);
                }));
              },
            ),
            GestureDetector(
              child: Hero(
                tag: _tag[3],
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: CachedNetworkImage(imageUrl: _url[3]),
                ),
              ),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (_) {
                  return DetailScreen(tag: _tag[3], url: _url[3]);
                }));
              },
            ),
            GestureDetector(
              child: Hero(
                tag: _tag[4],
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: CachedNetworkImage(imageUrl: _url[4]),
                ),
              ),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (_) {
                  return DetailScreen(tag: _tag[4], url: _url[4]);
                }));
              },
            ),
            GestureDetector(
              child: Hero(
                tag: _tag[5],
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: CachedNetworkImage(imageUrl: _url[5]),
                ),
              ),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (_) {
                  return DetailScreen(tag: _tag[5], url: _url[5]);
                }));
              },
            ),
          ],
        ));
  }
}

class DetailScreen extends StatefulWidget {
  final String tag;
  final String url;

  DetailScreen({Key? key, required this.tag, required this.url})
      : assert(tag != null),
        assert(url != null),
        super(key: key);

  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  initState() {
    SystemChrome.setEnabledSystemUIOverlays([]);
    super.initState();
  }

  @override
  void dispose() {
    //SystemChrome.restoreSystemUIOverlays();
    SystemChrome.setEnabledSystemUIOverlays(SystemUiOverlay.values);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        child: Center(
          child: Hero(
            tag: widget.tag,
            child: CachedNetworkImage(imageUrl: widget.url),
          ),
        ),
        onTap: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}
