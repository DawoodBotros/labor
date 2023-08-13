import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SingUpSocial extends StatelessWidget {

 String text;
 Image image;
 SingUpSocial(this.text,this.image);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return  Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        alignment: Alignment.center,
        width: size.width / 1,
        height: size.height / 11,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          border: Border.all(
            width: 1.0,
            color: Color.fromRGBO(223, 223, 223, 1.0),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //facebook icon
            image,
            const SizedBox(
              width: 16,
            ),

            //facebook txt
            Text(
              text,
              textAlign: TextAlign.center,
              style: GoogleFonts.inter(
                  fontSize: 14.0,
                  color: Colors.black,
                  fontWeight: FontWeight.bold
              ),
            ),
          ],
        ),
      ),
    );
  }
}
