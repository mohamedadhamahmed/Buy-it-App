import 'package:buy_it/models/product.dart';
import 'package:buy_it/constants.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
class Store{

  final Firestore _firestore=Firestore.instance;

  addData(Product product){
_firestore.collection(kProductsCollection).add(
    {
      kProductName: product.pName,
      kProductPrice: product.pPrice,
      kProductDescription: product.pDiscription,
      kProductCategory: product.pCatogery,
      kProduct_MediaUrl: product.pMediaUrl,
      kadminUid:product.uidadminUpload,
      kProductuploadtime:product.timestamp,
      kadminuploadEmail:product.adminupload

    }
    );
  }
}