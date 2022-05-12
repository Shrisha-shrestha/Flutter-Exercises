import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(
      home: lesson4(),
    ));

class lesson4 extends StatelessWidget {
  const lesson4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'MYAPP',
          style: TextStyle(
            color: Colors.white,
            fontSize: 25.0,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(//IMPORTANT
        padding: const EdgeInsets.all(18.0),
        child: Column(
          children: <Widget>[
            Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,

              children: <Widget>[
                Icon(Icons.mail,
                color: Colors.black,
                  size: 50.0,
                ),

                TextButton(
                    onPressed:(){print('hi');},
                    child: Text('Click'),
                  style: TextButton.styleFrom(
                      primary: Colors.white,
                    backgroundColor: Colors.black,
                    elevation: 20.0,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                    shadowColor: Colors.yellow,
                ),
                ),
                SizedBox(width:5.0  ),

                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.black,
                    onPrimary: Colors.white,
                    shadowColor: Colors.red,
                    elevation: 20.0,
                    padding: EdgeInsets.all(2.0)
                  ),
                  onPressed:(){print('hi');},
                    child: Text('Click'),
                ),
                SizedBox(width:5.0  ),
                ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.black,
                      onPrimary: Colors.white,
                      shadowColor: Colors.lightGreen,
                      elevation: 20.0,
                      padding: EdgeInsets.all(5.0)
                  ),
                  icon: Icon(Icons.add),
                  label: Text('Add'),
                  onPressed:(){print('hi');},
                ),

                SizedBox(width:5.0  ),
                Ink(
                  //padding: EdgeInsets.all(20.0),
                    decoration: const ShapeDecoration(
                      color: Colors.black,
                      shape: CircleBorder(),
                    ),

                child:IconButton(
                    onPressed:(){print('hi');},
                  icon: Icon(Icons.add),
                    color: Colors.white,

                ),
                ), ]
                ),
              Expanded(
                child: Image.asset('assets/600.jfif'),
              ),
           Expanded(
               flex: 1,
               child: Container(
             color: Colors.black,
           )),
            Expanded(
                flex: 2,
                child: Container(
                  color: Colors.black87,
                )),

           Center(
             child:Container(
               //IMPORTANT
               margin: EdgeInsets.all(5.0),
               padding:EdgeInsets.all(10.0),
               color: Colors.black,
               child: Image.asset(
                 'assets/600.jfif',
                 height: 280.0,
                 width: 300.0,
               ),
             ),
           ),



          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black,
        onPressed: () {print('Hello');},
        child: Text(
          'HI',
          style: TextStyle(
            color: Colors.white,
            fontSize: 10.0,
          ),
        ),
      ),
    );
  }
}
