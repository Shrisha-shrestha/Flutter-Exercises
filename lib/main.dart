import 'package:flutter/material.dart';
import 'quote.dart';

void main() => runApp(MaterialApp(
  home:Quotes()
));

class Quotes extends StatefulWidget {
  const Quotes({Key? key}) : super(key: key);

  @override
  State<Quotes> createState() => _QuotesState();
}

class _QuotesState extends State<Quotes> {
   List <Data> Quotes =[Data(Quote:'You only live once, but if you do it right, once is enough',Author:'Mae West'),
     Data(Quote:'Be the change that you wish to see in the world.',Author:'Mahatma Gandhi'),
     Data(Quote:'If you tell the truth, you dont have to remember anything',Author:'Mark Twain'),
   ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('QUOTES'),
        centerTitle: true,
        backgroundColor: Colors.orangeAccent,
      ),
      body: Column(
        children:
          Quotes.map((test) =>  Text('${test.Quote}-${test.Author}')).toList(),
    ),
    );
  }
}



// MAPPING A LIST
// body: Column(
// children: quotes.map((test) => Text(test)).toList()),
// );


//STATEFUL WIDGET IMPLEMENTATION ON ID CARD
//
// Scaffold(
//       backgroundColor:Color.fromRGBO(31,31,31,1.0),
//       appBar: AppBar(
//         backgroundColor: Color.fromRGBO(50,50,50,1.0),
//         title: Text('Student ID Card'),
//         centerTitle: true,
//         elevation: 35.0,
//         shadowColor: Colors.black45,
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(20.0),
//         child: Container(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.start,
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: <Widget>[
//               Center(
//                 child: CircleAvatar(
//                   backgroundImage: AssetImage('assets/100.jpg'),
//                   radius: 60.0,
//                 ),
//               ),
//               SizedBox(height:10.0),
//               Divider(
//                 height: 14.0,
//                 color: Colors.grey,
//               ),
//               SizedBox(height:10.0),
//               Text('NAME',
//                 style: TextStyle(
//                   fontSize: 15.0,
//                   letterSpacing: 2.0,
//                   color: Colors.grey,
//                 ),),
//               SizedBox(height:10.0),
//               Text('SHRISHA SHRESTHA',
//                 //Roboto Open sans Lato Oswald Raleway
//                 style: GoogleFonts.raleway(
//                     fontSize:27.0,
//                     letterSpacing: 1.0,
//                     fontWeight:FontWeight.w500,
//                     color: Color.fromRGBO(234,200,87,1.0)),
//               ),
//               SizedBox(height:15.0),
//               Text('ADDRESS',
//                 style: TextStyle(
//                   fontSize: 15.0,
//                   letterSpacing: 2.0,
//                   color: Colors.grey,
//                 ),),
//               SizedBox(height:10.0),
//               Text('Madhyapur Thimi - 7',
//                 style: TextStyle(
//                     fontSize:20.0,
//                     letterSpacing: 1.0,
//                     color: Color.fromRGBO(234,200,87,1.0)
//                 ),),
//               SizedBox(height:15.0),
//               Text('PROGRAMMER LEVEL',
//                 style: TextStyle(
//                   fontSize: 15.0,
//                   letterSpacing: 2.0,
//                   color: Colors.grey,
//                 ),),
//               SizedBox(height:10.0),
//
//               Text('$level',
//                 style: TextStyle(
//                     fontSize:20.0,
//                     letterSpacing: 1.0,
//                     color: Color.fromRGBO(234,200,87,1.0)
//                 ),),
//               SizedBox(height:15.0),
//               Row(
//                 children: <Widget>[
//                   Padding(
//                     padding: const EdgeInsets.all(4.0),
//                     child: Icon(Icons.email,
//                         color:Color.fromRGBO(234,200,87,1.0)),
//                   ),
//                   Text('shrishashrestha101@gmail.com',
//                     style: TextStyle(
//                       fontSize: 15.0,
//                       letterSpacing: 2.0,
//                       color: Colors.grey,
//                     ),),
//                 ],
//               )
//             ],
//           ),
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(onPressed: () {
//         setState(() {
//           level+=1;
//         });
//       },
//       backgroundColor: Color.fromRGBO(50,50,50,1.0),
//         elevation: 5.0,
//         child: Icon(Icons.add),
//       ),
//     );
