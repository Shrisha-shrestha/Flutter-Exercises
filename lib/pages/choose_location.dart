import 'package:flutter/material.dart';

class chooselocation extends StatefulWidget {
  const chooselocation({Key? key}) : super(key: key);

  @override
  State<chooselocation> createState() => _chooselocationState();
}

class _chooselocationState extends State<chooselocation> {

  @override
  void initState()
  {
    super.initState();
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
    },
           child: Text('Counter'),
          style: ElevatedButton.styleFrom(
            primary: Colors.green,
        ),
      ),
      ),
    );
  }
}
