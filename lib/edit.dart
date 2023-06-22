import 'package:flutter/material.dart';


import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';

import 'global.dart';

class EditPage extends StatefulWidget {
  const EditPage({Key? key}) : super(key: key);

  @override
  State<EditPage> createState() => _EditPageState();
}

class _EditPageState extends State<EditPage> {

  File? _image;
  ImagePicker pick = ImagePicker();


  getImageFromGallary() async {
    XFile? xfile = await pick.pickImage(source: ImageSource.camera);
    String path = xfile!.path;
    // if (file != null) {
    setState(() {
      _image = File(path);
    });
    // }
  }

  File? _image1;
  ImagePicker pick1 = ImagePicker();

  getSignature() async {
    XFile? xfile1 = await pick1.pickImage(source: ImageSource.camera);
    String path = xfile1!.path;
    // if (file1 != null) {
    setState(() {
      _image1 = File(path);
    });
    // }
  }

  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  List Y = [];
  int Z = 0;

  bool a = true;
  bool b = true;
  bool c = true;

  bool O = true;
  bool P = true;
  bool Q = true;

  bool I = true;

  TextEditingController numincontroller = TextEditingController(
      text: Global.numin);

  // TextEditingController imagecontroller = TextEditingController(text: Global.image);
  // TextEditingController image1controller = TextEditingController(text: Global.image1);
  TextEditingController whocontroller = TextEditingController(text: Global.who);
  TextEditingController addcontroller = TextEditingController(text: Global.add);
  TextEditingController who1controller = TextEditingController(
      text: Global.who1);
  TextEditingController add1controller = TextEditingController(
      text: Global.add1);
  TextEditingController shipcontroller = TextEditingController(
      text: Global.ship);
  TextEditingController termcontroller = TextEditingController(
      text: Global.term);
  TextEditingController ordercontroller = TextEditingController(
      text: Global.order);

  TextEditingController dateController =
  TextEditingController(text: Global.date);
  TextEditingController date1Controller =
  TextEditingController(text: Global.date1);

