import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ican_app/views/widgets/custom_social_avatar.dart';

class CompanyView extends StatelessWidget {
  const CompanyView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow[600],
        title: Text(
          'ICan Company ',
          style: GoogleFonts.aboreto(fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                'شركة هندسيةجديدة للاستشارات والحلول البرمجية والتقنية وكل ما يتعلق بتكنولوجيا المعلومات والاتصالات.\nللشركة 5 اقسام رئيسية وهي :',
                maxLines: 5,
                textDirection: TextDirection.rtl,
                //overflow: TextOverflow.fade,
                textAlign: TextAlign.right,
                style: GoogleFonts.mada(fontSize: 24),
              ),
              Text(
                '- قسم البرمجيات ويضم :\nبرامج Windows.\nتطبيقات موبايل ( Android / iOS).\nمواقع الكترونية .',
                maxLines: 5,
                textDirection: TextDirection.rtl,
                //overflow: TextOverflow.fade,
                textAlign: TextAlign.right,
                style: GoogleFonts.mada(fontSize: 18),
              ),
              Text(
                '- قسم التصاميم والغرافيكس.\n- قسم المونتاج وتحرير الفيديوهات.\n- قسم التسويق الرقمي والحملات الاعلانية وادارة مواقع التواصل الاجتماعي.\n- قسم الدعم التقني والسوفت وير .\nبالاضافة لقسم خاص لمشاريع التخرج للطلاب وقسم التدريب العملي والمهني',
                maxLines: 5,
                textDirection: TextDirection.rtl,
                //overflow: TextOverflow.fade,
                textAlign: TextAlign.right,
                style: GoogleFonts.mada(fontSize: 24),
              ),
              SizedBox(
                height: 4,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                child: Container(
                  height: 1,
                  color: Colors.yellow[800],
                ),
              ),
              Text(
                'بإدارة المهندس المخترع باسل تنبكجي والدكتور المهندس إياد عرجة.',
                maxLines: 5,
                textDirection: TextDirection.rtl,
                //overflow: TextOverflow.fade,
                textAlign: TextAlign.right,
                style:
                    GoogleFonts.mada(fontSize: 24, fontWeight: FontWeight.w600),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                child: Container(
                  height: 1,
                  color: Colors.yellow[800],
                ),
              ),
              Text(
                  'إلى كافة الفعاليات المختلفة مثل أصحاب (البنوك والمصارف - المطاعم والكافيهات - الفنادق- المشافي -  نقاط البيع والمولات والسوبر ماركت- محلات التجارية من البسة واحذية وهدايا وعطور وزهور  وحلويات والكترونيات ومفروشات - صالونات ومراكز التجميل و المكياج - محلات المجوهرات والذهب - النوادي الرياضية - المكاتب السياحية والسفر والشحن - العقارات والمقاولات  - مكاتب السيارات - المعاهد والمدارس والجامعات - العيادات و الصيدليات والمخابر والمراكز الطبية والتجميلية - خدمات البيع - خدمات التوصيل الدلفري - المعامل والمصانع - المكتبات ودار النشر - برامج المحاسبة - شركات الاستيراد والتصدير - تسيير واتمتة المعاملات - المحامين والقضاة والاطباء والمهندسين - الدفع الالكتروني - محطات البانزين- وكافة المهن العامة و الخاصة والنقابات المهنية وجميع المديريات و المؤسسات والشركات الحكومية والخاصة وكافة الفعاليات مهما كان اختصاصها) .',
                  maxLines: 20,
                  textDirection: TextDirection.rtl,
                  textAlign: TextAlign.right,
                  style: GoogleFonts.mada(fontSize: 24)),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                child: Container(
                  height: 1,
                  color: Colors.yellow[800],
                ),
              ),
              Text(
                  'وجاهزون ايضا لكافة تصاميم الغرافيك والمونتاج من تصميم هويات بصرية وتجارية لكم الى تصميم شعارات لوغو وغلاف لشركتكم الى بوسترات وبوستات منصات تواصل اجتماعي واعلانات طرقية  وكروت فيزيت  الى تصوير وعمل  فيديو انترو و برومو وموشن اعلاني و احترافي لشركاتكم ومنتجاتكم كافة والتسويق لها رقميا بكافة طرق التسويق الرقمي .',
                  maxLines: 15,
                  textDirection: TextDirection.rtl,
                  //overflow: TextOverflow.fade,
                  textAlign: TextAlign.right,
                  style: GoogleFonts.mada(fontSize: 24)),
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
