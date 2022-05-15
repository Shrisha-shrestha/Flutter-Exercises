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
  List<Data> Quotes = [Data(Quote:'a',Author:'b'),Data(Quote:'c',Author:'d'),Data(Quote:'e',Author:'f')];

  Widget card(test) {
    return Card(
      margin: EdgeInsets.all(5.0),
      child: Padding(
      padding: EdgeInsets.all(5.0),
      child: Column(
      children: <Widget>[
        Text(test.Quote,
        style: TextStyle(
          fontSize: 25.0,
          color: Colors.deepOrangeAccent,
        ),
        ),
        Text(test.Author,
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



//
//
// Quote(author: 'Oscar Wilde', text: 'Be yourself; everyone else is already taken'),
// Quote(author: 'Oscar Wilde', text: 'I have nothing to declare except my genius'),
// Quote(author: 'Oscar Wilde', text: 'The truth is rarely pure and never simple')

