import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProgramingSection extends StatelessWidget {
  const ProgramingSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        separatorBuilder: (context, index) => const SizedBox(width: 0),
        itemCount: 3,
        itemBuilder: (context, index) => const CutomScrollItem(),
      ),
    );
  }
}

class CutomScrollItem extends StatelessWidget {
  const CutomScrollItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 8.0,top: 8),
              child: Container(
                height: 250,
                width: 220,
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.yellow[700]!,
                        blurRadius: 8,
                        blurStyle: BlurStyle.outer
                      ),
                      BoxShadow(
                        color: Colors.black,
                        blurRadius: 2,
                        blurStyle: BlurStyle.outer
                      )
                    ],
                    color: const Color.fromARGB(255, 224, 218, 218),
                    borderRadius: BorderRadius.circular(24)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    //  mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        height: 175,
                        width: 220,
                        decoration: BoxDecoration(
                           // color: Colors.yellow[700],
                            borderRadius: BorderRadius.circular(24)),
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(24),
                            child: Image.network(
                                'https://img.freepik.com/premium-psd/realistic-iphone-14-pro-max-3d-smartphone-screen-mockup-template-with-editable-background-psd_349001-554.jpg?w=740')),
                      ),
                      Text(
                        "  Android  Application",
                        style: GoogleFonts.lato(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.w600),
                      )
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: 18,
            ),
          ],
        ),
      ],
    );
  }
}
