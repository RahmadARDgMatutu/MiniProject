import 'package:flutter/material.dart';
import 'package:kos_app/view/chat_body.dart';
import 'package:kos_app/view/home_page.dart';
import 'package:kos_app/view/login_page.dart';
import 'package:kos_app/view/pemesanan.dart';
import 'package:kos_app/view/splash.dart';
import 'package:kos_app/view/tambahdata.dart';
import 'package:kos_app/view_model/daftarkosdetailprovider.dart';
import 'package:kos_app/view_model/userprovider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => AuthProvider()),
        ChangeNotifierProvider(create: (context) => DaftarKosDetailProvider()),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/':(context) => WelcomeScreen(),
        '/Login': (context) => LoginPage(),
        '/Home': (context) => HomePage(),
        '/chat': (context) => ChatPage(),
        '/pemesanan': (context) => PemesananPage(),
        '/add':(context) => AddData()
      },
      theme: ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.brown,
      ),
    );
  }
}