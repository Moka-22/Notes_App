import 'package:flutter/material.dart';
import 'package:notesappp/constants/colors.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({super.key, this.onTap , this.isLoading = false});
final void Function()? onTap;
final bool isLoading;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 55,
        decoration: BoxDecoration(
          color: primaryColor,
          borderRadius: BorderRadius.circular(
            16,
          ),
        ),
        child: Center(
          child: isLoading ? SizedBox(
            height: 24,
            width: 24,
            child: CircularProgressIndicator(
              color: Colors.black,
            ),
          ) : const Text(
            'Save',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}
