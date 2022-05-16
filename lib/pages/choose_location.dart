import 'package:flutter/material.dart';

class chooselocation extends StatefulWidget {
  const chooselocation({Key? key}) : super(key: key);

  @override
  State<chooselocation> createState() => _chooselocationState();
}

class _chooselocationState extends State<chooselocation> {
  int counter = 0;
  
  void getdata() async{
    
    String st1 = await Future.delayed(Duration(seconds: 3),() {
      return 'Statment 1';
    });

    String st2= await Future.delayed(Duration(seconds: 2),(){
      return 'Statment 2';
    });

    print('$st1 - $st2');
  }
  
  @override
  void initState()
  {
    super.initState();
    getdata();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Location'),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ElevatedButton(
          onPressed: (){
            setState(() {
              counter += 1;
            });
          }, child: Text('Counter is $counter'),
          style: ElevatedButton.styleFrom(
            primary: Colors.green,

          ),
        ),
      ),
    );
  }
}
