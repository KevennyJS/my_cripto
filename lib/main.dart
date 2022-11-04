import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:my_cripto/responsive/desktop_screen_layout.dart';
import 'package:my_cripto/responsive/mobile_screen_layout.dart';
import 'package:my_cripto/responsive/responsive_layout_screen.dart';
import 'package:my_cripto/screens/login_screen.dart';
import 'package:my_cripto/util/colors.dart';
import 'package:provider/provider.dart';

import 'providers/user_provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
      apiKey: "AIzaSyDFZPc-vsWQRsWOCkNz5A_dXTgmb9bExUM",
      authDomain: "my-crypto-8939c.firebaseapp.com",
      projectId: "my-crypto-8939c",
      storageBucket: "my-crypto-8939c.appspot.com",
      messagingSenderId: "663810544405",
      appId: "1:663810544405:web:548b0a8f632dac57cf0f1c",
      measurementId: "G-R65R2J15V3",
    ),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => UserProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'My Cripto',
        darkTheme: ThemeData.dark().copyWith(
          backgroundColor: primaryBackground,scaffoldBackgroundColor: primaryBackground
        ),
        themeMode: ThemeMode.dark,
        home: StreamBuilder(
          stream: FirebaseAuth.instance.authStateChanges(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.active) {
              if (snapshot.hasData) {
                return const ResponsiveLayout(
                  desktopScreenLayout: DesktopScreenLayout(),
                  mobileScreenLayout: MobileScreenLayout(),
                );
              } else if (snapshot.hasError) {
                return Center(
                  child: Text('${snapshot.error}'),
                );
              }
            }
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Scaffold(
                body: Center(
                  child: CircularProgressIndicator(),
                ),
              );
            }
            return const LoginScreen();
          },
        ),
      ),
    );
  }
}
