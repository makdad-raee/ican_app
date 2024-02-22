import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DesignSection extends StatelessWidget {
  const DesignSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Padding(
          padding: EdgeInsets.all(10.0),
          child: CutomScrollItemDesign(
            imageUrl:
                'https://img.freepik.com/premium-psd/realistic-iphone-14-pro-max-3d-smartphone-screen-mockup-template-with-editable-background-psd_349001-554.jpg?w=740',
          ),
        ),
        
      ],
    );
  }
}

class CutomScrollItemDesign extends StatelessWidget {
  const CutomScrollItemDesign({
    super.key,
    required this.imageUrl,
  });
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: () {
        // Navigator.of(context).push(MaterialPageRoute(
        //   builder: (context) => sectionWedget,
        // ));
      },
      child: Column(
        children: [
          Container(
            height: 300,
            width: width,
            decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      color: Colors.yellow[700]!,
                      blurRadius: 6,
                      spreadRadius: 2,
                      blurStyle: BlurStyle.outer),
                  const BoxShadow(
                      color: Colors.black,
                      blurRadius: 1,
                      blurStyle: BlurStyle.normal)
                ],
                color: const Color.fromARGB(255, 224, 218, 218),
                borderRadius: BorderRadius.circular(24)),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                //  crossAxisAlignment: CrossAxisAlignment.center,

                //mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    height: 250,
                    width: width * 0.8,
                    decoration: BoxDecoration(
                        //color: Colors.yellow[700],
                        borderRadius: BorderRadius.circular(24)),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(24),
                      child: Image.network(imageUrl),
                    ),
                  ),
                  Text(
                    "  Design",
                    style: GoogleFonts.lato(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            width: 18,
          ),
        ],
      ),
    );
  }
}
