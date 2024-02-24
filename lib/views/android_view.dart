import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ican_app/views/widgets/programing_section.dart';

class AndroidViewSection extends StatelessWidget {
  const AndroidViewSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(FontAwesomeIcons.arrowLeft),
        centerTitle: true,
        backgroundColor: Colors.yellow[600],
        title: const Text('Android Services '),
      ),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            AndroidPhotoIosWeb(imagesectiontitle: "Android Application"),
            SizedBox(
              height: 12,
            ),
            DescriptionTopic(topic: 'Android Apllication :'),
          ],
        ),
      ),
    );
  }
}

class DescriptionTopic extends StatelessWidget {
  const DescriptionTopic({super.key, required this.topic});
  final String topic;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(
                Icons.star_border_outlined,
                color: Colors.yellow[700],
              ),
              Text(
                topic,
                style: GoogleFonts.actor(
                    fontSize: 24, fontWeight: FontWeight.w700),
              ),
            ],
          ),
          const SizedBox(
            height: 12,
          ),
          const ProgramingDescreption(),
          const SizedBox(
            height: 6,
          ),
          Text(
            ' - في عالم يزداد اعتمادًا على التكنولوجيا، أصبح وجود تطبيق مُخصص ضروريًا لنجاح أي عمل تجاري..',
            maxLines: 2,
            textDirection: TextDirection.rtl,
            //overflow: TextOverflow.fade,
            textAlign: TextAlign.right,
            style: GoogleFonts.mada(fontSize: 16),
          ),
          const SizedBox(
            height: 6,
          ),
          Text(
            ' - نُقدم حلولًا مُخصصة تناسب احتياجاتك وأهدافك، ونُساعدك على اختيار أفضل المنصات لتطبيقك.',
            maxLines: 2,
            textDirection: TextDirection.rtl,
            //overflow: TextOverflow.fade,
            textAlign: TextAlign.right,
            style: GoogleFonts.mada(fontSize: 16),
          ),
        ],
      ),
    );
  }
}

class AndroidPhotoIosWeb extends StatelessWidget {
  const AndroidPhotoIosWeb({
    super.key, required this.imagesectiontitle,
  });
  final String imagesectiontitle;

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
                        'https://img.freepik.com/premium-psd/realistic-iphone-14-pro-max-3d-smartphone-screen-mockup-template-with-editable-background-psd_349001-554.jpg?w=740',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const Spacer(),
                  Text(
                    imagesectiontitle,
                    style: GoogleFonts.lato(
                        color: Colors.black,
                        fontSize: 24,
                        fontWeight: FontWeight.w500),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 70.0, vertical: 12),
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
