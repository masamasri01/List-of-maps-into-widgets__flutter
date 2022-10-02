import 'package:flutter/material.dart';
import 'package:flutter_application_7/listOfmaps.dart';
import 'Data.dart';

void main() {
  runApp(MaterialApp(home: MyApp()));
  Map map = {'aa': 1};
  map.forEach((k, v) => print(k.toString()));
  ;
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Data> listOfData = listOfmaps.map((e) => Data.fromMap(e)).toList();
    List<String> ListOfDomains = listOfData.map((e) {
      return e.domains.toString();
    }).toList();
    return Scaffold(
      appBar: AppBar(title: Text('Data View')),
      body: SingleChildScrollView(
        child: Column(
          children: listOfData.map((e) {
            return Container(
                height: 250,
                width: double.infinity,
                //color: Colors.grey,
                margin: const EdgeInsets.all(15),
                padding: EdgeInsets.all(8),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.pink, width: 3),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                        padding: EdgeInsets.all(7),
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 85, 134, 175),
                        ),
                        child: Row(
                          children: [
                            const Text(
                              'Name: ',
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Color.fromARGB(255, 197, 85, 122),
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(e.name,
                                style: TextStyle(
                                    fontSize: 14,
                                    color: Color.fromARGB(255, 245, 247, 247),
                                    fontWeight: FontWeight.w100))
                          ],
                        )),
                    Container(
                        padding: EdgeInsets.all(7),
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 197, 230, 54),
                        ),
                        child: Row(
                          children: [
                            Text('Alpha two Code: ',
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Color.fromARGB(255, 197, 85, 122),
                                    fontWeight: FontWeight.bold)),
                            Text(e.alpha_two_code,
                                style: TextStyle(
                                    fontSize: 14,
                                    color: Color.fromARGB(255, 245, 247, 247),
                                    fontWeight: FontWeight.w100))
                          ],
                        )),
                    Container(
                        padding: EdgeInsets.all(7),
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 85, 134, 175),
                        ),
                        child: Row(
                          children: [
                            Text('State Province: ',
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Color.fromARGB(255, 197, 85, 122),
                                    fontWeight: FontWeight.bold)),
                            Text(e.state_province ?? 'no state',
                                style: TextStyle(
                                    fontSize: 14,
                                    color: Color.fromARGB(255, 245, 247, 247),
                                    fontWeight: FontWeight.w100))
                          ],
                        )),
                    Container(
                        padding: EdgeInsets.all(7),
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 197, 230, 54),
                        ),
                        child: Row(children: [
                          Text('Domains: ',
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Color.fromARGB(255, 197, 85, 122),
                                  fontWeight: FontWeight.bold)),
                          Text(e.domains.toString(),
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Color.fromARGB(255, 245, 247, 247),
                                  fontWeight: FontWeight.w100))
                        ])),
                    Container(
                        padding: EdgeInsets.all(7),
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 85, 134, 175),
                        ),
                        child: Row(
                          children: [
                            Text('Web Pages: ',
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Color.fromARGB(255, 197, 85, 122),
                                    fontWeight: FontWeight.bold)),
                            Text(e.web_pages.toString(),
                                style: TextStyle(
                                    fontSize: 14,
                                    color: Color.fromARGB(255, 245, 247, 247),
                                    fontWeight: FontWeight.w100))
                          ],
                        )),
                    Container(
                        padding: EdgeInsets.all(7),
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 197, 230, 54),
                        ),
                        child: Row(
                          children: [
                            Text('Country: ',
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Color.fromARGB(255, 197, 85, 122),
                                    fontWeight: FontWeight.bold)),
                            Text(e.country,
                                style: TextStyle(
                                    fontSize: 14,
                                    color: Color.fromARGB(255, 245, 247, 247),
                                    fontWeight: FontWeight.w100))
                          ],
                        )),
                  ],
                ));
          }).toList(),
        ),
      ),
    );
  }
}
