import 'package:get/get.dart';

class MyTranslation extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        "ar": {
          "login": 'تسجيل الدخول',
          "signup": 'تسجيل جديد',
          "logout": 'تسجيل الخروج',
          "service": 'الخدمات',
          "Products": 'ألمنتجات',
          "conact_us": 'تواصل معنا',
          "get_service": 'الحصول علي الخدمه',
          "name": 'الاسم',
          "email": 'البريد الاكتروني',
          "phone": 'رقم الهاتف',
          "massege": 'الرساله',
          "calendar": 'التقويم',
          "save": 'حفظ التغييرات',
          "track_requests": 'متابعة الطلبات',
          "track_bookings": 'متابعة الحجوزات',
          "dashboard": 'لوحة التحكم',
          "Homepage": 'الصفحه الرئيسيه',
          "Home": 'الرئيسيه',
          "cart": 'عربة التسوق',
          "favorite": 'المفضله',
          "aed": 'درهم',
          "account": 'الحساب',
          "categories": 'التصنيفات',
          "Results": 'النتائج',
          "account_information": 'معلومات الحساب',
          "add_address": 'اضف عنوان',
          "privacy_policy": 'سياسة الخصوصيه',
          "terms_and_conditions": 'شروط والاحكام',
          "share_app": 'مشاركة التطبيق',
          "connect_with_us": 'تواصل معنا',
          "about_us": 'معلومات عنا',
          "sign_out": 'تسجيل الخروج',
          "help": 'المساعده',
          "examine_the_details": 'افحص التفاصيل',
          "add_cart": 'اضافة الي السله',
          "chang_lang": 'تغير اللغه',
          "subtotal": 'المجموع الفرعي',
          'home_delivery': 'توصيل منزلي',
          "select_delivery_type": 'اختر نوع التسليم',
          "tax": 'ضريبة',
          'online_payment': 'الدفع الكتروني',
          "price": 'السعر',
          "confirmation": 'تاكيد',
          "more": 'المزيد',
          "cateogery": 'الاقسام',
          "offers": 'العروض',
          "not_offer": 'لا يوجد عروض متوفره حتي الان',
          "password": 'كلمة السر',
          "number_of_sessions": 'عدد الخدمات',
          "service_name": 'اسم الخدمه',
          "the_date_of_booking": 'موعد الحجز',
          "status": 'الحالة',
          "total_price": "السعر الإجمالي",
          "the_date_of_order": "تاريخ الطلب",
          "Subtotal": 'المجموع الفرعي',
          "Tax": 'الضريبه',
          // "confirmation": 'تاكيد',

