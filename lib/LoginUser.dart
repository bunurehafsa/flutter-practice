class LoginUser {
  final String email;
  final String firstname;
  final String lastname;
  final String mobile;
  final String photo;

  LoginUser(
    {
      required this.email,
       required this.firstname, 
       required this. lastname,
       required this.mobile,
       required this.photo});

   factory LoginUser.fromJson(Map<String,dynamic>json){
    return LoginUser(
      email: json['email'], 
      firstname: json['firstname'], 
      lastname: json['lastname'],
      photo: json['photo'],
      mobile: json['mobile'],
      );
  }
  
  }