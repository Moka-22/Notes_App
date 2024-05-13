import 'package:flutter/material.dart';
import 'package:notesappp/constants/colors.dart';

class NotesTextField extends StatelessWidget {
  const NotesTextField({super.key, required this.hintText, this.maxLines = 1, this.onSaved, this.onChanged});
final String hintText;
final int maxLines;
final void Function(String?)? onSaved;
final void Function(String)? onChanged;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged:onChanged,
      validator: (value){
        if(value?.isEmpty ?? true){
          return 'Field is Required';
        }else{
          return null;
        }
      },
      onSaved: onSaved,
      cursorColor: primaryColor,
      maxLines: maxLines,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(
          color: primaryColor,
        ),
        border: bulidBorder(),
        enabledBorder: bulidBorder(),
        focusedBorder: bulidBorder(primaryColor),
      ),
    );
  }

  OutlineInputBorder bulidBorder([color]) {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(8,),
        borderSide: BorderSide(color: color ?? Colors.white),
      );
  }
}
