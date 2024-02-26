import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ican_app/views/widgets/custom_social_avatar.dart';
import 'package:ican_app/views/widgets/repairing_section.dart';

class RepairView extends StatelessWidget {
  const RepairView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(FontAwesomeIcons.arrowLeft),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        centerTitle: true,
        backgroundColor: Colors.yellow[600],
        title: const Text('Repairing Services '),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const CutomScrollItemRepair(
                isView: true,
                imageUrl:
                    'https://img.freepik.com/free-vector/flat-computer-engineering-concept_23-2148154728.jpg?w=740&t=st=1708881856~exp=1708882456~hmac=c35786b5cde325dd7c06559de971c91ca1c0ceb420d108b1fbed3b8043fb5ead',
              ),
              const RepairDescreption(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50),
                child: Container(
                  height: 1,
                  color: Colors.yellow[700],
                ),
              ),
              const MoreRepairDetails(),
                Padding(
              padding: EdgeInsets.all(8.0),
              child: CustomSocialAvatar(),
            ),
            SizedBox(height: 15,)
            ],
          ),
        ),
      ),
    );
  }
}

class MoreRepairDetails extends StatelessWidget {
  const MoreRepairDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text(
          '1. صيانة شاملة\n2. حلول سريعة وفعالة\n3. دعم فني مُتميز\n4. ضمان الجودة\n',
          maxLines: 6,
          textDirection: TextDirection.rtl,
          textAlign: TextAlign.right,
          style: GoogleFonts.mada(fontSize: 22),
        ),
      ],
    );
  }
}
