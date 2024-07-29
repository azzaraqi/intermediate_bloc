// import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
// import 'package:intermediate/pegawai/model/model_pegawai.dart';
// import 'package:intermediate/pegawai/utlis.db/db_helper.dart';

// class FormPegawai extends StatefulWidget {
//   final ModelPegawaiSqflite? data;

//   const FormPegawai({super.key, this.data});

//   @override
//   State<FormPegawai> createState() => _FormPegawaiState();
// }

// class _FormPegawaiState extends State<FormPegawai> {
//   DatabaseHelper db = DatabaseHelper();
//   TextEditingController? firstname,lastname,mobileno,emailid;
//   @override
//   void initState(){
//     super.initState();
//     firstname = TextEditingController(text :widget.data == null?'':widget.data?.firstname);
//     lastname = TextEditingController(text :widget.data == null?'':widget.data?.lastname);
//     firstname = TextEditingController(text :widget.data == null?'':widget.data?.firstname);
//     firstname = TextEditingController(text :widget.data == null?'':widget.data?.firstname);


//   }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Form Pegawai'),
//       ),
//       body: ListView(
//         padding: EdgeInsets.all(10),
//         children: [
//           SizedBox(height: 10,),
//           TextField(
//             controller: firstname,
//             decoration: InputDecoration(
//               label:Text('firstname'),
//               border :OutlineInputBorder(
//                 borderRadius: BorderRadius.circular(20),
//               )
//             ),
//           ),
//           TextField(
//             controller: firstname,
//             decoration: InputDecoration(
//               label:Text('lastname'),
//               border :OutlineInputBorder(
//                 borderRadius: BorderRadius.circular(20),
//               )
//             ),
//           ),
//           TextField(
//             controller: firstname,
//             decoration: InputDecoration(
//               label:Text('mobileno'),
//               border :OutlineInputBorder(
//                 borderRadius: BorderRadius.circular(20),
//               )
//             ),
//           ),
//           TextField(
//             controller: firstname,
//             decoration: InputDecoration(
//               label:Text('emailid'),
//               border :OutlineInputBorder(
//                 borderRadius: BorderRadius.circular(20),
//               )
//             ),
//           ),
//           SizedBox(height: 10,),
//           MaterialButton(onPressed: (){

//           }
//           shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.circular(20),),
//           color: Colors.green,
//           child: (widget.data == null)? Text('Add',style: TextStyle(color: ),)
//           :Text('Update')
//           ),
//         ],
//       ),
//     );
//   }
//   Future<void> updateInsertData() async{
//     if(widget.data != null){
//       await db.updatePegawai(ModelPegawaiSqflite.froMap({
//         'id' :widget.data?.id,
//         'firstname ': firstname?.text,
//         'lastname ': lastname?.text,
//         'mobileno ': mobileno?.text,
//         'emailid ': emailid?.text,
//       }));
//       Navigator.pop(context);
//     }else{
      
//     }
//   }
// }