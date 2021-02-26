import 'package:flutter/material.dart';

class FormFieldWidget extends StatelessWidget {
  final bool securePassword;
  FormFieldWidget({this.securePassword});
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: securePassword,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(horizontal:1,vertical: 2),
          border: OutlineInputBorder(

          )
      ),
    );
  }
}
