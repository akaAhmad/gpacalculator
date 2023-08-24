// ignore: file_names
import 'package:flutter/material.dart';
import '../functions/functions.dart';


class NextScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //backgroundColor:Color.fromARGB(255, 128, 127, 127),
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 44, 51, 51),
          title: const Text('Your Result'),
        ),
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color.fromARGB(255, 44, 51, 51),
                Color.fromARGB(255, 57, 91, 100),
                //Color.fromRGBO(137, 145, 255, 1)
              ],
            ),
          ),
          child: Center(
            child: ListView(children: <Widget>[
              DataTable(
                  columnSpacing: 10.0,
                  columns: const [
                    DataColumn(
                        label: Text('Courses',
                        textAlign:TextAlign.center,
                            style: TextStyle(
                                color: Color.fromARGB(255, 231, 246, 242),
                                fontSize: 18,
                                fontWeight: FontWeight.bold))),
                    DataColumn(
                        label: Text('Degree',
                        textAlign:TextAlign.center,
                            style: TextStyle(
                                color: Color.fromARGB(255, 231, 246, 242),
                                fontSize: 18,
                                fontWeight: FontWeight.bold))),
                    DataColumn(
                        label: Text('Hours',
                        textAlign:TextAlign.center,
                            style: TextStyle(
                                color: Color.fromARGB(255, 231, 246, 242),
                                fontSize: 18,
                                fontWeight: FontWeight.bold))),
                    DataColumn(
                        label: Text('Points',
                        textAlign:TextAlign.center,
                            style: TextStyle(
                                color: Color.fromARGB(255, 231, 246, 242),
                                fontSize: 18,
                                fontWeight: FontWeight.bold))),
                    DataColumn(
                        label: Text('Grade',
                        textAlign:TextAlign.center,
                            style: TextStyle(
                                color: Color.fromARGB(255, 231, 246, 242),
                                fontSize: 18,
                                fontWeight: FontWeight.bold))),
                  ],
                  rows: List<DataRow>.generate(
                      degree.length,
                      (index) => DataRow(
                            cells: [
                              DataCell(Text(
                                textAlign:TextAlign.center,
                                'course ${index + 1}',
                                style: const TextStyle(
                                  color: Color.fromARGB(255, 231, 246, 242),
                                ),
                              )),
                              DataCell(Text(
                                textAlign:TextAlign.center,
                                '${degree[index]}',
                                style: const TextStyle(
                                  
                                  color: Color.fromARGB(255, 231, 246, 242),
                                ),
                              )),
                              DataCell(Text(
                                textAlign:TextAlign.center,
                                '${hours[index]}',
                                style: const TextStyle(
                                  color: Color.fromARGB(255, 231, 246, 242),
                                ),
                              )),
                              DataCell(Text(
                                textAlign:TextAlign.center,
                                '${points[index]}',
                                style: const TextStyle(
                                  color: Color.fromARGB(255, 231, 246, 242),
                                ),
                              )),
                              DataCell(Text(
                                textAlign:TextAlign.center,
                                '${grades[index]}',
                                style: const TextStyle(
                                  color: Color.fromARGB(255, 231, 246, 242),
                                ),
                              )),
                            ],
                          ))),
              Padding(
                padding: const EdgeInsets.all(25),
                child: Container(
                  width: double.infinity,
                  child: Text(
                    '''Your GPA = ${calcResult(points, hours)}
                    \nTotal Hours = ${calcTotalHours(hours)}
                    \nTotal Degree = ${calcTotalDegree(degree)} %
                    \nGeneral Grade = ${checkGrade(calcTotalDegree(degree))}''',
                    style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Color.fromARGB(255, 231, 246, 242)),
                  ),
                ),
              ),
             // SizedBox(height: 16),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Center(
                  child: ElevatedButton(
                    onPressed: () {
                      reset();
                      //maxDegreeContorller.clear();
                      Navigator.popUntil(context, ModalRoute.withName(Navigator.defaultRouteName));
                      
                    },
                    style: ElevatedButton.styleFrom(
                        minimumSize: const Size(20, 40),
                        backgroundColor: const Color.fromARGB(255, 44, 51, 51),
                        shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(24)))),
                    child: const Text('Reset',
                        style: TextStyle(
                            color: Color.fromARGB(255, 231, 246, 242),
                            fontSize: 18,
                            fontWeight: FontWeight.bold)),
                  ),
                ),
              ),
            ]),
          ),
        ));
  }
}
