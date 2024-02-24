import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CompanyView extends StatelessWidget {
  const CompanyView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow[600],
        title:  Text('ICan Company ',style: GoogleFonts.aboreto(fontWeight: FontWeight.w600),),
        centerTitle: true,
      ),
    );
  }
}