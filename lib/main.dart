import 'package:flutter/material.dart';
import 'package:invoice_genrator/page1.dart';
import 'package:invoice_genrator/page2.dart';
import 'package:invoice_genrator/page3.dart';

import 'edit.dart';
import 'global.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => Myapp(),
        'Pageone': (context) => Pageone(),
        'Pagetwo': (context) => Pagetwo(),
        'Pagethree': (context) => Pagethree(),
        'EditPage': (context) => EditPage(),
      },
    ),
  );
}

class Myapp extends StatefulWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  State<Myapp> createState() => _MyappState();
}

class _MyappState extends State<Myapp> {

  var ds = 0;
  var OP = [];

  List invoice = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        title: Text(
          "Invoice Generator",
          style: TextStyle(color: Colors.white, fontSize: 24),
        ),
        backgroundColor: Colors.green[800],
        centerTitle: true,
      ),
      body:
      // (Global.mainlist.isEmpty)
      //     ? Center(
      //       child: Text(
      //           "Not data found",
      //           style: TextStyle(fontSize: 20, color: Colors.black),
      //         ),
      //     )
      //     :


      Column(
        children: [...Global.invoice.map((e) =>
            Padding(
              padding: const EdgeInsets.only(top: 15,left: 15,right: 15),
              child: Container(
                height: MediaQuery.of(context).size.height / 4.8,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      spreadRadius: 1,
                      blurRadius: 4,
                      offset: Offset(0,5),
                      color: Colors.black12,
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(13),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("#${Global.numin}",style: TextStyle(fontSize: 22,color: Colors.black),),
                          Text("Rp ${Global.TOTAL}",style: TextStyle(fontSize: 25,color: Colors.black,fontWeight: FontWeight.bold),),
                        ],
                      ),
                      SizedBox(height: 4,),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("${Global.who1}",style: TextStyle(fontSize: 20,color: Colors.grey[600]),),
                        ],
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 4,bottom: 4),
                            child: Text("${Global.date}",style: TextStyle(fontSize: 18,color: Colors.grey[500]),),
                          ),
                        ],
                      ),
                      Divider(
                        thickness: 0.5,
                        color: Colors.grey,
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  Navigator.of(context).pushNamed('EditPage');
                                });
                              },
                              child: Container(
                                height: 37,
                                width: 90,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Icon(Icons.edit,color: Colors.green,),
                                    Text("Edit",style: TextStyle(color: Colors.green,fontWeight: FontWeight.w600,fontSize: 18),),
                                  ],
                                ),
                                decoration: BoxDecoration(
                                  color: Color(0xff9BC09EFF),
                                  borderRadius: BorderRadius.circular(7),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 8,left: 10),
                            child: Container(
                              height: 37,
                              width: 90,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Icon(Icons.photo_outlined,color: Colors.green,),
                                  Text("View",style: TextStyle(color: Colors.green,fontWeight: FontWeight.w600,fontSize: 18),),
                                ],
                              ),
                              decoration: BoxDecoration(
                                color: Color(0xff9BC09EFF),
                                borderRadius: BorderRadius.circular(7),
                              ),
                            ),
                          ),
                          Container(
                            child: Text("$e"),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
        ).toList(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.add,
          size: 40,
        ),
        backgroundColor: Colors.green[800],
        onPressed: ()
          async {
          // ds++;
          // OP.add(ds);
        await
          Navigator.of(context).pushNamed('Pageone');
        setState(() {

        });
        },
      ),
      backgroundColor: Colors.grey[200],
    );
  }
}
