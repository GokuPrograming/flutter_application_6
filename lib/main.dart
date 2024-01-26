import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  @override
  Widget build(BuildContext context) {
    int counter = 10;
    return MaterialApp(
      home: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: 0,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.supervised_user_circle), label: "user")
          ],
        ),
        appBar: PreferredSize(
          preferredSize:
              const Size.fromHeight(25), // Ajusta la altura de tu AppBar
          child: SafeArea(
            child: AppBar(
              title: const Text('Mi Aplicación'),
              backgroundColor: const Color.fromARGB(123, 23, 443, 12),
              // Aquí puedes agregar más propiedades de AppBar según tus necesidades
            ),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                width: 100.0, // establece el ancho deseado
                height: 100.0, // establece la altura deseada
                child: CircleAvatar(
                  radius: 80,
                  backgroundImage: AssetImage('assets/flutterIA.jpg'),
                ),
              ),
              //separador con sizeBox
              const SizedBox(
                width: 10.0, // establece el ancho deseado
                height: 10.0, // establece la altura deseada
              ),
              const SizedBox(
                width: 150.0, // establece el ancho deseado
                height: 100.0, // establece la altura deseada
                child: Image(
                    image: AssetImage('assets/flutterIA.jpg'),
                    fit: BoxFit.fill),
              ),
              //separador con sizeBox
              const SizedBox(
                width: 10.0, // establece el ancho deseado
                height: 10.0, // establece la altura deseada
              ),
              const SizedBox(
                width: 100.0, // establece el ancho deseado
                height: 100.0, // establece la altura deseada
                child: Image(
                  image: NetworkImage(
                      'https://th.bing.com/th/id/OIP.1Sg5ecJIvYEcKi2rK78XLAHaHa?rs=1&pid=ImgDetMain'),
                  fit: BoxFit.fill,
                ),
              ),
              //separador con sizeBox
              const SizedBox(
                width: 10.0, // establece el ancho deseado
                height: 10.0, // establece la altura deseada
              ),
              const Text("numero de click"),
              Text("$nContador")
            ],
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(width: 20),
            FloatingActionButton(
              onPressed: () {
                //print('hola munco ');
                contador();
                setState(() {});
                //print(nContador);
              },
              child: const Row(
                children: [Icon(Icons.add), Text('add')],
              ),
            ),
            const SizedBox(width: 20),
            FloatingActionButton(
              onPressed: () {
                nContador = 0;
                setState(() {});
              },
              child: const Icon(Icons.delete),
            ),
            const SizedBox(width: 20),
            FloatingActionButton(
              onPressed: () {
                if (nContador == 0) {
                } else {
                  nContador--;
                  setState(() {});
                }
              },
              child: const Icon(Icons.exposure_minus_1),
            )
          ],
        ),
      ),
    );
  }

  int nContador = 0;

  void contador() {
    nContador++;
  }
}
