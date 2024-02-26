import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ican_app/views/repair_view.dart';

class RepairingSection extends StatelessWidget {
  const RepairingSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(10.0),
            child: CutomScrollItemRepair(
              imageUrl:
                  'https://img.freepik.com/free-vector/flat-computer-engineering-concept_23-2148154728.jpg?w=740&t=st=1708881856~exp=1708882456~hmac=c35786b5cde325dd7c06559de971c91ca1c0ceb420d108b1fbed3b8043fb5ead',
            ),
          ),
          RepairDescreption()
        ],
      ),
    );
  }
}

class CutomScrollItemRepair extends StatelessWidget {
  const CutomScrollItemRepair({
    super.key,
    required this.imageUrl,
    this.isView = false,
  });
  final String imageUrl;
  final bool isView;

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: () {
        isView
            ? () {}
            : Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const RepairView(),
              ));
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
                    "Computer Repair",
                    style: GoogleFonts.lato(
                        color: Colors.black,
                        fontSize: 18,
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

class RepairDescreption extends StatelessWidget {
  const RepairDescreption({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Text(
            'لا تقلق بشأن أعطال الكمبيوتر! قسم الصيانة لدينا في خدمتك.\nحلول سريعة وفعالة لجميع مشاكل الكمبيوتر، من البرامج إلى الأجهزة.\nدعم فني مُتميز يُلبي احتياجاتك ويُحافظ على كفاءة أجهزتك.',
            maxLines: 6,
            textDirection: TextDirection.rtl,
            textAlign: TextAlign.right,
            style: GoogleFonts.mada(fontSize: 22),
          ),
          const SizedBox(
            height: 4,
          ),
          Text(
            'يُعد قسم الصيانة في شركتنا ركيزة أساسية لدعم عملائنا وضمان استمرارية أعمالهم.',
            maxLines: 6,
            textDirection: TextDirection.rtl,
            textAlign: TextAlign.right,
            style: GoogleFonts.mada(fontSize: 18),
          ),
          const SizedBox(
            height: 4,
          ),
          Text(
            'نُقدم مجموعة واسعة من خدمات الصيانة لجميع أنواع أجهزة الكمبيوتر، من أجهزة سطح المكتب إلى أجهزة اللابتوب والخوادم',
            maxLines: 6,
            textDirection: TextDirection.rtl,
            textAlign: TextAlign.right,
            style: GoogleFonts.mada(fontSize: 18),
          )
        ],
      ),
    );
  }
}
