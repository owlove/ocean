import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ocean_app/program_description.dart';

// Класс для формирования данных о программе
class ProgInfo {
  final String name;
  final String description;
  final String fullDescription;

  const ProgInfo({
    required this.name,
    required this.description,
    required this.fullDescription,
  });

  static ProgInfo fromJson(Map<String, dynamic> json) => ProgInfo(
        name: json['name'],
        description: json['description'],
        fullDescription: json['fullDescription'],
      );
}

class PriceInfo {
  final String money;
  final String description;

  const PriceInfo({
    required this.money,
    required this.description,
  });

  static PriceInfo fromJson(Map<String, dynamic> json) => PriceInfo(
        money: json['money'],
        description: json['description'],
      );
}

// чтение из firebase
Stream<List<ProgInfo>> readProg() => FirebaseFirestore.instance
    .collection('ProgID')
    .snapshots()
    .map((snapshot) =>
        snapshot.docs.map((doc) => ProgInfo.fromJson(doc.data())).toList());

Stream<List<PriceInfo>> readPrice() => FirebaseFirestore.instance
    .collection('PriceID')
    .snapshots()
    .map((snapshot) =>
        snapshot.docs.map((doc) => PriceInfo.fromJson(doc.data())).toList());

class pageOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: Color.fromRGBO(182, 217, 239, 1),
        appBar: AppBar(
          title: Text(
            "Главная страница",
            style: TextStyle(
              color: Color.fromRGBO(182, 217, 239, 1),
            ),
          ),
          centerTitle: true,
          backgroundColor: Color.fromRGBO(0, 92, 157, 1),
        ),
        body: _buildBody(),
      );
}

// тело страницы с собираемыми виджетами для отображения
Widget _buildBody() {
  return SingleChildScrollView(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        _welcomeDescription(),
        _news(),
        _timeTable(),
        _price(),
        _contacts(),
      ],
    ),
  );
}

// приветствие на главной странице
Container _welcomeDescription() {
  return Container(
    margin: EdgeInsets.only(top: 20, left: 20, right: 20),
    child: Text(
      "Добро пожаловать в океанариум!",
      style: TextStyle(
        fontSize: 30.0,
        fontWeight: FontWeight.bold,
        color: Color.fromRGBO(0, 92, 157, 1),
      ),
      textAlign: TextAlign.center,
    ),
  );
}

// программы текущего месяца
Widget _news() {
  return Container(
    margin: EdgeInsets.only(top: 50),
    padding: EdgeInsets.all(15),
    child: Column(
      children: [
        Container(
          margin: EdgeInsets.only(bottom: 20),
          child: Text(
            "Программы на месяц:",
            style: TextStyle(
              fontSize: 25,
              color: Color.fromRGBO(0, 92, 157, 1),
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Container(
          height: 210,
          child: StreamBuilder(
            stream: readProg(),
            builder: (context, snapshot) {
              buildProg(ProgInfo prog) => Card(
                    color: Color.fromRGBO(0, 92, 157, 0.9),
                    child: ListTile(
                      title: Text(
                        prog.name,
                        style: TextStyle(
                          color: Color.fromRGBO(182, 217, 239, 1),
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                        textAlign: TextAlign.center
                      ),
                      subtitle: Text(
                        prog.description,
                        style: TextStyle(
                          fontSize: 16,
                          color: Color.fromRGBO(182, 217, 239, 1),
                        ),
                        textAlign: TextAlign.justify,
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ProgDetails(prog),
                          ),
                        );
                      },
                    ),
                  );

              if (snapshot.hasError) {
                return Text('Something went wrong! ${snapshot.error}');
              } else if (snapshot.hasData) {
                final prog = snapshot.data!;

                return ListView(
                  scrollDirection: Axis.horizontal,
                  itemExtent: 250,
                  children: prog.map(buildProg).toList(),
                );
              } else {
                return Center(
                  child: CircularProgressIndicator(),
                );
              }
            },
          ),
        ),
      ],
    ),
  );
}

// расписание
Widget _timeTable() {
  return Container(
    width: 280,
    margin: EdgeInsets.only(top: 50),
    child: Column(
      children: [
        Text(
          "Режим работы:",
          style: TextStyle(
            fontSize: 25,
            color: Color.fromRGBO(0, 92, 157, 1),
            fontWeight: FontWeight.bold,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 20, bottom: 5),
          child: Text(
            "Будни: 10:00 - 20:00",
            style: TextStyle(
                color: Color.fromRGBO(0, 92, 157, 0.9),
                fontWeight: FontWeight.bold,
                fontSize: 20),
          ),
        ),
        Divider(
          color: Color.fromRGBO(0, 92, 157, 1),
        ),
        Text(
          "Выходные: 10:00 - 22:00",
          style: TextStyle(
              color: Color.fromRGBO(0, 92, 157, 0.9),
              fontWeight: FontWeight.bold,
              fontSize: 20),
        ),
        Divider(
          color: Color.fromRGBO(0, 92, 157, 1),
        ),
      ],
    ),
  );
}

Widget _price() {
  return ExpansionTile(
    title: const Text(
      "Цены:",
      style: TextStyle(
        fontSize: 25,
        color: Color.fromRGBO(0, 92, 157, 1),
        fontWeight: FontWeight.bold,
      ),
    ),
    children: [
      StreamBuilder(
        stream: readPrice(),
        builder: (context, snapshot) {
          buildPrice(PriceInfo price) => Card(
                color: Color.fromRGBO(0, 92, 157, 0.9),
                child: ListTile(
                  title: Text(
                    price.description,
                    style: TextStyle(
                      color: Color.fromRGBO(182, 217, 239, 1),
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  subtitle: Text(
                    price.money,
                    style: TextStyle(
                      fontSize: 20,
                      color: Color.fromRGBO(182, 217, 239, 1),
                    ),
                    textAlign: TextAlign.start,
                  ),
                ),
              );

          if (snapshot.hasError) {
            return Text('Something went wrong! ${snapshot.error}');
          } else if (snapshot.hasData) {
            final price = snapshot.data!;

            return ListView(
              shrinkWrap: true,
              children: price.map(buildPrice).toList(),
            );
          } else {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    ],
  );
}

Widget _contacts() {
  return ExpansionTile(
    title: const Text(
      "Контакты:",
      style: TextStyle(
        fontSize: 25,
        color: Color.fromRGBO(0, 92, 157, 1),
        fontWeight: FontWeight.bold,
      ),
    ),
    children: [
      Text(
        "Телефон: +7 908 00 00 404",
        style: TextStyle(
            color: Color.fromRGBO(0, 92, 157, 0.9),
            fontWeight: FontWeight.bold,
            fontSize: 20),
      ),
      Padding(
        padding: EdgeInsets.only(top: 20, bottom: 5),
        child: Text(
          "Адрес: ул. Окулова, д. 3",
          style: TextStyle(
              color: Color.fromRGBO(0, 92, 157, 0.9),
              fontWeight: FontWeight.bold,
              fontSize: 20),
        ),
      ),
    ],
  );
}
