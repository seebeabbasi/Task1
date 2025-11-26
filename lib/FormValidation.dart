import 'package:flutter/material.dart';

class formValidation extends StatefulWidget {
  const formValidation({super.key});
  @override
  State<formValidation> createState() => _formValidationState();
}
class _formValidationState extends State<formValidation> {
  final TextEditingController usernameController= TextEditingController();
  final TextEditingController passwordController= TextEditingController();
  final TextEditingController EmailController= TextEditingController();
  final _formkey= GlobalKey<FormState>();
  bool _obsecuretext= false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign Up'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          key: _formkey,
            child: Column(
              children: [
                TextFormField(
                  validator: (value){
                    if(value==null || value.isEmpty){
                      return 'Enter your Name';
                    }
                    return null;
                  },
                  controller: usernameController,
                  decoration: InputDecoration(
                    hintText: 'Enter your Name',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8)
                    ),
                  ),
                ),
                SizedBox(height:  10,),
                TextFormField(
                  validator: (value){
                    if(value==null || value.isEmpty){
                      return 'Enter your Email';
                    }
                    return null;
                  },
                  controller: EmailController,
                  decoration: InputDecoration(
                    hintText: 'Enter your Email',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8)
                    ),
                  ),
                ),
                SizedBox(height:  10,),
                TextFormField(
                  obscureText: _obsecuretext,
                  validator: (value){
                    if(value!.length < 8){
                      return 'Password length less then 8';
                    }
                    return null;
                  },
                  controller: passwordController,
                  decoration: InputDecoration(
                      hintText: 'Enter your password',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8)
                      ),
                    suffixIcon: IconButton(
                        onPressed: (){
                          setState(() {
                            _obsecuretext = !_obsecuretext;
                          });
                    },
                        icon: Icon(_obsecuretext ? Icons.visibility_off : Icons.visibility))
                  ),
                ),
                SizedBox(height: 15,),
                ElevatedButton(onPressed: (){
                    if(_formkey.currentState!.validate()){
                      print('Form is valid');
                    }
                },
                    child: Text('Submit'))
              ],
            )),
      ) ,
    );
  }
}
