import 'package:flutter/material.dart';

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
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              width: 1,
              color: Color.fromRGBO(0, 92, 157, 1),
            ),
          ),
          child: ListView(
            scrollDirection: Axis.horizontal,
            itemExtent: 250,
            children: [
              ListTile(
                title: Text(
                  "Взгляд хищника",
                  style: TextStyle(
                      color: Color.fromRGBO(0, 92, 157, 0.9),
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
                subtitle: Text(
                  "Познакомьтесь с дервнешими хищниками нашей планеты. Узнайте как появились и выживали первые акулы. Ознакомьтесь с большой коллекцией хищников в нашем океанариуме.",
                  style: TextStyle(
                    fontSize: 16,
                    color: Color.fromRGBO(0, 92, 157, 0.9),
                  ),
                  textAlign: TextAlign.start,
                ),
              ),
              ListTile(
                title: Text(
                  "Морской мир",
                  style: TextStyle(
                      color: Color.fromRGBO(0, 92, 157, 0.9),
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
                subtitle: Text(
                  "Морские глубины – это дом для огромного количества беспозвоночных животных. Посетите наши занятия и узнайте про особенности уникальных морских существ нашей планеты.",
                  style: TextStyle(
                    fontSize: 16,
                    color: Color.fromRGBO(0, 92, 157, 0.9),
                  ),
                  textAlign: TextAlign.start,
                ),
              ),
              ListTile(
                title: Text(
                  "Плоские рыбы",
                  style: TextStyle(
                      color: Color.fromRGBO(0, 92, 157, 0.9),
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
                subtitle: Text(
                  "Скат - неповторимые создания напоминающие плывущее полотно. Узнай все о разнообразии видов, строении тела, месте обитания и других уникальных особенностях этих морских существ.",
                  style: TextStyle(
                    fontSize: 16,
                    color: Color.fromRGBO(0, 92, 157, 0.9),
                  ),
                  textAlign: TextAlign.start,
                ),
              ),
              ListTile(
                title: Text(
                  "100 км/час",
                  style: TextStyle(
                      color: Color.fromRGBO(0, 92, 157, 0.9),
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
                subtitle: Text(
                  "Меч-рыба  - это одна из самых быстрых рыб на земле, которая во многом выделяется среди своих сородичей. Узнайте для себя новые удивительные факты из морских глубин в нашем новом научном центре!",
                  style: TextStyle(
                    fontSize: 16,
                    color: Color.fromRGBO(0, 92, 157, 0.9),
                  ),
                  textAlign: TextAlign.start,
                ),
              ),
            ],
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
