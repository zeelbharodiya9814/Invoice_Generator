


import 'dart:io';

class Global{
  static List invoice = [];
  static List mainlist = [];





  static String? ITEM;
  static String? QUANTITY;
  static String? PRICE;
  static String? TOTAL;

  // start
  static String? numin;

  // image1
  // static File? image;

  //bill form
  static String? who;
  static String? add;

  //bill tp
  static String? who1;
  static String? add1;

  // ship to (optional)
  static String? ship;


  // date
  static String? date;

  // due date
  static String? date1;

  //payment term
   static String? term;

   //perchase order
  static String? order;

  //sign
  // static File? image1;

}

class update {
  final String? item1;
  final String? quantity1;
  final String? price1;
  final String? total1;

  update({
    required this.item1,
    required this.quantity1,
    required this.price1,
    required this.total1,
 });
}


//
// class detail {
//   // start
//   final String? numin;
//
//   // image1
//   final File? image;
//
//   //bill form
//   final String? who;
//   final String? add;
//
//   //bill tp
//   final String? who1;
//   final String? add1;
//
//   // ship to (optional)
//   final String? ship;
//
//
//   // date
//   final String? date;
//
//   // due date
//   final String? date1;
//
//   //payment term
//   final String? term;
//
//   //perchase order
//   final String? order;
//
//   //sign
//   final File? image1;
//
//   detail({
//     required this.numin,
//     required this.image,
//     required this.who,
//     required this.add,
//     required this.who1,
//     required this.add1,
//     required this.ship,
//     required this.date,
//     required this.date1,
//     required this.term,
//     required this.order,
//     required this.image1,
//   });
// }

