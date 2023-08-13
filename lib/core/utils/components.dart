import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget defaultFormField(
        {required TextEditingController controller,
        required String label,
        required Function validate,
        required Icon icon,
        bool isPassword = false}) =>
    TextFormField(
      controller: controller,
      validator: (value) {
        validate(value);
      },
      obscureText: isPassword,
      decoration: InputDecoration(
          disabledBorder:
              OutlineInputBorder(borderSide: BorderSide(color: Colors.red)),
          enabledBorder:
              OutlineInputBorder(borderSide: BorderSide(color: Colors.grey)),
          filled: true,
          fillColor: Color(0xFFF9FFF6),
          label: Text(label),
          suffixIcon: icon,
          border: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.transparent),
              borderRadius: BorderRadius.circular(12))),
    );
