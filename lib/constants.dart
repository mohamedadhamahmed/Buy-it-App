import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';
bool addproduct_errormassage=false;
final auth=FirebaseAuth.instance;
final customersref = Firestore.instance.collection("customers");
final adminsref = Firestore.instance.collection("admins");
DateTime timestamp = DateTime.now();
const KMainColor=Color(0xFFFFC12F);
const KTextfield=Color(0xFFFFE6AC);
final String mediaUrl_default="https://lh4.googleusercontent.com/-GTavOKaD1hg/AAAAAAAAAAI/AAAAAAAAAAA"
    "/AMZuucnzmPGuMykLs--yKR7tA4bWRzWL1w/s96-c/photo.jpg";


const kProductName = 'productName';
const kProductPrice = 'productPrice';
const kProductDescription = 'productDescription';
const kProduct_MediaUrl = 'productMediaUrl';
const kadminuploadEmail = 'adminuploadEmail';

const kadminUid = 'adminUidmakeUpload';

const kProductuploadtime = 'Productuploadtime';


const kProductCategory = 'productCategory';
const kProductsCollection = 'Products';
const kUnActiveColor = Color(0xFFC1BDB8);
const kJackets = 'jackets';
const kTrousers = 'trousers';
const kTshirts = 't-shirts';
const kShoes = 'shoes';
const kOrders = 'Orders';
const kOrderDetails = 'OrderDetails';
const kTotallPrice = 'TotallPrice';
const kAddress = 'Address';
const kProductQuantity = 'Quantity';
const kKeepMeLoggedIn = 'KeepMeLoggedIn';
File file;
String postid = Uuid().v4();












