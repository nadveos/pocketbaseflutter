import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor:  Colors.grey[200],
      body:  Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const FlutterLogo(size: 100.0),
            const SizedBox(height: 30.0),
            const Text(
              'Verduleria el Pepino Acido',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 30.0),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Hola vecino, bienvenido a la verduleria el pepino acido, donde encontraras los mejores productos de la zona en un solo lugar.',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            const Divider(thickness: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                OutlinedButton(onPressed: (){
                  Navigator.pushNamed(context, '/login');
                }, child: const Text('Login')),
                const SizedBox(width: 25,),
                OutlinedButton(onPressed: (){
                  Navigator.pushNamed(context, '/register');
                }, child: const Text('Registrarse')),
              ],
            ),
            const SizedBox(height: 50,),
            const Text('Olvidaste tu contraseña?', style: TextStyle( fontSize: 10, color: Colors.blue ),),
          ],
        )
      ),
    );
  }
}