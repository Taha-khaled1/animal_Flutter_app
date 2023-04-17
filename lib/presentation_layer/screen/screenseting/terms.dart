import 'package:animal_app/presentation_layer/components/appbar1.dart';
import 'package:animal_app/presentation_layer/resources/color_manager.dart';
import 'package:flutter/material.dart';

class TermsAndConditionsPage extends StatelessWidget {
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
        child: Column(
          children: <Widget>[
            appbarscreen('الشروط و الاحكام'),
            Text(
              'Terms and Conditions',
              style: Theme.of(context).textTheme.headline5,
            ),
            SizedBox(height: 16.0),
            Text(
              'Welcome to our real estate application! Our goal is to provide you with a simple and efficient platform for selling and renting real estate. By using our application, you agree to the following terms and conditions.',
              style: Theme.of(context).textTheme.headline6,
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 16.0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Directionality(
                textDirection: TextDirection.ltr,
                child: Text(
                  '1. User account\n'
                  '  1.1 In order to use our application, you must create an account.\n'
                  '  1.2 You are responsible for maintaining the confidentiality of your account information and password.\n'
                  '  1.3 You agree to immediately notify us of any unauthorized use of your account.\n'
                  '\n'
                  '2. Use of the application\n'
                  '  2.1 You may use our application only for lawful purposes and in accordance with these terms and conditions.\n'
                  '  2.2 You agree not to use our application:\n'
                  '    2.2.1 To upload, post, or otherwise transmit any content that is unlawful, harmful, threatening, abusive, harassing, defamatory, obscene, vulgar, sexually explicit, or otherwise offensive.\n'
                  '    2.2.2 To impersonate any person or entity.\n'
                  '    2.2.3 To interfere with or disrupt the operation of our application.\n'
                  '\n'
                  '3. Content\n'
                  '  3.1 Our application allows you to upload, post, or otherwise transmit content, including but not limited to, property descriptions, photos, and videos.\n'
                  '  3.2 You are solely responsible for the content that you upload, post, or otherwise transmit through our application.\n'
                  '  3.3 You agree not to upload, post, or otherwise transmit any content that infringes any patent, trademark, trade secret, copyright, or other proprietary rights of any party.\n'
                  '  3.4 You grant us a non-exclusive, transferable, sub-licensable, royalty-free, worldwide license to use any content that you upload, post, or otherwise transmit through our application.\n'
                  '\n'
                  '4. Disclaimers\n'
                  '  4.1 Our application is provided on an "as is" and "as available" basis. We make no representations or warranties of any kind, express or implied, as to the operation of our application or the information, content, materials, or products included in our application.\n'
                  '  4.2 You understand and agree \n'
                  ' that your use of our application is at your own risk and that we will not be liable for any damages of any kind arising from the use of our application, including but not limited to, direct, indirect, incidental, punitive, and consequential damages.\n'
                  '\n'
                  '5. Limitation of Liability\n'
                  ' 5.1 In no event shall we be liable for any damages of any kind, including but not limited to, direct, indirect, incidental, punitive, and consequential damages, arising from the use of our application or the inability to use our application.\n'
                  '\n'
                  '6. Indemnification\n'
                  ' 6.1 You agree to indemnify, defend, and hold harmless us, our affiliates, and our respective officers, directors, employees, agents, licensors, and suppliers from and against all losses, expenses, damages, and costs, including reasonable attorneys fees, resulting from any violation of these terms and conditions or any activity related to your account.\n'
                  '\n'
                  '7. Changes to these terms and conditions\n'
                  ' 7.1 We reserve the right to modify these terms and conditions at any time.\n'
                  ' 7.2 Your continued use of our application following the posting of changes to these terms and conditions will mean that you accept those changes.\n'
                  '\n'
                  '8. Governing Law\n'
                  ' 8.1 These terms and conditions shall be governed by and construed in accordance with the laws of the country in which our application is hosted.\n'
                  '\n'
                  '9. Contact Information\n'
                  ' 9.1 If you have any questions about these terms and conditions, please contact us at [insert contact information].\n',
                  style: TextStyle(
                    fontSize: 20,
                    color: ColorManager.ktextblackk,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
