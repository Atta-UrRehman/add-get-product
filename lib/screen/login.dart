import 'package:fbclass1/screen/dashboard_view.dart';
import 'package:fbclass1/screen/signup.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'addProduct.dart';
import 'home.dart';

class LoginView extends StatelessWidget {
  
  LoginView({super.key});
  TextEditingController email_control = TextEditingController();
  TextEditingController pass_control = TextEditingController();
  @override
  login(context) async {
    try {
      final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: email_control.text, password: pass_control.text);
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => const AddProduct(),
        ),
      );
    } on FirebaseAuthException 
   // the snackbar show Errors in login Form... 
  catch(e)  {
                  print(e.toString());
                  var snackbar = SnackBar(content: Text(e.toString()));
                  ScaffoldMessenger.of(context).showSnackBar(snackbar);
                }}


 @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assest/login1.jpg"), fit: BoxFit.cover)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Container(
                padding: const EdgeInsets.only(left: 32, top: 80),
                child: const Text(
                  "Login!\n",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                  ),
                )),
            SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.5,
                  right: 40,
                  left: 40,
                  bottom: 30,
                ),
                child: Column(
                  children: [
                    TextField(
                      controller: email_control,
                      decoration: const InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        labelText: "Email",
                        labelStyle: TextStyle(color:Colors.black), 
                      
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(12)),
                        ),
                      ),
                    ),
                    
                    const SizedBox(height: 19),
                    TextField(
                      controller: pass_control,                    
                      decoration: const InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        labelText: "Password",
                    //    suffixIcon: Icon(Icons.visibility),
                        labelStyle: TextStyle(color:Colors.black), 
                        border: OutlineInputBorder(                       
                          borderRadius: BorderRadius.all(Radius.circular(12),
                          
                          ),
                          
                        ),
                        
                      ),
                    ),

                    const SizedBox(height: 30),


         GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SignupView()),
                            );
                          },
                          child:const Text("I have an account! let's Login..",style:TextStyle(fontSize:17,color: Color.fromARGB(255, 0, 0, 0),inherit: true))),
                    
                    const SizedBox(height: 30),

                    Container(
                      width: 250,height: 40,
                      
                      // padding: EdgeInsets.all(30),
                      
                      decoration: const BoxDecoration(
                        borderRadius :  BorderRadius.all(Radius.circular(50))),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                                  primary: Colors.white, // Background color
                                  onPrimary: Colors.black, // Text Color (Foreground color)
  ),
                          onPressed: (){
                           {
                               login(context);
                            }
                           
                          },
                          child :const Text("Login",style: TextStyle(fontSize:22,color: Colors.black,))),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }}