import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextButton.icon(
                    style: TextButton.styleFrom(
                      padding:  EdgeInsets.all(8.0),
                       elevation: 2.0,
                       shadowColor: Colors.grey,
                       primary: Colors.white,
                      backgroundColor: Colors.lightGreen,
                      textStyle:  TextStyle(fontSize: 15,color: Colors.white,),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                        ),
                    ),
                    onPressed: (){
                      Navigator.pushNamed(context, '/location');
                    },
                    icon: Icon(Icons.location_pin,color: Colors.white,),
                    label: Text('Edit Location')

                ),
              ),
            ],
          ),

      ),
    );
  }
}
