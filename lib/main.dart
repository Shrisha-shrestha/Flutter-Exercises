import 'package:flutter/material.dart';
import 'quote.dart';
import 'quote_card.dart';

void main() => runApp(const MaterialApp(home: Home()));

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Data> Quotes=[Data(Quo:'a',Author:'b'),
    Data(Quo:'c',Author:'d'),
    Data(Quo:'e',Author:'f'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('QuoteCard'),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
      ),
      body: Column(
        children: Quotes.map((test) => QuoteCard(
          test :test,
          delete:(){
            setState(() {
              Quotes.remove(test);
            });
          },
        ),
        ).toList(),
      ),
    );
  }
}

//       body: Column(
//         children: quotes.map((quote) => QuoteCard(
//             quote: quote,
//             delete: () {
//               setState(() {
//                 quotes.remove(quote);
//               },
//               );
//             }
//         )).toList(),
//       ),
//     );
//   }
// }
//
//
//
//
