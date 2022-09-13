import 'package:basic_design/customClass.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OutPutData extends StatefulWidget {
  @override
  _OutPutDataState createState() => _OutPutDataState();
}

class _OutPutDataState extends State<OutPutData> {
  List<Quote> quotes = [
    Quote(
        text:
            '“JavaScript’s global scope is like a public toilet. You can’t avoid going in there, but try to limit your contact with surfaces when you do.”',
        author: 'Dmitry Baranovskiy'),
    Quote(
        text: 'Javascript is the duct tape of the Internet.',
        author: 'Charlie Campbell'),
    Quote(
        text:
            'When someone says, "I want a programming language in which I need only say what I want done," give him a lollipop.',
        author: 'Amit Thakur'),
    Quote(
        text: 'Programming is all about How to Google', author: 'Sachin Yadav'),
  ];

  Widget quoteTemplate(quote) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(quote.text,
                style: GoogleFonts.dancingScript(
                    textStyle: TextStyle(fontSize: 25.0))),
            SizedBox(height: 10.0),
            Text(
              quote.author,
              style: GoogleFonts.dancingScript(
                  textStyle: TextStyle(
                      fontSize: 15.0,
                      color: Colors.black,
                      fontWeight: FontWeight.bold)),
              textAlign: TextAlign.right,
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Awesome Quotes'),
        centerTitle: true,
        backgroundColor: Colors.red[800],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: quotes.map((e) => quoteTemplate(e)).toList(),
          ),
        ),
      ),
    );
  }
}
