import 'package:flutter/material.dart';
import '../constants.dart';
class Custom_TextField extends StatelessWidget {
  final String hient;
  final IconData icon;
  final Function onclick;
  final TextEditingController textEditingController;
  Custom_TextField({this.icon,this.hient, this.onclick, this.textEditingController});

  String _errorMasage(String str){
    switch(str){
      case "Enter Your Name":return 'Name is empty';
      case "Enter Your Email":return "email is empty";
      case "Enter Your password":return "password is empty";
      case "Confirm Password":return "Confirm password is empty";

    }

}
  String _errorMasage_addproduct(String str){
    switch(str){
      case "Product Name":return 'Product Name is empty';
      case "Product price":return "Price is empty";
      case "Product Discription":return "Discription is empty";
      case "Product Category":return "Category is empty";

    }

  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: TextFormField(
        controller:textEditingController,
        onSaved:onclick
        ,
        obscureText:hient=="Enter Your password"||hient=="Confirm Password"?true:false ,
        validator: (value){
          if(value.isEmpty){
            if(addproduct_errormassage=true){
              return _errorMasage_addproduct(hient);
            }
            else{
              return _errorMasage(hient);

            }

          }

        },
        cursorColor:KMainColor ,
        decoration: InputDecoration(
          prefixIcon: Icon(icon,color:KMainColor,),
          hintText: hient,
          filled: true,
          fillColor: KTextfield,
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide(color: Colors.white)
          ),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide(color: Colors.white)
          ),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide(color: Colors.red)
          ),
        ),
      ),
    );
  }


  }