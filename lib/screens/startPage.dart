import 'package:flutter/material.dart';
import '../functions/functions.dart';
import 'calculatorPage.dart';


class StartScreen extends StatelessWidget {
  TextEditingController maxDegreeContorller = TextEditingController();

  StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 44, 51, 51),
        title: const Text('GPA Calcualator'),
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromARGB(255, 44, 51, 51),
                Color.fromARGB(255, 57, 91, 100),
            ],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Center(
                child: Container(
                  height: 180,
                  width: 180,
                  child: Image.asset('img/logo.png'),
                ),
              ),
              const SizedBox(
                height: 16.0,
              ),
              TextField(
                keyboardType: TextInputType.number,
                style: const TextStyle(color: Color.fromARGB(255, 178, 233, 233)),
                controller: maxDegreeContorller,
                decoration: const InputDecoration(
                    labelStyle:
                        TextStyle(color: Color.fromARGB(255, 231, 246, 242)),
                    labelText: 'Max Degree for The Material',
                    hintText: '100',
                    
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                            color: Color.fromARGB(255, 20, 255, 236)))),
              ),
              
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  onPressed: () {
                    maxDegree = (double.parse(maxDegreeContorller.text));
                    maxDegreeContorller.clear();
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => InputScreen()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                      minimumSize: const Size(20, 40),
                      backgroundColor: const Color.fromARGB(255, 44, 51, 51),
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(24)))),
                  child: const Text('Next',
                      style: TextStyle(
                          color: Color.fromARGB(255, 231, 246, 242),
                          fontSize: 18,
                          fontWeight: FontWeight.bold)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
