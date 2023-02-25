import 'package:flutter/material.dart';
import 'package:loginpocketbase/src/providers/login_user.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  LoginUser loginUser = LoginUser();

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(builder: (context, snapshot){
      return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Iniciar Sesión'),
        ),
        body: Center(
          child: Form(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal:25.0),
              child: SingleChildScrollView(
                child: Column(
                  
                  mainAxisSize: MainAxisSize.min,
                children: [
                  const FlutterLogo(size: 100,),
                  const SizedBox(height: 20,),
                  TextFormField(
                    controller: emailController,
                    keyboardType: TextInputType.emailAddress,
                    decoration: const InputDecoration(
                      hintText: 'Email',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  const SizedBox(height: 20,),
                  TextFormField(
                    controller: passwordController,
                    enableSuggestions: false,
                    autocorrect: false,
                    obscureText: true,
                    decoration: const InputDecoration(
                      hintText: 'Contraseña',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  const SizedBox(height: 20,),
                  ElevatedButton(
                    onPressed: () async{
                      final email = emailController.text;
                      final password = passwordController.text;
                      await loginUser.login(email, password);
                      // ignore: use_build_context_synchronously
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('Iniciando Sesión'),
                        ),
                      );
                      
                      
                    }, 
                    child: const Text('Iniciar Sesión')
                  ),
                  const SizedBox(height: 20,),
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/register');
                    }, 
                    child: const Text('Registrate Aquí')
                  ),
                ],
                ),
              ),
            ),
          ),
        ),
      );
    });
  }
}