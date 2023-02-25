
import 'package:pocketbase/pocketbase.dart';


final pb = PocketBase('http://10.0.2.2:8090');


class LoginUser{

  Future login(String email, String password) async{
    
    final login = await pb.collection('salt_users').authWithPassword( email, password);
    
    
    return login;

  }

  void logout(){
    
    return pb.authStore.clear();
    
  }

  
}