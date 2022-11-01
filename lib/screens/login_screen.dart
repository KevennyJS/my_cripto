import 'package:flutter/material.dart';

import '../responsive/desktop_screen_layout.dart';
import '../responsive/mobile_screen_layout.dart';
import '../responsive/responsive_layout_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _telefoneController = TextEditingController();
  bool _isLoading = false;

  @override
  void dispose() {
    super.dispose();
    _telefoneController.dispose();
  }

  void loginUser() async {
    setState(() => _isLoading = true);
    String res = "success"; //await FireStoreMethods().loginUser(_telefoneController.text);
    if (res == "success") {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => const ResponsiveLayout(
            desktopScreenLayout: DesktopScreenLayout(),
            mobileScreenLayout: MobileScreenLayout(),
          ),
        ),
      );
    }
    setState(() => _isLoading = false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Login', style: TextStyle(fontSize: 30)),
            const SizedBox(height: 20),
            SizedBox(
              width: 300,
              child: TextField(controller: _telefoneController, decoration: const InputDecoration(border: OutlineInputBorder(), labelText: 'Telefone')),
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: 300,
              child: ElevatedButton(
                onPressed: loginUser,
                child: _isLoading ? const Center(child: CircularProgressIndicator(color: Colors.white)) : const Text('Entrar'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
