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
                'https://img.freepik.com/free-photo/abstract-colorful-splash-3d-background-generative-ai-background_60438-2494.jpg?w=826&t=st=1708630449~exp=1708631049~hmac=97cd470c64d52bb5e728689ce09b6c1d0f779389be19beb68bb24044367a191a',
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
            height: 350,
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

                children: [
                  Container(
                    height: 250,
                    width: width * 0.8,
                    decoration: BoxDecoration(
                        //color: Colors.yellow[700],
                        borderRadius: BorderRadius.circular(24)),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(24),
                      child: Image.network(
                        imageUrl,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const Spacer(
                   
                  ),
                  Text(
                    "Graphic Designs & Logos",
                    style: GoogleFonts.lato(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.w500),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 78.0,vertical: 12),
                    child: Container(height: 1,color: Colors.grey,),
                  )
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