          'check_your_internet': 'تحقق من الانترنت الخاص بك',
          'there_is_a_problem_with_the_server': 'يوجد مشكله في الخادم',
          'there_is_a_problem_please_try_again':
              'يوجد مشكله ما يرجي اعادة المحاوله',
          "login_required": "يجب تسجيل الدخول اولا",
          "invalid_credentials": "معلومات تسجيل الدخول خاطئة",
          "incorrect_information":
              "يوجد خطأ في المعلومات يرجى كتابة المعلومات بشكل صحيح",
          "account_created_successfully":
              "تم إنشاء الحساب بنجاح، يمكنك الآن تسجيل الدخول",
          "request_sent_successfully": "تم إرسال الطلب بنجاح",
          "request_not_sent": "لم يتم إرسال الطلب",
          "something_went_wrong": "يوجد مشكلة ما",
          "service_booked_successfully": "تم حجز الخدمة بنجاح",
          "login_required_service_not_booked":
              "يجب تسجيل الدخول أولاً، لم يتم حجز الخدمة",
          "error_service_booking": "لم يتم حجز الخدمة، يوجد مشكلة ما",
          "item_added_to_cart_successfully": "تم الإضافة لعربة التسوق بنجاح",
          "item_not_added_to_cart": "لم يتم الإضافة لعربة التسوق",
          "": '',
          "create_account": 'انشاء حساب',
          "You_do_not_have_a_new_account": 'ليس لديك حساب جديد',
          "subscription": 'اشتراك',
          "pri_content": par,
          "term_content": tar,
          "about_content": abar,
        },
        "en": {
          "login_required": "Login required",
          "invalid_credentials": "Invalid credentials",
          "incorrect_information":
              "Incorrect information, please write the information correctly",
          "account_created_successfully":
              "Account created successfully, you can now login",
          "request_sent_successfully": "Request sent successfully",
          "request_not_sent": "Request not sent",
          "something_went_wrong": "Something went wrong",
          "service_booked_successfully": "Service booked successfully",
          "login_required_service_not_booked":
              "Login required, service not booked",
          "error_service_booking": "Service not booked, there is an error",
          "item_added_to_cart_successfully": "Item added to cart successfully",
          "item_not_added_to_cart": "Item not added to cart",
          'check_your_internet': 'Check your internet',
          'there_is_a_problem_with_the_server':
              'There is a problem with the server',
          'there_is_a_problem_please_try_again':
              'There is a problem, please try again',
          "create_account": 'Create an account',
          "You_do_not_have_a_new_account": 'You do not have a new account',
          "subscription": 'Subscription',
          "Subtotal": 'Subtotal',
          "Tax": 'Tax',
          "status": 'Status',
          "total_price": 'Total Price',
          "the_date_of_order": 'The date of Order',
          "not_offer": 'There are no offers yet',
          "password": 'Password',
          "number_of_sessions": 'Number of Sessions',
          "service_name": 'Service Name',
          "the_date_of_booking": 'The date of Booking',
          "login": 'Login',
          "aed": 'AED',
          "more": 'more',
          "cateogery": 'Cateogery',
          "service": 'services',
          "signup": 'Sign Up',
          "logout": 'Logout',
          "offers": 'offers',
          "Products": 'Products',
          "contact_us": 'Contact Us',
          "get_service": 'Get Service',
          "name": 'Name',
          "email": 'Email',
          "phone": 'Phone',
          "message": 'Message',
          "calendar": 'Calendar',
          "save": 'Save Changes',
          "track_requests": 'Track Order',
          "track_bookings": 'Track Bookings',
          "dashboard": 'Dashboard',
          "Homepage": 'Home page',
          "Home": 'Home',
          "cart": 'cart',
          "favorite": 'favorite',
          "account": 'account',
          "categories": 'categories',
          "Results": 'Results',
          "account_information": 'Account Information',
          "add_address": 'Add address',
          "privacy_policy": "privacy policy",
          "terms_and_conditions": 'Terms and Conditions',
          "share_app": 'share app',
          "connect_with_us": 'Connect with us',
          "about_us": 'about us',
          "sign_out": 'sign out',
          "help": 'Help',
          "add_cart": 'add to cart',
          "examine_the_details": 'Examine the details',
          "chang_lang": 'change language',
          "subtotal": 'Subtotal',
          'home_delivery': 'Home delivery',
          "select_delivery_type": 'Select delivery type',
          "tax": 'Tax',
          "price": 'Price',
          "confirmation": 'confirmation',
          'online_payment': 'Online payment',
          "pri_content": pen,
          "term_content": ten,
          "about_content": aben,
        }
      };
}
/////////////////////////////////////////////////////////////////

final String abar = '''

<!DOCTYPE html>
<html>
<head>
  <title>حول المتجر - متجر ifixit</title>
  <style>
    /* أضف أنماط CSS المخصصة هنا لتحسين المظهر */
    body {
      font-family: Arial, sans-serif;
      line-height: 1.5;
    }
    h1 {
      color: #333;
    }
    p {
      color: #666;
    }
  </style>
</head>
<body>
  <h1>مرحبًا بك في متجر إصلاح الهواتف المتخصص!</h1>
  <p>نحن نفخر بتقديم خدمات إصلاح الهواتف عالية الجودة في <strong>ifixit</strong>. نحن ندرك أهمية الهواتف الذكية في حياتك اليومية ونسعى لتقديم أفضل الحلول للمشاكل التي تواجهها.</p>
  <p>فريقنا من المحترفين المهرة ملتزم بإصلاح هواتفك بسرعة وبدقة. سواء كانت لديك شاشة مكسورة، بطارية ضعيفة، أو مشكلة في البرمجة، نحن هنا لمساعدتك في استعادة أداء هاتفك بكفاءة عالية.</p>
  <p>نحن نفهم أن هواتفك هي جزء أساسي من حياتك اليومية، ولهذا السبب نقدم خدمة سريعة وموثوقة للحفاظ على تواصلك ومهامك. سنعمل بجد لضمان أن هاتفك سيكون جاهزًا في أقرب وقت ممكن.</p>
  <p>نحن نستخدم قطع الغيار عالية الجودة وأحدث التقنيات لضمان أن هاتفك سيعمل بكفاءة ويبقى موثوقًا به. رضاؤك هو هدفنا الأسمى، ونحن نضمن رضا العملاء من خلال خدماتنا الممتازة.</p>
  <p>اتصل بنا اليوم لحجز موعد أو قم بزيارتنا في متجرنا للحصول على استشارة مجانية. دعنا نساعدك في إصلاح هاتفك واستعادة أدائه الأمثل. نحن هنا لتلبية احتياجاتك في مجال إصلاح الهواتف!</p>
</body>

</html>

''';
/////////////////////////////////////////////////////////////////

