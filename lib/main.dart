import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'package:componentes/src/routes/routes.dart';

//import 'package:componentes/src/pages/home_temp.dart';
// import 'package:componentes/src/pages/home_page.dart';
// import 'package:componentes/src/pages/avatar_page.dart';
import 'package:componentes/src/pages/alert_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: [
        // ... app-specific localization delegate[s] here
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale('en', 'US'), // English
        const Locale('es', 'ES'), // Hebrew
      ],
      title: 'Componentes App',
      debugShowCheckedModeBanner: false,
      //home: HomePageTemp()
      //home: HomePage(),
      initialRoute: '/',
      /*routes: <String, WidgetBuilder>{
        '/': (BuildContext context) => HomePage(),
        'alert': (BuildContext context) => AlertPage(),
        'avatar': (BuildContext context) => AvatarPage()
      },*/
      routes: getApplicationRoutes(),
      onGenerateRoute: (settings) {
        //print('Ruta llamada: ${settings}');

        return MaterialPageRoute(
            builder: (BuildContext context) => AlertPage());
      },
    );
  }
}
