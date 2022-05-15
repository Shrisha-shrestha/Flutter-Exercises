import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
home: IDcard(),
));

class IDcard extends StatelessWidget {
  const IDcard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black54,
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(31,31,31,1.0),
        title: Text('Student ID Card'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Center(
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/600.jfif'),
                  radius: 60.0,
                ),
              ),
              SizedBox(height: 20.0),
              Divider(
                height: 14.0,
                color: Colors.grey,
              ),
              SizedBox(height: 20.0),
              Text('NAME',
              style: TextStyle(
                fontSize: 15.0,
                letterSpacing: 2.0,
                color: Colors.grey,
              ),),
              SizedBox(height: 20.0),
              Text('Shrisha Shrestha',
                style: TextStyle(
                  fontSize: 20.0,
                  letterSpacing: 2.0,
                  color: Colors.white,
                ),),
              SizedBox(height: 20.0),
              Text('ADDRESS',
                style: TextStyle(
                  fontSize: 15.0,
                  letterSpacing: 2.0,
                  color: Colors.grey,
                ),),
              SizedBox(height: 20.0),
              Text('Madhyapur Thimi - 7',
                style: TextStyle(
                  fontSize: 20.0,
                  letterSpacing: 2.0,
                  color: Colors.white,
                ),),
              SizedBox(height: 20.0),
              Text('DATE OF BIRTH',
                style: TextStyle(
                  fontSize: 15.0,
                  letterSpacing: 2.0,
                  color: Colors.grey,
                ),),
              SizedBox(height: 20.0),
              Text('2000 - 01 - 02',
                style: TextStyle(
                  fontSize: 20.0,
                  letterSpacing: 2.0,
                  color: Colors.white,
                ),),
              SizedBox(height: 20.0),
              Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Icon(Icons.mail,
                    color:Colors.white),
                  ),
                  Text('shrishashrestha101@gmail.com',
                    style: TextStyle(
                      fontSize: 15.0,
                      letterSpacing: 2.0,
                      color: Colors.white,
                    ),),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
