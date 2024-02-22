import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ican_app/utlis/constant.dart';
import 'package:ican_app/views/android_view.dart';
import 'package:ican_app/views/ios_view.dart';
import 'package:ican_app/views/web_section_view.dart';

class ProgramingSection extends StatelessWidget {
  const ProgramingSection({super.key});

  @override
  Widget build(BuildContext context) {
    List<Widget> programingList = const [
      AndroidViewSection(),
      IosViewSection(),
      WebViewSection(),
    ];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            separatorBuilder: (context, index) => const SizedBox(width: 0),
            itemCount: 3,
            itemBuilder: (context, index) => CutomScrollItem(
                imageUrl: imageUrlHomeViewApp[index],
                sectionWedget: programingList[index]),
          ),
        ),
        // const Expanded(child: HomeViewSection2())
      ],
    );
  }
}

class CutomScrollItem extends StatelessWidget {
  const CutomScrollItem({
    super.key,
    required this.imageUrl,
    required this.sectionWedget,
  });
  final String imageUrl;
  final Widget sectionWedget;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => sectionWedget,
        ));
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 8.0, top: 8),
                child: Container(
                  height: 250,
                  width: 220,
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
                              child: Image.network(imageUrl,fit: BoxFit.cover,),),
                        ),
                        Text(
                          "  Android  Application",
                          style: GoogleFonts.lato(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.w600),
                        ),
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
      ),
    );
  }
}
