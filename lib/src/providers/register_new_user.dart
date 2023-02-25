import 'package:pocketbase/pocketbase.dart';


final pb = PocketBase('http://10.0.2.2:8090');

class RegisterNewUser {

Future register(String email, String password, String passwordConfirm) async{
  final data = {
    'email': email,
    'password': password,
    'passwordConfirm': passwordConfirm,
  };
  final record = await pb.collection('salt_users').create(body: data);
  return record;
}


}