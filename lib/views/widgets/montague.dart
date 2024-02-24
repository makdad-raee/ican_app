import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MontagueSection extends StatelessWidget {
  const MontagueSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Padding(
          padding: EdgeInsets.all(10.0),
          child: CutomScrollItemMontague(
            imageUrl:
                'https://img.freepik.com/free-photo/integrate-scene-mobile-screen-frame_23-2150678786.jpg?w=740&t=st=1708761529~exp=1708762129~hmac=a48463920fefdb1843a323900f1c5a60e0d2119cf9e4d687947eda70467234aa',
          ),
        ),
        MontagueDescription(),
      ],
    );
  }
}

class CutomScrollItemMontague extends StatelessWidget {
  const CutomScrollItemMontague({
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
                    "Montague & Motion Graphics",
                    style: GoogleFonts.lato(
                        color: Colors.black,
                        fontSize: 24,
                        fontWeight: FontWeight.w500),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 40.0, vertical: 12),
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

class MontagueDescription extends StatelessWidget {
  const MontagueDescription({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Text(
              'في عالم يزداد اعتمادًا على المحتوى المرئي، أصبح وجود فيديوهات مُصممة بشكل احترافي ضروريًا لنجاح أي عمل تجاري.',
              maxLines: 3,
              textDirection: TextDirection.rtl,
              //overflow: TextOverflow.fade,
              textAlign: TextAlign.right,
              style: GoogleFonts.mada(fontSize: 24),
            ),
            const SizedBox(
              height: 6,
            ),
            Text(
              'مع فريقنا المتميز من الفنانين والمصممين، نضمن لك فيديوهات عالية الجودة تُلبي احتياجاتك وتُحقق أهدافك.  .',
              maxLines: 3,
              textDirection: TextDirection.rtl,
              textAlign: TextAlign.right,
              style: GoogleFonts.mada(fontSize: 18),
            ),
            // const SizedBox(
            //   height: 4,
            // ),
            // Text(
            //   'استثمر في إعلانات ذكية تُحقق لك أهدافك وتُعزز تواجدك على منصات التواصل الاجتماعي.',
            //   maxLines: 2,
            //   textDirection: TextDirection.rtl,
            //   textAlign: TextAlign.right,
            //   style: GoogleFonts.mada(fontSize: 18),
            // ),
          ],
        ),
      ),
    );
  }
}
