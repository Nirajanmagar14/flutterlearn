import 'package:flutter/material.dart';
import 'package:flutter_catalog/Widgets/theme.dart';
import 'package:flutter_catalog/pages/home_page.dart';
import 'package:flutter_catalog/pages/loginpage.dart';
import 'package:flutter_catalog/utils/routes.dart';
//import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //bringVegitables(rupees: 50,thaila: true);
    return MaterialApp(
        debugShowCheckedModeBanner: false,
      themeMode:ThemeMode.light,
      theme: MyTheme.LightTheme(context),
     darkTheme: MyTheme.darkTheme(context),
    
      
        
      initialRoute: Myroutes.homeRoute,
      routes: {
        "/": (context) => LoginPage(),
        Myroutes.loginRoute: (context) => LoginPage(),
        Myroutes.homeRoute: (context) => HomePage(),
      },
      // darkTheme: ThemeData.dark(),
      // home: HomePage(),
    );

    //bringVegitables({@required bool thaila, int rupees = 100}) {
    // take a cycle

    //go to marketplace of kalimati
    // }
  }
}
