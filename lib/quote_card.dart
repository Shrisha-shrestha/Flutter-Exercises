import 'package:flutter/material.dart';
import 'quote.dart';

class  QuoteCard extends StatelessWidget {
  //final object variable;
  final Data test;
   final Function delete;
  QuoteCard({required this.test,required this.delete});
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
        test.Quo,
        style: TextStyle(
        color: Colors.red,
        fontSize: 20.0,
           ),
       textAlign: TextAlign.justify,
  ),
  Text(
  '- ${test.Author}',
  style: TextStyle(
  color: Colors.green,
  fontSize: 20.0,
  ),
  ),
  Divider(height: 5.0,color: Colors.black,),
  TextButton.icon(onPressed: (){delete();},
  icon: Icon(Icons.delete), label: Text('Delete'),),
      ],
      ),
    );
  }
}

//   final Quote quote;
//   final Function delete;
//   QuoteCard({ required this.quote,required this.delete });
//
//   @override
//   Widget build(BuildContext context) {
//     return Card(
//         margin: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0),
//         child: Padding(
//           padding: const EdgeInsets.all(12.0),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.stretch,
//             children: <Widget>[
//               Text(
//                 quote.text,
//                 style: TextStyle(
//                   fontSize: 18.0,
//                   color: Colors.grey[600],
//                 ),
//               ),
//               SizedBox(height: 6.0),
//               Text(
//                 quote.author,
//                 style: TextStyle(
//                   fontSize: 14.0,
//                   color: Colors.grey[800],
//                 ),
//               ),
//               SizedBox(height: 8.0),
//               TextButton.icon(
//                 onPressed: (){delete();},
//                 label: Text('delete quote'),
//                 icon: Icon(Icons.delete),
//               )
//             ],
//           ),
//         )
//     );
//   }
// }