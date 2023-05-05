import 'package:animal_app/presentation_layer/components/appbar1.dart';
import 'package:animal_app/presentation_layer/resources/color_manager.dart';
import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 1,
        backgroundColor: ColorManager.background,
      ),
      backgroundColor: ColorManager.background,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
          child: Column(
            children: <Widget>[
              appbarscreen('معلومات عنا'),
              // Text(
              //   'معلومات عنا',
              //   style: Theme.of(context).textTheme.headline5,
              // ),
              // SizedBox(height: 16.0),
              Text(
                'نحن ملتزمون بتقديم خدمة استثنائية وضمان رضا عملائنا دائمًا عن تجاربهم. نسعى جاهدين لإنشاء علاقات طويلة الأمد مع عملائنا مبنية على الثقة والشفافية والاحترام...',
                style: Theme.of(context).textTheme.headline6,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 16.0),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'مهمتنا',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'تتمثل مهمتنا في خلق تجارب لا تُنسى لعملائنا من خلال تقديم خدمات ومنجات رائعه ، وخدمات موثوقة لحجز الخدمات للحيوانت الايليفه، وخدمات ترفيهية من الدرجة الأولى. نسعى جاهدين لنكون الوجهة المفضلة لأي شخص . ',
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'عن الشركه',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'تأسست في عام 2010 ، وسرعان ما أصبحت شركة رعاية الحيوانت الخاصة بنا واحدة من أكثر شركات  ثقة واحترامًا في هذا المجال. يتمتع فريق الخبراء لدينا بسنوات من الخبرة في تقديم خدمات مذهله  للحيوانت ، وقد استخدمنا هذه الخبرة لبناء شركة تقدم خدمة استثنائية وتجارب لا تُنسى.',
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'عن فريقنا',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'يتكون فريقنا من متخصصي الحيوانت ذوي الخبرة والعاطفة المكرسين لتقديم أفضل خدمة ممكنة لعملائنا. قابل بعض أعضاء فريقنا الرئيسيين أدناه::',
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'خدمتنا',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'تتمثل رؤيتنا في أن نكون قادة مبتكرين في صناعتنا ، ودفعًا دائمًا حدود ما هو ممكن لتقديم قيمة استثنائية لعملائنا. نحن ملتزمون بوضع عملائنا في صميم كل ما نقوم به ، ورؤيتنا هي أن نكون الشركة الأكثر تركيزًا على العملاء في صناعتنا. نهدف إلى أن نكون شركة عالمية حقًا ، مع وجود في جميع الأسواق الرئيسية حول العالم والقدرة على تقديم خدمة عالمية المستوى لعملائنا.',
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(height: 10),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
