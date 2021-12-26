import 'package:flutte_r_appl/screens/main_pages/main_page.dart';
import 'package:flutter/material.dart';
import 'package:onboarding/onboarding.dart';

class HomePage extends StatelessWidget {
   final onboardingPagesList = [
          PageModel(
            widget: Column(
              children: [
                Container(
                    padding: EdgeInsets.only(bottom: 45.0),
                    child:  Image.asset('assets/coffe.jpg',
                        )),
                Container(
                    width: double.infinity,
                    child: Text('Coffe', style: pageTitleStyle)),
                    SizedBox(height:23 ,)
,                Container(
                  width: double.infinity,
                  child: Text(
                    'The drink dates back to 800 A.D. ',
                    style: pageInfoStyle,
                  ),
                ),
              ],
            ),
          ),
          PageModel(
            widget: Column(
              children: [
                 Image.asset('assets/coffe.jpg',),
                Text('Coffe', style: pageTitleStyle),
                SizedBox(height: 23,),
                Text(
                  'Coffee beans are technically seeds.',
                  style: pageInfoStyle,
                )
              ],
            ),
          ),
          PageModel(
            widget: Column(
              children: [
                Image.asset('assets/coffe.jpg', ),
                Text('Coffe', style: pageTitleStyle),
                SizedBox(height:23),
                Text(
                  ' And you can eat coffee cherries as a food.',
                  style: pageInfoStyle,
                ),
              ],
            ),
          ),
      ];

   HomePage({Key key}) : super(key: key);
      
      @override
      Widget build(BuildContext context) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: Colors.blue,
            visualDensity: VisualDensity.adaptivePlatformDensity,
          ),
          home:  Onboarding(
        proceedButtonStyle: ProceedButtonStyle(
            proceedButtonRoute: (context) {
              return Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(
                  builder: (context) => MainPage(),
                ),
                (route) => false,
              );
            }),
        pages: onboardingPagesList,
        isSkippable: true,
        indicator: Indicator(
          indicatorDesign: IndicatorDesign.line(
            lineDesign: LineDesign(
              lineType: DesignType.line_uniform,
            ),
          ),
        ),
      ),
      
        );
      }
    }
    
