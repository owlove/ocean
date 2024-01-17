import 'package:flutter/material.dart';
import 'package:ocean_app/home_page.dart';
import 'gallery_page.dart';

// страница описания программы
class ProgDetails extends StatelessWidget {
  final ProgInfo prog;
  ProgDetails(this.prog);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(182, 217, 239, 1),
      appBar: AppBar(
        title: Text(
          prog.name,
          style: TextStyle(
            color: Color.fromRGBO(182, 217, 239, 1),
          ),
        ),
        centerTitle: true,
        backgroundColor: Color.fromRGBO(0, 92, 157, 1),
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          Container(
            padding: EdgeInsets.all(15),
            child: Text(
              prog.fullDescription,
              textAlign: TextAlign.justify,
              style: TextStyle(
                color: Color.fromRGBO(0, 92, 157, 1),
                fontSize: 20.0,
              ),
            ),
          )
        ]),
      ),
    );
  }
}
