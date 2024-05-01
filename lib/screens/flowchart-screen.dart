import 'package:flutter/material.dart';
class Flowchart extends StatelessWidget {
  const Flowchart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(
            Icons.arrow_back_ios,
            color: Colors.lightBlue,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Dart Features',style: TextStyle(fontSize: 25,color: Color.fromARGB(255, 94, 167, 227)),),
              Image.asset('assets/images/dartFeatures.png'),
              const SizedBox(height: 20,),
              const Text('Dart DataTypes',style: TextStyle(fontSize: 25,color: Color.fromARGB(255, 94, 167, 227)),),
              Image.asset('assets/images/dart.webp'),
              const SizedBox(height: 20,),
              const Text('Flutter Description',style: TextStyle(fontSize: 25,color: Color.fromARGB(255, 94, 167, 227)),),
              const SizedBox(height: 10,),
              Image.asset('assets/images/flutter.png'),
              const SizedBox(height: 20,),
              const Text('Flutter Advantages',style: TextStyle(fontSize: 25,color: Color.fromARGB(255, 94, 167, 227)),),
              Image.asset('assets/images/adv_of_flutter.png'),
              const SizedBox(height: 20,),
              const Text('Flutter Supported',style: TextStyle(fontSize: 25,color: Color.fromARGB(255, 94, 167, 227)),),
              const SizedBox(height: 10,),
              Image.asset('assets/images/crossplatform.png'),
              const SizedBox(height: 20,),
              const Text('Flutter Cases',style: TextStyle(fontSize: 25,color: Color.fromARGB(255, 94, 167, 227)),),
              Image.asset('assets/images/cases of flutter.png'),
            ],
          ),
        ),
      ),
    );
  }
}

