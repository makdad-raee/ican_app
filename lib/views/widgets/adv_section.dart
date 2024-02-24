import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AdvertisingSection extends StatelessWidget {
  const AdvertisingSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Padding(
          padding: EdgeInsets.all(10.0),
          child: CutomScrollItemADV(
            imageUrl:
                'https://img.freepik.com/free-photo/influencer-marketing-job-concept_23-2150410495.jpg?w=740&t=st=1708756847~exp=1708757447~hmac=d7f0eeeeb11e2fdf5fc98eee9041e0332ba89cd4f2b868d53b4a1b7122ce2df1',
          ),
        ),
        AdvDescription()
      ],
    );
  }
}

class CutomScrollItemADV extends StatelessWidget {
  const CutomScrollItemADV({
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
                  const Spacer(),
                  Text(
                    "Marketing",
                    style: GoogleFonts.lato(
                        color: Colors.black,
                        fontSize: 24,
                        fontWeight: FontWeight.w500),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 100.0, vertical: 12),
                    child: Container(
                      height: 1,
                      color: Colors.grey,
                    ),
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

class AdvDescription extends StatelessWidget {
  const AdvDescription({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Text(
              'ارفع علامتك التجارية إلى آفاق جديدة مع خدماتنا الإعلانية المُتكاملة على السوشيال ميديا',
              maxLines: 3,
              textDirection: TextDirection.rtl,
              //overflow: TextOverflow.fade,
              textAlign: TextAlign.right,
              style: GoogleFonts.mada(fontSize: 24),
            ),
            const SizedBox(
              height: 4,
            ),
            Text(
              'حوّل أفكارك الإعلانية إلى واقع ملموس ونتائج مربحة مع خبراء ICan  .',
              maxLines: 2,
              textDirection: TextDirection.rtl,
              textAlign: TextAlign.right,
              style: GoogleFonts.mada(fontSize: 18),
            ),
            const SizedBox(
              height: 4,
            ),
            Text(
              'استثمر في إعلانات ذكية تُحقق لك أهدافك وتُعزز تواجدك على منصات التواصل الاجتماعي.',
              maxLines: 2,
              textDirection: TextDirection.rtl,
              textAlign: TextAlign.right,
              style: GoogleFonts.mada(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
