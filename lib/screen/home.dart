// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:flutter/src/widgets/placeholder.dart';

// class HomeView extends StatefulWidget {
//   const HomeView({super.key});

//   @override
//   State<HomeView> createState() => _HomeView();
// }

// class _HomeView extends State<HomeView> {
//   //   final _formKey = GlobalKey<FormState>();
//   // Map<String, dynamic> productData = {
//   //   "p_name": "",
//   //   "p_price": "",
//   //   "p_upload_date": DateTime.now().millisecondsSinceEpoch,
//   //   "phone_number": ""
//   // };
//   TextEditingController productName = TextEditingController();
//   TextEditingController productPrice = TextEditingController();
//   TextEditingController Productqty = TextEditingController();

//   addProduct() {
//     CollectionReference products =
//         FirebaseFirestore.instance.collection("products");

//     products
//     .add({
//       'Product Name': productName.text,
//       'Product Prize': productPrice.text,
//       'Product Qty': Productqty.text,
//     })
//      .then((value) => print("Product Addes"))
//       .catchError((e) => print(e));
    
//   }
//   //  _formKey.currentState!.save();
//   // if (_formKey.currentState!.validate()) {
//   //   print("Form is vaid ");

//   //   print('Data for login $productData');

//   // }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Theme.of(context).primaryColor ,
//       appBar: AppBar(
//         centerTitle: true,
//         title: const Text('Add New Product'),
//       ),
//       body: SingleChildScrollView(
//         child: Column(

//           children: [
//             Container(
//               padding:const EdgeInsets.only(top: 20),
//               child: Form(
//                 child: ListView(
//                   shrinkWrap: true,
//                   children: [
//                     const SizedBox(
//                       height: 20,
//                     ),
//                     TextField(
//                           controller: productName,                    
//                           decoration: const InputDecoration(
//                             fillColor: Colors.white,
//                             filled: true,
//                             labelText: "Product Name",)
//                     ),

//                     const SizedBox(
//                       height: 20,
//                     ),

//                     TextField(
//                           controller: productPrice,                    
//                           decoration: const InputDecoration(
//                             fillColor: Colors.white,
//                             filled: true,
//                             labelText: "Product Prize",)
//                     ),
                     
//                      const SizedBox(
//                       height: 20,
//                     ),

//                     TextField(
//                           controller: Productqty,                    
//                           decoration: const InputDecoration(
//                             fillColor: Colors.white,
//                             filled: true,
//                             labelText: "Phone Quantity",)
//                     ),
//                 //     TextFormField(
//                 //       keyboardType: TextInputType.text,
//                 //       decoration: const InputDecoration(
//                 //         labelText: 'Product Name',
//                 //       ),
//                 //       // validator: (value) {
//                 //       //   if (value == null || value.isEmpty) {
//                 //       //     return 'Product Name Required';
//                 //       //   }
//                 //       //   return null;
//                 //       // },

//                 //       controller: productName,

//                 //       // onSaved: (value) {
//                 //       //   productData['p_name'] = value!;
//                 //       // },
//                 //     ),
//                 //     TextFormField(
//                 //       keyboardType: TextInputType.number,
//                 //       decoration: InputDecoration(labelText: 'Product Price'),
//                 //       // validator: (value) {
//                 //       //   if (value == null || value.isEmpty) {
//                 //       //     return 'Product Price Required';
//                 //       //   }
//                 //       //   return null;
//                 //       // },

//                 //       controller: productPrice,
//                 //       // onSaved: (value) {
//                 //       //   productData['p_price'] = value!;
//                 //       // },
//                 //     ),
//                 // //  TextFormField(
//                 // //       keyboardType: TextInputType.number,
//                 // //       decoration: InputDecoration(labelText: 'Phone Number'),
//                 // //       // validator: (value) {
//                 // //       //   if (value == null || value.isEmpty) {
//                 // //       //     return 'Phone Number  Required';
//                 // //       //   }
//                 // //       //   return null;
//                 // //       // },

//                 // //       controller: PhoneNum,
//                 // //       // onSaved: (value) {
//                 // //       //   productData['phone_number'] = value!;
//                 // //       // },
//                 // //     ),
//                     const SizedBox(
//                       height: 60,
//                     ),

//                     Container(
//                       width: 250,height: 40,
                      
//                       // padding: EdgeInsets.all(30),
                      
//                       decoration: const BoxDecoration(
//                         borderRadius :  BorderRadius.all(Radius.circular(50))),
//                       child: ElevatedButton(
//                         style: ElevatedButton.styleFrom(
//                                   primary: Colors.white, // Background color
//                                   onPrimary: Colors.black, // Text Color (Foreground color)
//   ),
//                         onPressed: () {
//                           addProduct();
//                         },
                        
                         
//                             child: const Text('Submit',style: TextStyle(fontSize:18,color: Colors.black)),
                          
//                         ),
//                     ),
                  
//                   ],
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