final String aben = '''

<!DOCTYPE html>
<html>
<head>
  <title>About Us - ifixit Store</title>
  <style>
    /* Add your custom CSS styles here to enhance the appearance */
    body {
      font-family: Arial, sans-serif;
      line-height: 1.5;
    }
    h1 {
      color: #333;
    }
    p {
      color: #666;
    }
  </style>
</head>
<body>
  <h1>Welcome to Our Phone Repair Specialist Store!</h1>
  <p>We take pride in offering top-notch phone repair services at <strong>Your Store Name</strong>. We understand the importance of smartphones in your daily life and are committed to providing the best solutions for the issues you may encounter.</p>
  <p>Our team of skilled professionals is dedicated to repairing your phones quickly and accurately. Whether you have a cracked screen, a weak battery, or software problems, we're here to help you restore your phone's performance efficiently.</p>
  <p>We recognize that your phones are an essential part of your daily life, which is why we offer fast and reliable service to keep you connected and productive. We'll work diligently to ensure your phone is ready as soon as possible.</p>
  <p>We use high-quality replacement parts and the latest technology to ensure your phone functions efficiently and remains reliable. Your satisfaction is our ultimate goal, and we guarantee customer satisfaction through our excellent services.</p>
  <p>Contact us today to schedule an appointment or visit our store for a free consultation. Let us assist you in repairing your phone and restoring it to optimal performance. We're here to meet your phone repair needs!</p>
</body>

</html>



''';
/////////////////////////////////////////////////////////////////

