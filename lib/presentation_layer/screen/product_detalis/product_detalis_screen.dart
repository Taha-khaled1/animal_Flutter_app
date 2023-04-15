import 'package:animal_app/presentation_layer/components/custombutten.dart';
import 'package:animal_app/presentation_layer/resources/color_manager.dart';
import 'package:animal_app/presentation_layer/resources/font_manager.dart';
import 'package:animal_app/presentation_layer/resources/styles_manager.dart';
import 'package:animal_app/presentation_layer/screen/homescreen/widget/Small_Circal.dart';
import 'package:animal_app/presentation_layer/screen/homescreen/widget/Titelmore.dart';
import 'package:animal_app/presentation_layer/screen/homescreen/widget/catogery_card.dart';
import 'package:flutter/material.dart';

class ProductDetalis extends StatelessWidget {
  const ProductDetalis({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.background,
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                alignment: Alignment.center,
                height: 320,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: ColorManager.background,
                ),
                child: Image.asset(
                  'assets/images/catbag.png',
                  fit: BoxFit.contain,
                  height: 200,
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'بريطاني قصير الشعر',
                          style: MangeStyles().getBoldStyle(
                            color: ColorManager.ktextblackk,
                            fontSize: FontSize.s20,
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(9),
                          ),
                          child: Icon(Icons.favorite_outline),
                        ),
                      ],
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomButton(
                          width: 185,
                          haigh: 60,
                          color: ColorManager.kPrimary,
                          text: 'اضافة الي السله',
                          press: () {},
                        ),
                        Container(
                          alignment: Alignment.center,
                          width: 100,
                          height: 60,
                          decoration: BoxDecoration(
                            border: Border.all(color: Color(0xffAA5908)),
                            borderRadius: BorderRadius.circular(9),
                          ),
                          child: Text(
                            '\$199',
                            style: MangeStyles().getBoldStyle(
                              color: ColorManager.kPrimary2,
                              fontSize: FontSize.s16,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
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
