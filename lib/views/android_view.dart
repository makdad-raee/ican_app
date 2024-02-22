import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class AndroidViewSection extends StatelessWidget {
  const AndroidViewSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading:const Icon(FontAwesomeIcons.arrowLeft),
        centerTitle: true,
        backgroundColor: Colors.white,
        title: const Text('Android Services '),
      ),
      body: const Column(
        children: [
         
          DescriptionTopic()
        ],
      ),
    );
  }
}
class DescriptionTopic extends StatelessWidget {
  const DescriptionTopic({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(Icons.star_border_outlined,color: Colors.yellow[700],),
              Text(
                'Android Apllication :',
                style: GoogleFonts.actor(fontSize: 24, fontWeight: FontWeight.w700),
              ),
            ],
          ),
          SizedBox(height: 12,),
          Text(
            'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been theLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been theLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the',
            overflow: TextOverflow.ellipsis,
            maxLines: 10,
            style: GoogleFonts.actor(fontSize: 18, color: Colors.black54),
          ),
        ],
      ),
    );
  }
}