final String tar = '''
<strong> سياسة الخصوصية </ strong> <p>
                            قام ifixit ببناء تطبيق ifixit باسم
                            تطبيق مجاني. يتم توفير هذه الخدمة من قبل
                            ifixit بدون تكلفة وهو مخصص للاستخدام على شكل
                            يكون.
                          </p> <p>
                            تستخدم هذه الصفحة لإعلام الزوار بخصوص موقعنا
                            سياسات مع جمع واستخدام والكشف عن الشخصية
                            المعلومات إذا قرر أي شخص استخدام خدمتنا.
                          </p> <p>
                            إذا اخترت استخدام خدمتنا ، فأنت توافق على ذلك
                            جمع واستخدام المعلومات المتعلقة بهذا
                            سياسة. المعلومات الشخصية التي نجمعها هي
                            تستخدم لتوفير الخدمة وتحسينها. لن نستخدم أو نشارك معلوماتك معك
                            أي شخص باستثناء ما هو موضح في سياسة الخصوصية هذه.
                          </p> <p>
                            المصطلحات المستخدمة في سياسة الخصوصية هذه لها نفس المعاني
                            كما هو الحال في الشروط والأحكام الخاصة بنا ، والتي يمكن الوصول إليها على
                            ifixit ما لم يتم تحديد خلاف ذلك في سياسة الخصوصية هذه.
                          </p> <p> <strong> جمع المعلومات واستخدامها </ strong> </p> <p>
                            للحصول على تجربة أفضل ، أثناء استخدام خدمتنا ، نحن
                            قد يطلب منك تزويدنا ببعض بشكل شخصي
                            معلومات يمكن التعرف عليها. المعلومات التي
                            نحن نطلب الاحتفاظ بها واستخدامها كما هو موضح في سياسة الخصوصية هذه. 
                          </p> <div> <p>
                              يستخدم التطبيق خدمات الجهات الخارجية التي قد تجمع
                              المعلومات المستخدمة لتحديد هويتك.
                            </p> <p>
                              رابط لسياسة الخصوصية الخاصة بموفري خدمات الطرف الثالث المستخدمة
                              بواسطة التطبيق
                            </p> <ul> <li> <a href="https://www.google.com/policies/privacy/" target="_blank" rel="noopener noreferrer"> خدمات Google Play </a> < / li> <! ----> <! ----> <! ----> <! ----> <! ----> <! ----> <! --- -> <! ----> <! ----> <! ----> <! ----> <! ----> <! ----> <! ---- > <! ----> <! ----> <! ----> <! ----> <! ----> <! ----> <! ----> <! ----> <! ----> <! ----> <! ----> <! ----> <! ----> </ul> </div> <p> <strong> بيانات السجل </ strong> </p> <p>
                            نريد إخبارك بذلك في أي وقت
                            استخدام خدمتنا ، في حالة وجود خطأ في التطبيق
                            نقوم بجمع البيانات والمعلومات (من خلال طرف ثالث
                            Productss) على هاتفك يسمى Log Data. قد تكون بيانات السجل هذه
                            تتضمن معلومات مثل بروتوكول الإنترنت الخاص بجهازك
                            ("IP") ، واسم الجهاز ، وإصدار نظام التشغيل ، و
                            تكوين التطبيق عند استخدام خدمتنا ،
                            وقت وتاريخ استخدامك للخدمة ، وغير ذلك
                            إحصائيات.
                          </p> <p> <strong> ملفات تعريف الارتباط </ strong> </p> <p>
                            ملفات تعريف الارتباط هي ملفات تحتوي على كمية صغيرة من البيانات
                            يشيع استخدامها كمعرفات فريدة مجهولة. يتم إرسال هذه
                            إلى متصفحك من مواقع الويب التي تزورها وتتواجد بها
                            المخزنة على الذاكرة الداخلية لجهازك.
                          </p> <p>
                            لا تستخدم هذه الخدمة "ملفات تعريف الارتباط" بشكل صريح. لكن،
                            قد يستخدم التطبيق رموزًا ومكتبات تابعة لجهة خارجية تستخدم ملفات
                            "ملفات تعريف الارتباط" لجمع المعلومات وتحسين خدماتهم.
                            لديك خيار إما قبول أو رفض ملفات تعريف الارتباط هذه
                            ومعرفة متى يتم إرسال ملف تعريف الارتباط إلى جهازك. اذا أنت
                            اختر رفض ملفات تعريف الارتباط الخاصة بنا ، فقد لا تتمكن من استخدام بعضها
                            أجزاء من هذه الخدمة.
                          </p> <p> <strong> مقدمو الخدمة </ strong> </p> <p>
                            يجوز لنا توظيف شركات خارجية و
                            الأفراد للأسباب التالية:
                          </p> <ul> <li> لتسهيل خدمتنا ؛ </ li> <li> لتقديم الخدمة نيابة عنا ؛ </ li> <li> لأداء الخدمات المتعلقة بالخدمة ؛ أو </li> <li> لمساعدتنا في تحليل كيفية استخدام خدمتنا. </ li> </ul> <p>
                            نريد إبلاغ المستخدمين بهذه الخدمة
                            أن هذه الأطراف الثالثة لديها حق الوصول إلى شخصيتهم
                            معلومة. السبب هو أداء المهام الموكلة إلى
                            نيابة عنا. ومع ذلك ، فهم ملزمون بعدم القيام بذلك
                            الكشف عن المعلومات أو استخدامها''';