  void getDatePicker() {
    showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2001),
        lastDate: DateTime.now())
        .then((pickedDate) {
      if (pickedDate == null) {
        return;
      }
      setState(() {
        dateController.text = DateFormat('yMMMEd'
            '').format(pickedDate);
      });
    });
  }

  void getDate1Picker() {
    showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2001),
        lastDate: DateTime.now())
        .then((pickedDate) {
      if (pickedDate == null) {
        return;
      }
      setState(() {
        date1Controller.text = DateFormat('dd-MM-yyyy').format(pickedDate);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    // dynamic tot = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      backgroundColor: Color(0xffeeeeee),
      appBar: AppBar(
        leading: Icon(Icons.arrow_back),
        title: Text(
          "Edit Invoice",
          style: TextStyle(color: Colors.white, fontSize: 24),
        ),
        backgroundColor: Colors.green[800],
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            flex: 17,
            child: Padding(
              padding: const EdgeInsets.all(17),
              child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Form(
                  key: formKey,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "INVOICE",
                            style: TextStyle(
                                fontSize: 37,
                                color: Colors.grey[600],
                                fontWeight: FontWeight.w500),
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {

                              });
                            },
                            child: Icon(
                              Icons.mode_edit_outline_outlined,
                              color: Colors.green[800],
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 15, bottom: 15),
                        child: TextFormField(
                          controller: numincontroller,
                          onSaved: (val) {
                            setState(() {
                              Global.numin = val;
                            });
                          },
                          validator: (val) {
                            if(val!.isEmpty) {
                              return "Enter invoice num...";
                            }
                          },
                          keyboardType: TextInputType.number,
                          textInputAction: TextInputAction.next,
                          cursorColor: Colors.green[800],
                          cursorRadius: Radius.circular(20),
                          decoration: InputDecoration(
                            hintText: " Number Invoice",
                            fillColor: Colors.white,
                            filled: true,
                            hintStyle:
                            TextStyle(color: Colors.grey, fontSize: 18),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide: BorderSide.none,
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide: BorderSide(color: Colors.green),
                            ),
                          ),
                        ),
                      ),
                      // GestureDetector(
                      //   onTap: () {
                      //     setState(() {
                      //       getImageFromGallary();
                      //     });
                      //   },
                      //   child: Container(
                      //     width: MediaQuery.of(context).size.width,
                      //     height: MediaQuery.of(context).size.height / 8,
                      //     alignment: Alignment.center,
                      //     child: Text("+ Add Your Logo",style: TextStyle(color: Colors.grey,fontSize: 20),),
                      //     decoration: BoxDecoration(
                      //       color: Colors.grey[100],
                      //       borderRadius: BorderRadius.circular(15),
                      //       border: Border.all(color: Colors.grey,width: 0.5),
                      //     ),
                      //   ),
                      // ),
                      Stack(
                        alignment: Alignment.center,
                        children: [
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                getImageFromGallary();
                              });
                            },
                            child: Container(
                              width: MediaQuery
                                  .of(context)
                                  .size
                                  .width,
                              height: MediaQuery
                                  .of(context)
                                  .size
                                  .height / 8,
                              alignment: Alignment.center,
                              // child: Text("+ Add Your Logo",style: TextStyle(color: Colors.grey,fontSize: 20),),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  (_image != null)
                                      ?
                                  CircleAvatar(
                                    radius: 50,
                                    backgroundColor: Colors.transparent,
                                    backgroundImage:
                                    (_image != null)
                                        ? FileImage(_image!)
                                        : null,
                                  )
                                      :
                                  Text(
                                    "+ Add Your Logo",
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 20),
                                  ),
                                ],
                              ),
                              decoration: BoxDecoration(
                                color: Colors.grey[100],
                                borderRadius: BorderRadius.circular(15),
                                border:
                                Border.all(color: Colors.grey, width: 0.5),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20, bottom: 20),
                        child: Divider(
                          thickness: 1,
                          color: Colors.grey,
                        ),
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Bill From",
                            style: TextStyle(fontSize: 18),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10, bottom: 15),
                        child: TextFormField(
                          controller: whocontroller,
                          onSaved: (val) {
                            setState(() {
                              Global.who = val;
                            });
                          },
                          validator: (val) {
                            if(val!.isEmpty){
                              return "Enter invoice from...";
                            }
                          },
                          textInputAction: TextInputAction.next,
                          cursorColor: Colors.green[800],
                          cursorRadius: Radius.circular(20),
                          decoration: InputDecoration(
                            hintText: " Who is this invoice from? (required)",
                            fillColor: Colors.white,
                            filled: true,
                            hintStyle:
                            TextStyle(color: Colors.grey, fontSize: 18),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide: BorderSide.none,
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide: BorderSide(color: Colors.green),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 20),
                        child: TextFormField(
                          controller: addcontroller,
                          onSaved: (val) {
                            setState(() {
                              Global.add = val;
                            });
                          },
                          validator: (val) {
                            if(val!.isEmpty){
                              return "Enter address...";
                            }
                          },
                          textInputAction: TextInputAction.next,
                          maxLines: 3,
                          cursorColor: Colors.green[800],
                          cursorRadius: Radius.circular(20),
                          decoration: InputDecoration(
                            hintText: " Address",
                            fillColor: Colors.white,
                            filled: true,
                            hintStyle:
                            TextStyle(color: Colors.grey, fontSize: 18),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide: BorderSide.none,
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide: BorderSide(color: Colors.green),
                            ),
                          ),
                        ),
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Bill To",
                            style: TextStyle(fontSize: 18),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10, bottom: 15),
                        child: TextFormField(
                          controller: who1controller,
                          onSaved: (val) {
                            setState(() {
                              Global.who1 = val;
                            });
                          },
                          validator: (val) {
                            if(val!.isEmpty){
                              return "Enter invoice to...";
                            }
                          },
                          textInputAction: TextInputAction.next,
                          cursorColor: Colors.green[800],
                          cursorRadius: Radius.circular(20),
                          decoration: InputDecoration(
                            hintText: " Who is this invoice to? (required)",
                            fillColor: Colors.white,
                            filled: true,
                            hintStyle:
                            TextStyle(color: Colors.grey, fontSize: 18),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide: BorderSide.none,
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide: BorderSide(color: Colors.green),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 15),
                        child: TextFormField(
                          controller: add1controller,
                          onSaved: (val) {
                            setState(() {
                              Global.add1 = val;
                            });
                          },
                          validator: (val) {
                            if(val!.isEmpty){
                              return "Enter address...";
                            }
                          },
                          textInputAction: TextInputAction.next,
                          maxLines: 3,
                          cursorColor: Colors.green[800],
                          cursorRadius: Radius.circular(20),
                          decoration: InputDecoration(
                            hintText: " Address",
                            fillColor: Colors.white,
                            filled: true,
                            hintStyle:
                            TextStyle(color: Colors.grey, fontSize: 18),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide: BorderSide.none,
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide: BorderSide(color: Colors.green),
                            ),
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                if (a == true) {
                                  a = false;
                                } else {
                                  a = true;
                                  // ahi click karta textfeild null thay te logic baki che
                                }
                              });
                            },
                            child: (a)
                                ? Text(
                              "+ Ship To",
                              style: TextStyle(color: Colors.blue[800]),
                            )
                                : Icon(Icons.close),
                          ),
                        ],
                      ),
                      (a)
                          ? Container()
                          : Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Ship To",
                            style: TextStyle(fontSize: 18),
                          ),
                        ],
                      ),
                      (a)
                          ? Container()
                          : Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: TextFormField(
                          controller: shipcontroller,
                          onSaved: (val) {
                            setState(() {
                              Global.ship = val;
                            });
                          },
                          validator: (val) {
                            if(val!.isEmpty){
                              return "Enter ship to...";
                            }
                          },
                          textInputAction: TextInputAction.next,
                          maxLines: 3,
                          cursorColor: Colors.green[800],
                          cursorRadius: Radius.circular(20),
                          decoration: InputDecoration(
                            hintText: " (Optional)",
                            fillColor: Colors.white,
                            filled: true,
                            hintStyle: TextStyle(
                                color: Colors.grey, fontSize: 18),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide: BorderSide.none,
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide: BorderSide(color: Colors.green),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20, bottom: 20),
                        child: Divider(
                          thickness: 1,
                          color: Colors.grey,
                        ),
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Date",
                            style: TextStyle(fontSize: 18),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10, bottom: 20),
                        child: TextFormField(
                          controller: dateController,
                          onTap: getDatePicker,
                          onSaved: (val) {
                            setState(() {
                              Global.date = val;
                            });
                          },
                          validator: (val) {
                            if (val!.isEmpty) {
                              return "Enter date...";
                            }
                          },
                          textInputAction: TextInputAction.next,
                          maxLines: 1,
                          cursorColor: Colors.green[800],
                          cursorRadius: Radius.circular(20),
                          decoration: InputDecoration(
                            suffixIcon: Icon(
                              Icons.date_range,
                              size: 27,
                            ),
                            fillColor: Colors.white,
                            filled: true,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide: BorderSide.none,
                            ),
                            // focusedBorder: OutlineInputBorder(
                            //   borderRadius: BorderRadius.circular(15),
                            //   borderSide: BorderSide(color: Colors.green),
                            // ),
                          ),
                        ),
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Due Date",
                            style: TextStyle(fontSize: 18),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10, bottom: 20),
                        child: TextFormField(
                          controller: date1Controller,
                          onTap: getDate1Picker,
                          onSaved: (val) {
                            setState(() {
                              Global.date1 = val;
                            });
                          },
                          validator: (val) {
                            if (val!.isEmpty) {
                              return "Enter due date...";
                            }
                          },
                          textInputAction: TextInputAction.next,
                          maxLines: 1,
                          cursorColor: Colors.green[800],
                          cursorRadius: Radius.circular(20),
                          decoration: InputDecoration(
                            suffixIcon: Icon(
                              Icons.date_range,
                              size: 27,
                            ),
                            fillColor: Colors.white,
                            filled: true,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide: BorderSide.none,
                            ),
                            // focusedBorder: OutlineInputBorder(
                            //   borderRadius: BorderRadius.circular(15),
                            //   borderSide: BorderSide(color: Colors.green),
                            // ),
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                b = false;
                                // }else{
                                //   b = true;
                                //   // ahi click karta textfeild null thay te logic baki che
                              });
                            },
                            child: (b)
                                ? Text(
                              "+ Payment Term",
                              style: TextStyle(color: Colors.blue[800]),
                            )
                                : Container(),
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                c = false;
                              });
                            },
                            child: (c)
                                ? Text(
                              "    + Purchase Order",
                              style: TextStyle(color: Colors.blue[800]),
                            )
                                : Container(),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      (b)
                          ? Container()
                          : Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Payment Term",
                            style: TextStyle(fontSize: 18),
                          ),
                          GestureDetector(
                              onTap: () {
                                setState(() {
                                  b = true;
                                });
                              },
                              child: Icon(
                                Icons.close,
                                color: Colors.orange,
                              )),
                        ],
                      ),
                      (b)
                          ? Container()
                          : Padding(
                        padding:
                        const EdgeInsets.only(top: 10, bottom: 20),
                        child: TextFormField(
                          controller: termcontroller,
                          onSaved: (val) {
                            setState(() {
                              Global.term = val;
                            });
                          },
                          validator: (val) {
                            if(val!.isEmpty){
                              return "Enter payment term...";
                            }
                          },
                          textInputAction: TextInputAction.next,
                          maxLines: 1,
                          cursorColor: Colors.green[800],
                          cursorRadius: Radius.circular(20),
                          decoration: InputDecoration(
                            fillColor: Colors.white,
                            filled: true,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide: BorderSide.none,
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide: BorderSide(color: Colors.green),
                            ),
                          ),
                        ),
                      ),
                      (c)
                          ? Container()
                          : Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Purchase Order",
                            style: TextStyle(fontSize: 18),
                          ),
                          GestureDetector(
                              onTap: () {
                                setState(() {
                                  c = true;
                                });
                              },
                              child: Icon(
                                Icons.close,
                                color: Colors.orange,
                              )),
                        ],
                      ),
                      (c)
                          ? Container()
                          : Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: TextFormField(
                          controller: ordercontroller,
                          onSaved: (val) {
                            setState(() {
                              Global.order = val;
                            });
                          },
                          validator: (val) {
                            if(val!.isEmpty){
                              return "Enter perchase order...";
                            }
                          },
                          textInputAction: TextInputAction.next,
                          maxLines: 1,
                          cursorColor: Colors.green[800],
                          cursorRadius: Radius.circular(20),
                          decoration: InputDecoration(
                            fillColor: Colors.white,
                            filled: true,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide: BorderSide.none,
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide: BorderSide(color: Colors.green),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20, bottom: 20),
                        child: Divider(
                          thickness: 1,
                          color: Colors.grey,
                        ),
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 15),
                            child: Text(
                              "Items",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          ...Global.invoice
                              .map(
                                (e) =>
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 15),
                                  child: GestureDetector(
                                    onTap: ()  {
                                      setState(() {
                                        Navigator.pushNamed(
                                            context, 'Pagethree',
                                            arguments: e);
                                      });
                                    },
                                    child: Container(
                                      height: 90,
                                      width: MediaQuery
                                          .of(context)
                                          .size
                                          .width,
                                      child: Column(
                                        mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 25, right: 50, top: 11),
                                            child: Row(
                                              mainAxisAlignment:
                                              MainAxisAlignment
                                                  .spaceBetween,
                                              children: [
                                                Text(
                                                    "${Global
                                                        .QUANTITY} X ${Global
                                                        .ITEM}"),
                                                Text("@Rp ${Global.PRICE}"),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                right: 10),
                                            child: Row(
                                              mainAxisAlignment:
                                              MainAxisAlignment.end,
                                              children: [
                                                Text("$e"),
                                                Icon(
                                                  Icons.arrow_forward_ios,
                                                  color: Colors.grey,
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 25,
                                                right: 50,
                                                bottom: 11),
                                            child: Row(
                                              mainAxisAlignment:
                                              MainAxisAlignment
                                                  .spaceBetween,
                                              children: [
                                                Text(
                                                  "Total",
                                                  style: TextStyle(
                                                      color: Colors.grey),
                                                ),
                                                Text(
                                                  "Rp ${Global.TOTAL}",
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontWeight:
                                                      FontWeight.bold,
                                                      fontSize: 20),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15),
                                        border: Border.all(
                                            color: Colors.grey, width: 1),
                                      ),
                                      // child:
                                      // ListView.builder(
                                      //     itemBuilder: (context, i) =>
                                      //         Column(
                                      //           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      //           children: [
                                      //             // Text("${Global.invoice[i].quantity1}"),
                                      //             ListTile(
                                      //               leading: Padding(
                                      //                 padding: const EdgeInsets.only(top: 20),
                                      //                 child: Row(
                                      //                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      //                   children: [
                                      //                     Text("${Global.invoice[i].quantity1} X Dfh"),
                                      //                     Text("@Rp${Global.invoice[i].price1}"),
                                      //                   ],
                                      //                 ),
                                      //               ),
                                      //               title: Container(),
                                      //               subtitle: Container(),
                                      //               trailing: Padding(
                                      //                 padding: const EdgeInsets.only(top: 50),
                                      //                 child: Row(
                                      //                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      //                   children: [
                                      //                     Text("Total"),
                                      //                     Text("Rp 400"),
                                      //                   ],
                                      //                 ),
                                      //               ),
                                      //             ),
                                      //           ],
                                      //         ),
                                      // ),
                                    ),
                                  ),
                                ),
                          )
                              .toList(),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10, bottom: 15),
                        child: GestureDetector(
                          onTap: () async{

                            // Map<String , dynamic> lol = {
                            //   "page" : 'Pagethree',
                            // };

                            Z++;
                            // Global.invoice.add(Z);
                            await Navigator.pushNamed(context, 'Pagetwo');
                            setState(() {
                            });
                          },
                          child: Container(
                            height: MediaQuery
                                .of(context)
                                .size
                                .height / 15,
                            width: MediaQuery
                                .of(context)
                                .size
                                .width,
                            alignment: Alignment.center,
                            child: Text(
                              "+ Add New Item",
                              style: TextStyle(
                                  color: Colors.green,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500),
                            ),
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.green, width: 2),
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Subtotal",
                              style: TextStyle(
                                  fontSize: 22, fontWeight: FontWeight.w500),
                            ),
                            Text(
                              "Rp ${Global.TOTAL}",
                              style: TextStyle(
                                  fontSize: 22, fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                O = false;
                                // }else{
                                //   b = true;
                                //   // ahi click karta textfeild null thay te logic baki che
                              });
                            },
                            child: (O)
                                ? Text(
                              "+ Discount",
                              style: TextStyle(color: Colors.blue[800]),
                            )
                                : Container(),
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                P = false;
                              });
                            },
                            child: (P)
                                ? Text(
                              "     + Tax",
                              style: TextStyle(color: Colors.blue[800]),
                            )
                                : Container(),
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                Q = false;
                              });
                            },
                            child: (Q)
                                ? Text(
                              "     + Shipping",
                              style: TextStyle(color: Colors.blue[800]),
                            )
                                : Container(),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Column(
                        children: [
                          (O)
                              ? Container()
                              : Row(
                            mainAxisAlignment:
                            MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding:
                                const EdgeInsets.only(bottom: 10),
                                child: Text(
                                  "Discount",
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 20),
                                ),
                              ),
                              GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      O = true;
                                    });
                                  },
                                  child: Icon(
                                    Icons.close,
                                    color: Colors.orange,
                                  )),
                            ],
                          ),
                          (O)
                              ? Container()
                              : Padding(
                            padding: const EdgeInsets.only(bottom: 15),
                            child: TextFormField(
                              textInputAction: TextInputAction.next,
                              maxLines: 1,
                              cursorColor: Colors.green[800],
                              cursorRadius: Radius.circular(20),
                              decoration: InputDecoration(
                                fillColor: Colors.white,
                                filled: true,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15),
                                  borderSide: BorderSide.none,
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15),
                                  borderSide:
                                  BorderSide(color: Colors.green),
                                ),
                              ),
                            ),
                          ),
                          (P)
                              ? Container()
                              : Row(
                            mainAxisAlignment:
                            MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding:
                                const EdgeInsets.only(bottom: 10),
                                child: Text(
                                  "Tax",
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 20),
                                ),
                              ),
                              GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      P = true;
                                    });
                                  },
                                  child: Icon(
                                    Icons.close,
                                    color: Colors.orange,
                                  )),
                            ],
                          ),
                          (P)
                              ? Container()
                              : Padding(
                            padding: const EdgeInsets.only(bottom: 15),
                            child: TextFormField(
                              textInputAction: TextInputAction.next,
                              maxLines: 1,
                              cursorColor: Colors.green[800],
                              cursorRadius: Radius.circular(20),
                              decoration: InputDecoration(
                                fillColor: Colors.white,
                                filled: true,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15),
                                  borderSide: BorderSide.none,
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15),
                                  borderSide:
                                  BorderSide(color: Colors.green),
                                ),
                              ),
                            ),
                          ),
                          (Q)
                              ? Container()
                              : Row(
                            mainAxisAlignment:
                            MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding:
                                const EdgeInsets.only(bottom: 10),
                                child: Text(
                                  "Shipping",
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 20),
                                ),
                              ),
                              GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      Q = true;
                                    });
                                  },
                                  child: Icon(
                                    Icons.close,
                                    color: Colors.orange,
                                  )),
                            ],
                          ),
                          (Q)
                              ? Container()
                              : Padding(
                            padding: const EdgeInsets.only(bottom: 15),
                            child: TextFormField(
                              textInputAction: TextInputAction.next,
                              maxLines: 1,
                              cursorColor: Colors.green[800],
                              cursorRadius: Radius.circular(20),
                              decoration: InputDecoration(
                                fillColor: Colors.white,
                                filled: true,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15),
                                  borderSide: BorderSide.none,
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15),
                                  borderSide:
                                  BorderSide(color: Colors.green),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 15),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Total",
                                  style: TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.w800),
                                ),
                                Text(
                                  "Rp ${Global.TOTAL}",
                                  style: TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.w800),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20, bottom: 20),
                        child: Divider(
                          thickness: 1,
                          color: Colors.grey,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                I = false;
                                // }else{
                                //   b = true;
                                //   // ahi click karta textfeild null thay te logic baki che
                              });
                            },
                            child: (I)
                                ? Text(
                              "+ Signature",
                              style: TextStyle(color: Colors.blue[800]),
                            )
                                : Container(),
                          ),
                        ],
                      ),
                      (I)
                          ? Container()
                          : Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Signature",
                            style: TextStyle(
                                color: Colors.black, fontSize: 20),
                          ),
                          GestureDetector(
                              onTap: () {
                                setState(() {
                                  I = true;
                                });
                              },
                              child: Icon(Icons.close,
                                  color: Colors.orange)),
                        ],
                      ),
                      (I)
                          ? Container()
                          : Padding(
                        padding:
                        const EdgeInsets.only(top: 10, bottom: 10),
                        child: Divider(
                          thickness: 1,
                          color: Colors.grey,
                        ),
                      ),
                      (I)
                          ? Container()
                          : Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 10),
                            child: Text(
                              "City",
                              style: TextStyle(
                                  color: Colors.black, fontSize: 20),
                            ),
                          ),
                        ],
                      ),
                      (I)
                          ? Container()
                          : Padding(
                        padding: const EdgeInsets.only(bottom: 15),
                        child: TextFormField(
                          textInputAction: TextInputAction.next,
                          maxLines: 1,
                          cursorColor: Colors.green[800],
                          cursorRadius: Radius.circular(20),
                          decoration: InputDecoration(
                            fillColor: Colors.white,
                            filled: true,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide: BorderSide.none,
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide: BorderSide(color: Colors.green),
                            ),
                          ),
                        ),
                      ),
                      (I)
                          ? Container()
                          : Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 10),
                            child: Text(
                              "Date",
                              style: TextStyle(
                                  color: Colors.black, fontSize: 20),
                            ),
                          ),
                        ],
                      ),
                      (I)
                          ? Container()
                          : Padding(
                        padding: const EdgeInsets.only(bottom: 15),
                        child: TextFormField(
                          textInputAction: TextInputAction.next,
                          maxLines: 1,
                          cursorColor: Colors.green[800],
                          cursorRadius: Radius.circular(20),
                          decoration: InputDecoration(
                            fillColor: Colors.white,
                            filled: true,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide: BorderSide.none,
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide: BorderSide(color: Colors.green),
                            ),
                          ),
                        ),
                      ),
                      (I)
                          ? Container()
                          : Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 10),
                            child: Text(
                              "Name",
                              style: TextStyle(
                                  color: Colors.black, fontSize: 20),
                            ),
                          ),
                        ],
                      ),
                      (I)
                          ? Container()
                          : Padding(
                        padding: const EdgeInsets.only(bottom: 15),
                        child: TextFormField(
                          textInputAction: TextInputAction.next,
                          maxLines: 1,
                          cursorColor: Colors.green[800],
                          cursorRadius: Radius.circular(20),
                          decoration: InputDecoration(
                            fillColor: Colors.white,
                            filled: true,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide: BorderSide.none,
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide: BorderSide(color: Colors.green),
                            ),
                          ),
                        ),
                      ),
                      (I)
                          ? Container()
                          : Stack(
                        alignment: Alignment.center,
                        children: [
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                getSignature();
                              });
                            },
                            child: Container(
                              width: MediaQuery
                                  .of(context)
                                  .size
                                  .width,
                              height:
                              MediaQuery
                                  .of(context)
                                  .size
                                  .height / 8,
                              alignment: Alignment.center,
                              // child: Text("+ Add Your Logo",style: TextStyle(color: Colors.grey,fontSize: 20),),
                              child: Row(
                                mainAxisAlignment:
                                MainAxisAlignment.center,
                                children: [
                                  (_image1 != null)
                                      ?
                                  CircleAvatar(
                                    radius: 50,
                                    backgroundColor:
                                    Colors.transparent,
                                    backgroundImage: (_image1 !=
                                        null)
                                        ? FileImage(_image1!)
                                        : null,
                                  )
                                      : Text(
                                    "+ Add Siganature",
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 20),
                                  ),
                                ],
                              ),
                              decoration: BoxDecoration(
                                color: Colors.grey[100],
                                borderRadius: BorderRadius.circular(15),
                                border: Border.all(
                                    color: Colors.grey, width: 0.5),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Expanded(
              flex: 2,
              child: Container(
                width: MediaQuery
                    .of(context)
                    .size
                    .width,
                color: Colors.amber,
                child: Padding(
                  padding: const EdgeInsets.only(
                      top: 10, bottom: 10, left: 50, right: 50),
                  child: Container(
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() async {
                          if (formKey.currentState!.validate()) {
                            formKey.currentState!.save();

                            final message = SnackBar(
                              content: Text("Your invoice has been updated"),
                              action: SnackBarAction(label: "OK" , onPressed: () {

                              },),
                              backgroundColor: Colors.blue,
                              behavior: SnackBarBehavior.floating,
                              elevation: 10,
                              duration: Duration(seconds: 10),
                            );
                            ScaffoldMessenger.of(context).showSnackBar(message);

                            numincontroller.clear();
                            whocontroller.clear();
                            addcontroller.clear();
                            who1controller.clear();
                            add1controller.clear();
                            dateController.clear();
                            date1Controller.clear();
                            termcontroller.clear();
                            ordercontroller.clear();

                            // update c = await update(item1: Global.ITEM,
                            //   quantity1: Global.QUANTITY,
                            //   price1: Global.PRICE,
                            //   total1: Global.TOTAL,
                            // );
                            //
                            // Global.invoice.add(c);
                            //
                            // Navigator.of(context).pop(MaterialPageRoute(builder: (context) => EditPage(), settings: RouteSettings(arguments: c)));
                            Navigator.of(context).pushNamedAndRemoveUntil('/', (route) => false);

                          }
                        });
                      },
                      child: Text(
                        "Save",
                        style: TextStyle(color: Colors.white, fontSize: 25),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.green[800],
                      ),
                    ),
                  ),
                ),
              )),
        ],
      ),
    );
  }
}
