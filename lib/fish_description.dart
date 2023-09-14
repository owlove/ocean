import 'package:flutter/material.dart';
import 'gallery_page.dart';

// страница описания конкретной выбранной рыбы
class FishDetails extends StatelessWidget {
  final Fish fish;
  FishDetails(this.fish);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(182, 217, 239, 1),
      appBar: AppBar(
        title: Text(
          fish.name,
          style: TextStyle(
            color: Color.fromRGBO(182, 217, 239, 1),
          ),
        ),
        centerTitle: true,
        backgroundColor: Color.fromRGBO(0, 92, 157, 1),
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          Image(
            image: AssetImage(fish.imageUrl),
            fit: BoxFit.cover,
          ),
          Container(
            padding: EdgeInsets.all(15),
            child: Text(
              fish.fullDescription,
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