final String ten = """
        
        
       <!DOCTYPE html>
    <html>
    <head>
      <meta charset='utf-8'>
      <meta name='viewport' content='width=device-width'>
      <title>Terms &amp; Conditions</title>
      <style> body { font-family: 'Helvetica Neue', Helvetica, Arial, sans-serif; padding:1em; } </style>
    </head>
    <body>
    <strong>Terms &amp; Conditions</strong> <p>
                  By downloading or using the app, these terms will
                  automatically apply to you – you should make sure therefore
                  that you read them carefully before using the app. You’re not
                  allowed to copy or modify the app, any part of the app, or
                  our trademarks in any way. You’re not allowed to attempt to
                  extract the source code of the app, and you also shouldn’t try
                  to translate the app into other languages or make derivative
                  versions. The app itself, and all the trademarks, copyright,
                  database rights, and other intellectual property rights related
                  to it, still belong to ifixit.
                </p> <p>
                  ifixit is committed to ensuring that the app is
                  as useful and efficient as possible. For that reason, we
                  reserve the right to make changes to the app or to charge for
                  its services, at any time and for any reason. We will never
                  charge you for the app or its services without making it very
                  clear to you exactly what you’re paying for.
                </p> <p>
                  The ifixit app stores and processes personal data that
                  you have provided to us, to provide our
                  Service. It’s your responsibility to keep your phone and
                  access to the app secure. We therefore recommend that you do
                  not jailbreak or root your phone, which is the process of
                  removing software restrictions and limitations imposed by the
                  official operating system of your device. It could make your
                  phone vulnerable to malware/viruses/malicious programs,
                  compromise your phone’s security features and it could mean
                  that the ifixit app won’t work properly or at all.
                </p> <div><p>
                    The app does use third-party services that declare their
                    Terms and Conditions.
                  </p> <p>
                    Link to Terms and Conditions of third-party service
                    providers used by the app
                  </p> <ul><li><a href="https://policies.google.com/terms" target="_blank" rel="noopener noreferrer">Google Play Services</a></li><!----><!----><!----><!----><!----><!----><!----><!----><!----><!----><!----><!----><!----><!----><!----><!----><!----><!----><!----><!----><!----><!----><!----><!----><!----><!----><!----></ul></div> <p>
                  You should be aware that there are certain things that
                  ifixit will not take responsibility for. Certain
                  functions of the app will require the app to have an active
                  internet connection. The connection can be Wi-Fi or provided
                  by your mobile network provider, but ifixit
                  cannot take responsibility for the app not working at full
                  functionality if you don’t have access to Wi-Fi, and you don’t
                  have any of your data allowance left.
                </p> <p></p> <p>
                  If you’re using the app outside of an area with Wi-Fi, you
                  should remember that the terms of the agreement with your
                  mobile network provider will still apply. As a result, you may
                  be charged by your mobile provider for the cost of data for
                  the duration of the connection while accessing the app, or
                  other third-party charges. In using the app, you’re accepting
                  responsibility for any such charges, including roaming data
                  charges if you use the app outside of your home territory
                  (i.e. region or country) without turning off data roaming. If
                  you are not the bill payer for the device on which you’re
                  using the app, please be aware that we assume that you have
                  received permission from the bill payer for using the app.
                </p> <p>
                  Along the same lines, ifixit cannot always take
                  responsibility for the way you use the app i.e. You need to
                  make sure that your device stays charged – if it runs out of
                  battery and you can’t turn it on to avail the Service,
                  ifixit cannot accept responsibility.
                </p> <p>
                  With respect to ifixit’s responsibility for your
                  use of the app, when you’re using the app, it’s important to
                  bear in mind that although we endeavor to ensure that it is
                  updated and correct at all times, we do rely on third parties
                  to provide information to us so that we can make it available
                  to you. ifixit accepts no liability for any
                  loss, direct or indirect, you experience as a result of
                  relying wholly on this functionality of the app.
                </p> <p>
                  At some point, we may wish to update the app. The app is
                  currently available on Android &amp; iOS – the requirements for the 
                  both systems(and for any additional systems we
                  decide to extend the availability of the app to) may change,
                  and you’ll need to download the updates if you want to keep
                  using the app. ifixit does not promise that it
                  will always update the app so that it is relevant to you
                  and/or works with the Android &amp; iOS version that you have
                  installed on your device. However, you promise to always
                  accept updates to the application when offersed to you, We may
                  also wish to stop providing the app, and may terminate use of
                  it at any time without giving notice of termination to you.
                  Unless we tell you otherwise, upon any termination, (a) the
                  rights and licenses granted to you in these terms will end;
                  (b) you must stop using the app, and (if needed) delete it
                  from your device.
                </p> <p><strong>Changes to This Terms and Conditions</strong></p> <p>
                  We may update our Terms and Conditions
                  from time to time. Thus, you are advised to review this page
                  periodically for any changes. We will
                  notify you of any changes by posting the new Terms and
                  Conditions on this page.
                </p> <p>
                  These terms and conditions are effective as of 2023-05-22
                </p> <p><strong>Contact Us</strong></p> <p>
                  If you have any questions or suggestions about our
                  Terms and Conditions, do not hesitate to contact us
                  at ifixite@ifixite.ae.
                </p> <p>This Terms and Conditions page was generated by <a href="https://app-privacy-policy-generator.nisrulz.com/" target="_blank" rel="noopener noreferrer">App Privacy Policy Generator</a></p>
    </body>
    </html>
      
          
          
          
          
          """;

