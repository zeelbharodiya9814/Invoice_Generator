import 'package:flutter/material.dart';

import 'global.dart';


class Pagethree extends StatefulWidget {
  const Pagethree({Key? key}) : super(key: key);

  @override
  State<Pagethree> createState() => _PagethreeState();
}

class _PagethreeState extends State<Pagethree> {

  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  final TextEditingController controller = TextEditingController();

  Pagetwo({required controller}) {
    this.controller;
  }

  final _item = TextEditingController(text: Global.ITEM);
  final _num1 = TextEditingController(text: Global.QUANTITY);
  final _num2 = TextEditingController(text: Global.PRICE);
  final _total = TextEditingController(text: Global.TOTAL);
  int? result;
  int? sum;

  @override
  Widget build(BuildContext context) {

    dynamic s = ModalRoute.of(context)!.settings.arguments;

    return Scaffold(
      backgroundColor: Color(0xffeeeeee),
      appBar: AppBar(
        leading: GestureDetector(
            onTap: () {
              setState(() {
                Navigator.pop(context);
              });
            },
            child: Icon(Icons.arrow_back)),
        title: Text(
          "Update Item",
          style: TextStyle(color: Colors.white, fontSize: 24),
        ),
        backgroundColor: Colors.green[800],
        centerTitle: true,
        actions: [
          GestureDetector(
            onTap: () {
              // setState(() {
              //   Global.invoice.remove(Global.TOTAL);
              //   Global.invoice.remove(Global.PRICE);
              //   Global.invoice.remove(Global.ITEM);
              //   Global.invoice.remove(Global.TOTAL);
                Global.invoice.remove(s);
                Navigator.pop(context);
              // });
            },
              child: Icon(Icons.delete_outline,color: Colors.white,)),
          SizedBox(width: 10,),
        ],
      ),
      body: Form(
        key: formKey,
        child: Column(
          children: [
            Expanded(
              flex: 17,
              child: Padding(
                padding: const EdgeInsets.all(17),
                child: SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Item",
                            style: TextStyle(fontSize: 18),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10, bottom: 15),
                        child: TextFormField(
                          // initialValue: Global.ITEM,
                          controller: _item,
                          onSaved: (val) {
                            setState(() {
                              Global.ITEM = val;
                            });
                          },
                          validator: (val) {
                            if (val!.isEmpty) {
                              return "Enter your item";
                            }
                          },
                          textInputAction: TextInputAction.next,
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
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Quantity",
                            style: TextStyle(fontSize: 18),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10, bottom: 15),
                        child: TextFormField(
                          // initialValue: Global.QUANTITY,
                          controller: _num1,
                          onSaved: (val) {
                            setState(() {
                              Global.QUANTITY = val;
                              // ZA = (int.parse(Global.QUANTITY.toString()) *
                              //     int.parse(Global.PRICE.toString()))
                              //     .toString();
                            });
                          },
                          validator: (val) {
                            if (val!.isEmpty) {
                              return "Enter your quantity";
                            }
                          },
                          textInputAction: TextInputAction.next,
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
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Price",
                            style: TextStyle(fontSize: 18),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10, bottom: 15),
                        child: TextFormField(
                          // initialValue: Global.PRICE,
                          controller: _num2,
                          onSaved: (val) {
                            setState(() {
                              Global.PRICE = val;
                              // KA = (int.parse(Global.PRICE.toString()) *
                              //     int.parse(Global.QUANTITY.toString()))
                              //     .toString();
                            });
                          },
                          validator: (val) {
                            if (val!.isEmpty) {
                              return "Enter your price";
                            }
                          },
                          textInputAction: TextInputAction.next,
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
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Total",
                            style: TextStyle(fontSize: 18),
                          ),
                        ],
                      ),
                      SizedBox(height: 15,),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            " click here ",
                            style: TextStyle(fontSize: 18,color: Colors.blueGrey),
                          ),
                          Icon(Icons.arrow_downward),
                        ],
                      ),
                      SizedBox(height: 5,),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            sum = (int.parse(_num1.text) * int.parse(_num2.text));
                            result = sum;
                            _total.text = result.toString();
                          });
                        },
                        child: Container(
                          height: 50,
                          width: MediaQuery.of(context).size.width,
                          alignment: Alignment.center,
                          child: Text("TOTAL",style: TextStyle(color: Colors.white,fontSize: 20),),
                          decoration: BoxDecoration(
                            color: Colors.purpleAccent,
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10, bottom: 15),
                        child: TextFormField(
                          // initialValue: Global.TOTAL,
                          controller: _total,
                          onSaved: (val) {
                            setState(() {
                              Global.TOTAL = val;
                            });
                          },
                          validator: (val) {
                            if (val!.isEmpty) {
                              return "Please click total button";
                            }
                          },
                          textInputAction: TextInputAction.next,
                          cursorColor: Colors.green[800],
                          cursorRadius: Radius.circular(20),
                          decoration: InputDecoration(
                            errorStyle: TextStyle(color: Colors.brown,fontSize: 20),
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
                    ],
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
                          setState(() {
                            if (formKey.currentState!.validate()) {
                              formKey.currentState!.save();

                              // update c = update(item1: item,
                              //   quantity1: quantity,
                              //   price1: price,
                              //   // total1: total,
                              // );

                              // Global.invoice.add(c);


                              Navigator.of(context).pushNamedAndRemoveUntil('Pageone', (route) => false);
                              // Navigator.pushNamedAndRemoveUntil(context, 'Pageone', (route) => false);
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
      ),
    );
  }
}
