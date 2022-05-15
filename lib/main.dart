import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'quote.dart';

void main() => runApp(MaterialApp(
  home: quotecard(),
));

class quotecard extends StatefulWidget {
  const quotecard({Key? key}) : super(key: key);
  @override
  State<quotecard> createState() => _quotecardState();
}

class _quotecardState extends State<quotecard> {
  List <Data> Quotes =[Data(Quote:'You only live once, but if you do it right, once is enough',Author:'Mae West'),
    Data(Quote:'Be the change that you wish to see in the world.',Author:'Mahatma Gandhi'),
    Data(Quote:'If you tell the truth, you dont have to remember anything',Author:'Mark Twain'),
  ];
  Widget card(test) {
    return Card(
      margin: EdgeInsets.all(5.0),
      child: Padding(
      padding: EdgeInsets.all(5.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,

      children: <Widget>[
        Text(test.Quote,
        style: TextStyle(
          fontSize: 20.0,
          color: Colors.deepOrangeAccent,
        ),
        ),
        SizedBox(height: 5.0),
        Text('- ${test.Author}',
          style: TextStyle(
            fontSize: 15.0,
            color: Colors.grey,
          ),
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
        title: Text('QUOTES'),
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),
      body: Column(
        children: Quotes.map((test) => card(test) ).toList(),
      ),
    );
  }
}




