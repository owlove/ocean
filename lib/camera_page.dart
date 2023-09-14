import 'package:flutter/material.dart';
import 'package:arkit_plugin/arkit_plugin.dart';
import 'package:vector_math/vector_math_64.dart';

class pageThree extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<pageThree> {
  late ARKitController arkitController;

  @override
  void dispose() {
    arkitController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text(
            'Дополненная реальность',
            style: TextStyle(
              color: Color.fromRGBO(182, 217, 239, 1),
            ),
          ),
          centerTitle: true,
          backgroundColor: Color.fromRGBO(0, 92, 157, 1),
        ),
        body: ARKitSceneView(onARKitViewCreated: onARKitViewCreated),
      );

// Настройка сферы (радиус, текстура (двухсторонняя), положение в пространстве)
  void onARKitViewCreated(ARKitController arkitController) {
    this.arkitController = arkitController;
    final node = ARKitNode(
      geometry: ARKitSphere(
        radius: 1,
        materials: [
          ARKitMaterial(
            doubleSided: true,
            diffuse: ARKitMaterialProperty.image("assets/images/21.jpg"),
          ),
        ],
      ),
      position: Vector3(0, 0, 0),
    );
    this.arkitController.add(node);
  }
}
