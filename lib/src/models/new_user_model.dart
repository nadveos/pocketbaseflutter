class NewUserModel {
    NewUserModel({
        
        required this.email,
        required this.password,
       
    });

    
    String email;
    String password;
   
    factory NewUserModel.fromJson(Map<String, dynamic> json) => NewUserModel(
        
        email: json["email"],
        password: json["password"],
       
    );

    Map<String, dynamic> toJson() => {
        
        "email": email,
        "password": password,
        
    };
}