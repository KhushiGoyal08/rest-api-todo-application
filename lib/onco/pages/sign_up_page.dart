// import 'package:flutter/material.dart';
// import 'package:to_doapp/onco/widgets/round_button.dart';
// import 'package:to_doapp/onco/widgets/textfield.dart';
//
// class SignUpScreen extends StatelessWidget {
//   SignUpScreen({super.key});
//   final bool checkValue = false;
//   final _formkey =GlobalKey<FormState>();
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//
//       appBar: AppBar(
//         title:const  Center(child: Text("O N C O")),
//         centerTitle: true,
//       ),
//       body: LayoutBuilder(
//         builder: (BuildContext context ,BoxConstraints constraints){
//          if(constraints.maxWidth<=750){
//       return      Padding(
//              padding:const  EdgeInsets.symmetric(
//                  horizontal: 30
//              ),
//              child: signup(),
//            );
//          }
//          else{
//          return  Padding(
//              padding:  EdgeInsets.symmetric(
//                  horizontal: MediaQuery.of(context).size.width*0.35
//              ),
//              child: signup(),
//            );
//          }
//         },
//       ),
//     );
//   }
//   Widget signup(){
//     return SingleChildScrollView(
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//         children: [
//           const Text(
//             "Sign Up",
//             style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//           ),
//           const  SizedBox(height: 20,),
//           const Text(
//             "Create an account and get started",
//             style: TextStyle(fontWeight: FontWeight.bold),
//           ),
//         Form(
//           key: _formkey,
//             child: Column(
//           children: [
//             const  SizedBox(height: 20,),
//              TextFieldForForm(text: "Username",validator: (txt) {
//                var nonNullValue = txt ?? '';
//                if (nonNullValue.isEmpty ) {
//                  return ("Username is required");
//                } else
//                  return null;
//              },),
//             const  SizedBox(height: 10,),
//              TextFieldForForm(text: "Password",validator: (txt) {
//
//                if (txt == null || txt.isEmpty) {
//                  return "Password Required";
//                }
//                if (txt.length < 8) {
//                  return "Password must has 8 characters";
//                }
//                if (!txt.contains(RegExp(r'[A-Z]'))) {
//                  return "Password must has uppercase";
//                }
//                if (!txt.contains(RegExp(r'[0-9]'))) {
//                  return "Password must has digits";
//                }
//                if (!txt.contains(RegExp(r'[a-z]'))) {
//                  return "Password must has lowercase";
//                }
//                if (!txt.contains(RegExp(r'[#?!@$%^&*-]'))) {
//                  return "Password must has special characters";
//                } else
//                  return null;
//              } ,),
//             const  SizedBox(height: 10,),
//             TextFieldForForm(text: "Email" ,validator:((txt) {
//               var nonNullValue=txt??'';
//               if(nonNullValue.isEmpty){
//                 return "Enter Email";
//
//               }
//               else if(RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}').hasMatch(nonNullValue)){
//
//                 return null;
//               }
//               else {
//                 return "Enter valid email";
//
//               }
//             }) ,),
//             const  SizedBox(height: 10,),
//           TextFieldForForm(text: "Phone Number",validator: ((txt){
//             var nonNullValue=txt??'';
//             if(nonNullValue.isEmpty){
//               return "Enter Phone No";
//
//             }
//             if(nonNullValue.length!=10){
//               return "Length should be 10";
//             }
//           }),),
//             const  SizedBox(height: 10,),
//              TextFieldForForm(text: "Username", validator: (txt) {
//         var nonNullValue = txt ?? '';
//         if (nonNullValue.isEmpty ) {
//         return ("Username is required");
//         } else
//         return null;
//         },),
//             const  SizedBox(height: 10,),
//              TextFieldForForm(text: "Create Password",validator:(txt) {
//
//                if (txt == null || txt.isEmpty) {
//                  return "Password Required";
//                }
//                if (txt.length < 8) {
//                  return "Password must has 8 characters";
//                }
//                if (!txt.contains(RegExp(r'[A-Z]'))) {
//                  return "Password must has uppercase";
//                }
//                if (!txt.contains(RegExp(r'[0-9]'))) {
//                  return "Password must has digits";
//                }
//                if (!txt.contains(RegExp(r'[a-z]'))) {
//                  return "Password must has lowercase";
//                }
//                if (!txt.contains(RegExp(r'[#?!@$%^&*-]'))) {
//                  return "Password must has special characters";
//                } else
//                  return null;
//              } ),
//             const  SizedBox(height: 10,),
//
//
//           Row(
//             children: [
//               Checkbox(
//                 value: checkValue,
//                 onChanged: (checkValue) {
//                   checkValue = true;
//                 },
//               ),
//               const Text(
//                 "Agree to terms & conditions",
//                 style: TextStyle(fontWeight: FontWeight.bold),
//               ),
//             ],
//           ),
//           Button(
//               onPress: () {
//                 if (_formkey.currentState!.validate()) {
//
//                 }
//
//               },
//               text: "Create Account",
//               textColor: Colors.white,
//               buttonColor: Colors.redAccent),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               const Text(
//                 "Already have an account?",
//                 style: TextStyle(fontWeight: FontWeight.bold),
//               ),
//               TextButton(
//                   style:
//                   TextButton.styleFrom(padding: const EdgeInsets.all(0)),
//                   onPressed: () {},
//                   child: const Text(
//                     "Log in",
//                     style: TextStyle(color: Colors.orange,fontSize: 15),
//                   )),
//             ],
//           ),
//           ],
//         ),
//     ),
//         ],
//       ),
//     );
//
//   }
// }
