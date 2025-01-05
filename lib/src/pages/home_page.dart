import 'package:flutter/material.dart';
import 'package:second/src/pages/button_icon.dart';
import 'package:second/src/pages/login_page.dart';

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

  void goToLogin(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(
      builder: (context) => LoginPage(lastCount: contador),
    ));
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
        appBar: AppBar(
          title: Text('Contador'),
        ),
        body: SizedBox(
          width: size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('Cantidad de veces: $contador'),
              SizedBox(
                height: 100,
              ),
              ElevatedButton(
                  onPressed: () => goToLogin(context),
                  child: Text('Siguiente pagina'))
            ],
          ),
        ),
        floatingActionButton: ButtonsIcon(
          eventReduce: reduceCount,
          eventReset: resetCount,
          eventAdd: addCount,
        ));
  }

  /*Widget buttonsIcon() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: EdgeInsets.only(right: 12),
          child: FloatingActionButton(
            heroTag: '_reduce',
            onPressed: reduceCount,
            child: Icon(
              Icons.remove_outlined,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(right: 12),
          child: FloatingActionButton(
            heroTag: '_reset',
            onPressed: resetCount,
            child: Icon(
              Icons.refresh_outlined,
            ),
          ),
        ),
        FloatingActionButton(
          heroTag: '_add',
          onPressed: addCount,
          child: Icon(
            Icons.add_outlined,
          ),
        ),
      ],
    );
  }*/
}
