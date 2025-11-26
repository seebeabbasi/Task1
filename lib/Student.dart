

class Student{
  String username;
  String password;
  String email;


  Student({required this.username, required this.password, required this.email});

   Map<String, dynamic> map(){
     return {
       'UserName': username,
       'Password': password,
       'Email' :  email
     };
   }

   factory Student.fromMap(Map<String, dynamic> map){

     return Student(

         username: map['UserName'],
         password: map['Password'],
         email: map['Email']
     );
   }
}