import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:ocean_app/fish_description.dart';
import 'package:ocean_app/fish_data.dart';

// Класс для создания объектов (рыб) для листвью и страницы с описанием
class Fish {
  final String name;
  final String description;
  final String imageUrl;
  final String fullDescription;

  const Fish({
    required this.name,
    required this.description,
    required this.imageUrl,
    required this.fullDescription,
  });

  static Fish fromJson(Map<String, dynamic> json) => Fish(
        name: json['name'],
        description: json['description'],
        imageUrl: json['imageUrl'],
        fullDescription: json['fullDescription'],
      );
}

// чтение из firebase
Stream<List<Fish>> readFish() => FirebaseFirestore.instance
    .collection('FishID')
    .snapshots()
    .map((snapshot) =>
        snapshot.docs.map((doc) => Fish.fromJson(doc.data())).toList());

// страница со списком рыб и ссылкой на новую страницу описания рыб
class pageTwo extends StatelessWidget {

  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: Color.fromRGBO(0, 92, 157, 1),
        appBar: AppBar(
          title: Text(
            "Обитатели аквариумов",
            style: TextStyle(
              color: Color.fromRGBO(182, 217, 239, 1),
            ),
          ),
          centerTitle: true,
          backgroundColor: Color.fromRGBO(0, 92, 157, 1),
        ),
        body: StreamBuilder(
          stream: readFish(),
          builder: (context, snapshot) {
            buildFish(Fish fish) => Card(
        color: Color.fromRGBO(105, 181, 231, 1),
        child: ListTile(
          title: Text(
            fish.name,
            style: TextStyle(
              color: Color.fromRGBO(0, 92, 157, 1),
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
          subtitle: Text(
            fish.description,
            style: TextStyle(
              color: Color.fromRGBO(0, 92, 157, 1),
              fontSize: 15,
            ),
          ),
          trailing: const Icon(Icons.arrow_forward),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => FishDetails(fish),
              ),
            );
          },
        ),
      );
            if (snapshot.hasError) {
              return Text('Something went wrong! ${snapshot.error}');
            } else if (snapshot.hasData) {
              final fish = snapshot.data!;

              return ListView(
                children: fish.map(buildFish).toList(),
              );
            } else {
              return Center(
                child: CircularProgressIndicator(),
              );
            }
          },
        ),
      );
}

//         body: ListView.builder(
//           itemCount: fishList.length,
//           itemBuilder: (context, index) {
//             Fish fish = fishList[index];
//             return Card(
//               color: Color.fromRGBO(105, 181, 231, 1),
//               child: ListTile(
//                 title: Text(
//                   fish.name,
//                   style: TextStyle(
//                     color: Color.fromRGBO(0, 92, 157, 1),
//                     fontWeight: FontWeight.bold,
//                     fontSize: 16,
//                   ),
//                 ),
//                 subtitle: Text(
//                   fish.description,
//                   style: TextStyle(
//                     color: Color.fromRGBO(0, 92, 157, 1),
//                     fontSize: 15,
//                   ),
//                 ),
//                 trailing: const Icon(Icons.arrow_forward),
//                 onTap: () {
//                   Navigator.push(
//                     context,
//                     MaterialPageRoute(
//                       builder: (context) => FishDetails(fish),
//                     ),
//                   );
//                 },
//               ),
//             );
//           },
//         ),
//       );
// }
