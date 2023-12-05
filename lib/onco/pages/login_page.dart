import 'package:flutter/material.dart';
import 'package:to_doapp/onco/pages/home_page.dart';
import 'package:to_doapp/onco/widgets/round_button.dart';
import 'package:to_doapp/onco/widgets/textfield.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("O N C O")),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child:  LayoutBuilder(
            builder: (BuildContext context ,BoxConstraints constraints){
              if(constraints.maxWidth<=750){
                return Padding(padding: const EdgeInsets.symmetric(horizontal: 25),
                child: login(context),);
              }
              else{
                return Padding(padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*0.3),
                child: login(context),);
              }
            },
          )
        ),
      ),
    );
  }
  Widget login(BuildContext context){
    return Column(

      mainAxisAlignment: MainAxisAlignment.center,

      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height*0.15,
        ),
        const    Text(
          "Log in",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        const   SizedBox(height: 20,),
           TextFieldForForm(text: 'Username',validator: (txt) {
             var nonNullValue = txt ?? '';
             if (nonNullValue.isEmpty ) {
               return ("Username is required");
             } else
               return null;
           } ,),
        const   SizedBox(height: 15,),
          TextFieldForForm(text: 'Password',validator: (txt) {

          if (txt == null || txt.isEmpty) {
            return "Password Required";
          }
          if (txt.length < 8) {
            return "Password must has 8 characters";
          }
          if (!txt.contains(RegExp(r'[A-Z]'))) {
            return "Password must has uppercase";
          }
          if (!txt.contains(RegExp(r'[0-9]'))) {
            return "Password must has digits";
          }
          if (!txt.contains(RegExp(r'[a-z]'))) {
            return "Password must has lowercase";
          }
          if (!txt.contains(RegExp(r'[#?!@$%^&*-]'))) {
            return "Password must has special characters";
          } else
            return null;
        } ,),
        const   SizedBox(height: 15,),
        Row(
          children: [
            Checkbox(
                value: false,
                onChanged: (value) {
                  value = true;
                }),
            const Text(
              "Don't forget me!",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const Spacer(),
            TextButton(
                onPressed: () {},
                child: const Text(
                  "Forget Password?",
                  style: TextStyle(color: Colors.orange),
                )),
          ],
        ),
        const   SizedBox(height: 15,),
        Button(onPress: (){
          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const HomePage()));
        }, text: "Log in", textColor: Colors.white, buttonColor: Colors.redAccent),
        SizedBox(
          height: MediaQuery.of(context).size.height*0.2,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Create an account?",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            TextButton(
                style:
                TextButton.styleFrom(padding: const EdgeInsets.all(0)),
                onPressed: () {},
                child: const Text(
                  "Sign Up",
                  style: TextStyle(color: Colors.orange,fontSize: 15),
                ))
          ],
        )
      ],
    );
  }
}
