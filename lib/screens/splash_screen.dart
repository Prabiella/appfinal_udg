import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('STREMANIA'),
        backgroundColor: Colors.redAccent,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/titulo_streamania@2x.png',
              width: 200,
              height: 200,
              // Ajusta el tamaño de la imagen según tus necesidades
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  TextFormField(
                    decoration: const InputDecoration(
                      labelText: 'Usuario',
                      
                    ),
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      labelText: 'Contraseña',
                    ),
                    obscureText: true,
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/home');
                      // Acción a realizar al presionar el botón "Saltar"
                      // Puedes agregar aquí la navegación a la siguiente pantalla
                    },
                     style:  ButtonStyle(
                      // Cambiar color de fondo del botón
                      backgroundColor:  MaterialStateProperty.all(const Color.fromARGB(255, 226, 47, 2)),
                    ),
                    child: const Text('Ingresar'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
