
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:theme/providers/theme_changer_provider.dart';
import 'package:theme/screens/home_screen.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => ThemeChangerProvider(),),
      ],
      child: Builder(builder: (BuildContext context){

        final themeChanger = Provider.of<ThemeChangerProvider>(context);
        return MaterialApp(
          theme: ThemeData(
            brightness: Brightness.light,
            primarySwatch: Colors.red

          ),
          themeMode: themeChanger.currentThemeMode,
          darkTheme: ThemeData(
            brightness: Brightness.dark,
            primaryColorDark: Colors.green,
            primarySwatch: Colors.red,
            appBarTheme: AppBarTheme(color: Colors.green.shade800),
            primaryColor: Colors.purple
          ),
          // lightTheme: ThemeData(),

          debugShowCheckedModeBanner: false,
          home: HomeScreen(),
        );
      }),
    );
  }
}