final String par = '''

  <!DOCTYPE html>
<html lang="ar">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>سياسة الخصوصية</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      margin: 20px;
      line-height: 1.5;
    }

    h1 {
      color: #fff;
      font-size: 24px;
    }

    h2 {
      color: #fff;
      font-size: 18px;
    }

    p {
      color: #777;
      font-size: 16px;
    }

    ul {
      color: #777;
      font-size: 16px;
      list-style-type: disc;
      padding-left: 20px;
    }
  </style>
</head>
<body>
  <h1>سياسة الخصوصية</h1>
  <p>نحن نقدر ثقتك فينا، ونحن ندرك أنه يجب علينا الحفاظ على خصوصيتك. في هذه السياسة، نشرح كيفية استخدامنا للمعلومات التي نجمعها من خلال تطبيقنا وخدماتنا.</p>

  <h2>المعلومات التي نجمعها</h2>
  <p>عند استخدام تطبيقنا، قد نجمع المعلومات التالية:</p>
  <ul>
    <li>الاسم الكامل</li>
    <li>العنوان البريدي</li>
    <li>رقم الهاتف</li>
    <li>البريد الإلكتروني</li>
    <li>معلومات الدفع</li>
    <li>معلومات الطلبات والمشتريات</li>
  </ul>

  <h2>كيفية استخدامنا للمعلومات</h2>
  <p>نستخدم المعلومات التي نجمعها لتحسين تجربتك على تطبيقنا، وكذلك لتقديم الخدمات التي طلبتها. نحن لا نبيع أو نشارك معلوماتك مع أي طرف ثالث دون موافقتك الصريحة، إلا إذا كان ذلك مطلوبًا قانونًا أو لتنفيذ أحد الشروط والأحكام الخاصة بنا.</p>

  <h2>كيفية حماية المعلومات</h2>
  <p>نحن نتخذ إجراءات أمنية ملائمة لحماية المعلومات الشخصية التي نجمعها، بما في ذلك إجراءات الوصول المناسبة والتحكم في الوصول وتقنيات التشفير. ومع ذلك، يجب ملاحظة أنه لا يوجد أمن مطلق على الإنترنت، ونحن لا نضمن أنه لن يتم الوصول إلى المعلومات بطرق غير مصرح بها.</p>

  <h2>كيفية التواصل معنا</h2>
  <p>إذا كان لديك أي أسئلة أو استفسارات حول سياسة الخصوصية الخاصة بنا، يرجى التواصل معنا عبر الوسائل المتاحة على تطبيقنا.</p>
</body>
</html>
''';
final String pen = """
        
        
      <!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Privacy Policy</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      margin: 20px;
      line-height: 1.5;
    }

    h1 {
      color: #fff;
      font-size: 24px;
    }

    h2 {
      color: #fff;
      font-size: 18px;
    }

    p {
      color: #777;
      font-size: 16px;
    }

    ul {
      color: #777;
      font-size: 16px;
      list-style-type: disc;
      padding-left: 20px;
    }
  </style>
</head>
<body>
  <h1>Privacy Policy</h1>
  <p>We value your trust, and we understand the importance of maintaining your privacy. In this policy, we explain how we use the information we collect through our application and services.</p>

  <h2>Information We Collect</h2>
  <p>When you use our application, we may collect the following information:</p>
  <ul>
    <li>Full Name</li>
    <li>Mailing Address</li>
    <li>Phone Number</li>
    <li>Email Address</li>
    <li>Payment Information</li>
    <li>Order and Purchase Information</li>
  </ul>

  <h2>How We Use the Information</h2>
  <p>We use the information we collect to improve your experience on our application and to provide the services you requested. We do not sell or share your information with any third party without your explicit consent, unless required by law or to enforce our own terms and conditions.</p>

  <h2>Information Security</h2>
  <p>We take appropriate security measures to protect the personal information we collect, including appropriate access controls, access control, and encryption techniques. However, please note that there is no absolute security on the internet, and we do not guarantee that unauthorized access to information will not occur.</p>

  <h2>Contact Us</h2>
  <p>If you have any questions or inquiries about our privacy policy, please contact us through the available channels on our application.</p>
</body>
</html>

              
              
              """;
