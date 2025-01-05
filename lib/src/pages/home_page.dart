import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int contador = 0;

  void addCount() {
    contador++;
    setState(() {});
  }

  void reduceCount() {
    contador--;
    setState(() {});
  }

  void resetCount() {
    contador = 0;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Contador'),
        ),
        body: Center(child: Text('Cantidad de veces: $contador')),
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(right: 12),
              child: FloatingActionButton(
                onPressed: reduceCount,
                child: Icon(
                  Icons.remove_outlined,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: 12),
              child: FloatingActionButton(
                onPressed: resetCount,
                child: Icon(
                  Icons.refresh_outlined,
                ),
              ),
            ),
            FloatingActionButton(
              onPressed: addCount,
              child: Icon(
                Icons.add_outlined,
              ),
            ),
          ],
        ));
  }
}
