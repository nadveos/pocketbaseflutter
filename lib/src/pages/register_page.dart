import 'package:flutter/material.dart';

import '../providers/register_new_user.dart';


class RegisterPage extends StatefulWidget {
   const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

  RegisterNewUser registerNewUser = RegisterNewUser();

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Registrarse'),
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
                TextFormField(
                  controller: confirmPasswordController,
                  enableSuggestions: false,
                  autocorrect: false,
                  obscureText: true,
                  decoration: const InputDecoration(
                    hintText: 'Confirmar contraseña',
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 20,),
                ElevatedButton(
                  onPressed: (){
                    final email = emailController.text;
                    final password = passwordController.text;
                    final confirmPassword = confirmPasswordController.text;
                    final registerNewUser = RegisterNewUser();
                    
                    if(password != confirmPassword){
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Las contraseñas no coinciden')));
                      return;
                    }
                    if(email.isEmpty || password.isEmpty || confirmPassword.isEmpty){
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Todos los campos son obligatorios')));
                      return;
                    }
                    if(  email.isNotEmpty && password.isNotEmpty && confirmPassword.isNotEmpty && password == confirmPassword){
                      final createUser = registerNewUser.register(email, password, confirmPassword);
                      
                       createUser;
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          
                          content: Text('Registro exitoso')));
                    }else{
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Error al registrar')));
                    }
                    
                      
                      
                  }, 
                  child: const Text('Registrarse')),
              ],
                    ),
            ),
          )
          ),
      ),
    );
  }
}