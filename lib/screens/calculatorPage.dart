import 'package:flutter/material.dart';
import '../functions/functions.dart';
import 'resultPage.dart';

class InputScreen extends StatelessWidget {
  TextEditingController degreeController = TextEditingController();
  TextEditingController hoursController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.transparent,
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 44, 51, 51),
        title: const Text('Input Screen'),
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
              TextField(
                keyboardType: TextInputType.number,
                style: const TextStyle(color: Color.fromARGB(255, 178, 233, 233)),
                controller: degreeController,
                decoration: const InputDecoration(
                    labelStyle:
                        TextStyle(color: Color.fromARGB(255, 231, 246, 242)),
                    labelText: 'Your Degree',
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                            color: Color.fromARGB(255, 20, 255, 236)))),
              ),
              TextField(
                keyboardType: TextInputType.number,
                style: const TextStyle(color: Color.fromARGB(255, 178, 233, 233)),
                controller: hoursController,
                decoration: const InputDecoration(
                    labelStyle:
                        TextStyle(color: Color.fromARGB(255, 231, 246, 242)),
                    labelText: 'Hours',
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                            color: Color.fromARGB(255, 20, 255, 236)))),
              ),
              const SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: () {
                  degree.add(double.parse(degreeController.text));
                  hours.add(int.parse(hoursController.text));
                  points.add(checkPoints(calcInPrecent(degree[i], maxDegree)));
                  grades.add((checkGrade(calcInPrecent(degree[i], maxDegree))));
                  i++;
                  numMaterials++;
                  degreeController.clear();
                  hoursController.clear();
                },
                style: ElevatedButton.styleFrom(
                    minimumSize: const Size(20, 60),
                    backgroundColor: const Color.fromARGB(255, 44, 51, 51),
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(24)))),
                child: const Text('Next',
                    style: TextStyle(
                        color: Color.fromARGB(255, 231, 246, 242),
                        fontSize: 18,
                        fontWeight: FontWeight.bold)),
              ),
              const SizedBox(
                height: 16.0,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => NextScreen()),
                  );
                },
                style: ElevatedButton.styleFrom(
                    minimumSize: const Size(20, 40),
                    backgroundColor: const Color.fromARGB(255, 44, 51, 51),
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(24)))),
                child: const Text('Submit',
                    style: TextStyle(
                        color: Color.fromARGB(255, 231, 246, 242),
                        fontSize: 18,
                        fontWeight: FontWeight.bold)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
