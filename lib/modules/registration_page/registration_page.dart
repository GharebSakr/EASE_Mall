import 'package:ease_mall/modules/home_page/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class RegistrationPage extends StatefulWidget {

  @override
  State<RegistrationPage> createState() => _LoginScreen3State();
}

class _LoginScreen3State extends State<RegistrationPage> {
  final _formKey = GlobalKey<FormState>();

  bool secureP = true;
  var email = TextEditingController();
  var password = TextEditingController();
  var rpassword = TextEditingController();
  var name = TextEditingController();
  var phone = TextEditingController();
  var code = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(

        centerTitle: true,

        title: Text('EASE Mall',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        actions: [

          IconButton(onPressed: (){

            print('Hello');

          }, icon: Icon(Icons.search_rounded))

        ],

      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                Text('Register',
                  style: TextStyle(fontWeight: FontWeight.bold,
                      fontSize: 40.0),
                ),
                SizedBox(height: 20.0,),
                TextFormField(
                  controller: name,
                  onFieldSubmitted: (Value){

                    print(Value);

                  },

                  validator: (value){

                    if (value!.isEmpty){

                      return 'Name must not be empty';

                    }

                    return null;

                  },
                  keyboardType: TextInputType.name,

                  decoration: InputDecoration(
                    labelText: 'Your Name',
                    prefixIcon: Icon(Icons.drive_file_rename_outline),
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(5.0)),



                  ),

                ),
                SizedBox(height: 20.0,),
                TextFormField(
                  controller: email,
                  onFieldSubmitted: (Value){

                    print(Value);

                  },

                  validator: (value){

                    if (value!.isEmpty){

                      return 'Email must not be empty';

                    }

                    return null;

                  },
                  keyboardType: TextInputType.emailAddress,

                  decoration: InputDecoration(
                    labelText: 'Email Address',
                    prefixIcon: Icon(Icons.email),
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(5.0)),



                  ),

                ),
                SizedBox(height: 20.0,),
                TextFormField(
                  controller: password,
                  validator: (value) {
                    if(value!.isEmpty){

                      return 'Password must not be empty';
                    };
                    return null;

                  },
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: secureP,

                  decoration: InputDecoration(
                      labelText: 'Password',
                      prefixIcon: Icon(Icons.lock),
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(5.0)),
                      suffixIcon: IconButton(onPressed: (){

                        secureP = !secureP;
                        setState(() {

                        });

                      }, icon: secureP? Icon(Icons.visibility) : Icon(Icons.visibility_off))



                  ),

                ),
                SizedBox(height: 20.0,),
                TextFormField(
                  controller: rpassword,
                  validator: (value) {
                    if(value!.isEmpty){

                      return 'Password must not be empty';
                    };
                    return null;

                  },
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: secureP,

                  decoration: InputDecoration(
                      labelText: 'Repeat Password',
                      prefixIcon: Icon(Icons.lock),
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(5.0)),
                      suffixIcon: IconButton(onPressed: (){

                        secureP = !secureP;
                        setState(() {

                        });

                      }, icon: secureP? Icon(Icons.visibility) : Icon(Icons.visibility_off))



                  ),

                ),
                SizedBox(height: 20.0,),
                TextFormField(
                  controller: phone,
                  onFieldSubmitted: (Value){

                    print(Value);

                  },

                  validator: (value){

                    if (value!.isEmpty){

                      return 'Phone Number must not be empty';

                    }

                    return null;

                  },
                  keyboardType: TextInputType.phone,

                  decoration: InputDecoration(
                      labelText: 'Phone Number',
                      prefixIcon: Icon(Icons.phone_android),
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(5.0)),
                      suffixIcon: IconButton(onPressed: (){}, icon: Icon(Icons.send))



                  ),

                ),
                SizedBox(height: 20.0,),
                TextFormField(
                  controller: code,
                  onFieldSubmitted: (Value){

                    print(Value);

                  },

                  validator: (value){

                    if (value!.isEmpty){

                      return 'Code must not be empty';

                    }

                    return null;

                  },
                  keyboardType: TextInputType.number,

                  decoration: InputDecoration(
                    labelText: 'Code Sent Via Text',
                    prefixIcon: Icon(Icons.code),
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(5.0)),



                  ),

                ),
                SizedBox(height: 20.0,),
                Container(
                  color: Colors.blue,
                  width: double.infinity,
                  child: MaterialButton(
                    onPressed: () {
                      // Validate returns true if the form is valid, or false otherwise.
                      if (_formKey.currentState!.validate()) {
                        print('Loged In');
                      };
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => HomePage(),
                          )
                      );
                    },
                    child: Text('Register',

                      style: TextStyle(fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                          color: Colors.white),
                    ),

                  ),
                ),
                SizedBox(height: 20.0,),




              ],
            ),
          ),
        ),
      ),

    );
  }
}
