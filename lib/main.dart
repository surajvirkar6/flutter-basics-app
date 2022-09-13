import 'package:basic_design/ccAndod.dart';
import 'package:basic_design/idcard.dart';
import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MaterialApp(
    home: Screen(),
  ));
}

class Screen extends StatefulWidget {
  @override
  _ScreenState createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 5,
      navigateAfterSeconds: MyApp(),
      title: Text('Welcome To Flutter Application'),
      backgroundColor: Colors.grey,
      loaderColor: Colors.red,
    );
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Basic Design practice"),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'HII SURAJKUMAR!',
                  style: TextStyle(
                    letterSpacing: 1,
                    fontSize: 20.0,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                Image(
                    image: NetworkImage(
                        'https://pyxis.nymag.com/v1/imgs/98c/b0c/11595815f0f37e133255dbdb38a0547039-25-dancing-with-the-birds.rsquare.w700.jpg')),
                Icon(
                  Icons.add_reaction,
                  color: Colors.yellow,
                  size: 100.0,
                ),
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => OutPutData()));
                    },
                    child: Text('Custom classes and outputting data page')),
                TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => IdCard()));
                  },
                  child: Text('Click to view Id card page.'),
                ),
                Text(
                  'javaScript is as related to java as carnival is to car.',
                  style: GoogleFonts.pacifico(
                      textStyle:
                          TextStyle(color: Colors.blue, letterSpacing: 0.5)),
                ),
                Padding(
                  padding: const EdgeInsets.all(40.0),
                  child: Anime(),
                )
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: "Increment Counter",
        onPressed: () {},
        child: Icon(Icons.add),
      ),
    );
  }
}

class Anime extends StatefulWidget {
  const Anime({key}) : super(key: key);

  @override
  _AnimeState createState() => _AnimeState();
}

class _AnimeState extends State<Anime> with TickerProviderStateMixin {
  AnimationController _controller;
  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(vsync: this, duration: Duration(seconds: 1))
          ..forward()
          ..repeat(reverse: true);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: _controller,
        child: Text(
          'animation',
          style: TextStyle(fontSize: 20.0),
        ),
        builder: (context, child) {
          return Transform.rotate(angle: _controller.value, child: child);
        });
  }
}
