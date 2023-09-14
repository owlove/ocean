import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

// QR код со ссылкой на внешний ресурс
class pageFour extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: Color.fromRGBO(182, 217, 239, 1),
        appBar: AppBar(
          title: Text(
            "Помоги океану",
            style: TextStyle(
              color: Color.fromRGBO(182, 217, 239, 1),
            ),
          ),
          centerTitle: true,
          backgroundColor: Color.fromRGBO(0, 92, 157, 1),
        ),
        body: Container(
          margin: EdgeInsets.all(10),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 30, bottom: 30),
                child: Text(
                  "Познакомьтесь с The Ocean Foundation и помогите защитить мировые океаны:",
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Color.fromRGBO(0, 92, 157, 1),
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Center(
                child: QrImageView(
                  data: 'https://oceanfdn.org/ru/',
                  version: QrVersions.auto,
                  size: 350.00,
                  foregroundColor: Color.fromRGBO(0, 92, 157, 1),
                ),
              ),
            ],
          ),
        ),
      );
}
