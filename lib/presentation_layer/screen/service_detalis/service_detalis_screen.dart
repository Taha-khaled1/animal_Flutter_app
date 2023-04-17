import 'package:animal_app/presentation_layer/components/custombutten.dart';
import 'package:animal_app/presentation_layer/components/navbar.dart';
import 'package:animal_app/presentation_layer/resources/color_manager.dart';
import 'package:animal_app/presentation_layer/resources/font_manager.dart';
import 'package:animal_app/presentation_layer/resources/styles_manager.dart';
import 'package:animal_app/presentation_layer/screen/homescreen/widget/Small_Circal.dart';
import 'package:animal_app/presentation_layer/screen/homescreen/widget/Titelmore.dart';
import 'package:animal_app/presentation_layer/screen/homescreen/widget/catogery_card.dart';
import 'package:flutter/material.dart';

class ServiceDetalis extends StatelessWidget {
  const ServiceDetalis({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBarCus(),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                alignment: Alignment.center,
                height: 320,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  image: DecorationImage(
                    image: AssetImage('assets/images/backservice.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'حلاقة شعر',
                      style: MangeStyles().getBoldStyle(
                        color: ColorManager.ktextblackk,
                        fontSize: FontSize.s20,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      ''' 
قد تتعمد الكثير من الدول إنشاء المحميات الطبيعية التي يعدونها بوجه خاص من أجل حماية الحيوانات سيما تلك القابلة للانقراض بسبب التناقص الكبير في أعدادها، جراء الرعي الجائر أو العديد من الممارسات الخاطئة التي تتسبب بموتها وأحيانًا تكون بأعداد كبيرة لا يمكن حصرها، ويكون ذلك نتيجةً لإهمال الكثيرين الذين يتعمدون إلقاء النفايات والعوادم في مناطق زراعية أو بيئات حيوانية فتتعفن تلك القاذورات وتتحول لمواد سامة تنتشر في مساحات شاسعة ومنها ما ينحصر ويذوي تحت الأرض، فيتحول
                  ''',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontSize: 17,
                        color: Colors.grey,
                      ),
                    ),
                    Text(
                      'العنوان وساعات العمل',
                      style: MangeStyles().getBoldStyle(
                        color: ColorManager.ktextblackk,
                        fontSize: FontSize.s20,
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        SmallCircal(
                          color: Color(0xffF89D3D),
                          iconData: Icon(
                            Icons.star,
                            size: 20,
                            color: Color.fromARGB(255, 209, 192, 45),
                          ),
                        ),
                        SizedBox(
                          width: 4,
                        ),
                        Text(
                          '4.8',
                          style: MangeStyles().getMediumStyle(
                            color: ColorManager.ktextblackk,
                            fontSize: FontSize.s14,
                          ),
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        SmallCircal(
                          color: Color.fromARGB(255, 175, 244, 192),
                          image: 'assets/images/saaa.png',
                        ),
                        SizedBox(
                          width: 4,
                        ),
                        Text(
                          '01:00 - 08:00 PM',
                          style: MangeStyles().getMediumStyle(
                            color: ColorManager.ktextblackk,
                            fontSize: FontSize.s14,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              CustomButton(
                width: 185,
                haigh: 60,
                color: ColorManager.kPrimary,
                text: 'الحجز الان',
                press: () {},
              ),
              SizedBox(
                height: 20,
              ),
              Titelmore(
                text1: 'خدمات',
                text2: 'المزيد',
                onTap: () {},
              ),
              SizedBox(
                height: 200,
                child: ListView.builder(
                  itemCount: 8,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return CatogeryCard();
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
