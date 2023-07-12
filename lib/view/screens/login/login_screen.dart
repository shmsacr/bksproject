import 'package:bksproject/view/screens/login/users.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_login/flutter_login.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../controller/auth_controller.dart';
import '../dashboard/dashboardScreen.dart';

class LoginScreen extends ConsumerWidget {
  const LoginScreen({
    Key? key,
  }) : super(key: key);
  Duration get loginTime => Duration(milliseconds: timeDilation.ceil() * 225);
  static const String routeName = "login";

  Future<String?> _loginUser(LoginData data, WidgetRef ref) async {
    try {
      final UserCredential userCredential = await ref
          .read(firebaseAuthProvider)
          .signInWithEmailAndPassword(
              email: data.name, password: data.password);
    } catch (e) {
      return e.toString();
    }
    return null;
  }

  Future<String?> _recoverPassword(String name) {
    return Future.delayed(loginTime).then((_) {
      if (!mockUsers.containsKey(name)) {
        return 'User not exists';
      }
      return null;
    });
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return FlutterLogin(
      title: 'BKS',
      logo: const AssetImage('assets/images/bks.png'),
      onLogin: (loginData) {
        debugPrint('Login info');
        debugPrint('Name: ${loginData.name}');
        debugPrint('Password: ${loginData.password}');
        return _loginUser(loginData, ref);
      },
      onSubmitAnimationCompleted: () async {
        Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(builder: (_) => const DashboardScreen()),
          (route) => false,
        );
      },
      onRecoverPassword: (name) {
        debugPrint('Recover password info');
        debugPrint('Name: $name');
        return _recoverPassword(name);
        // Show new password dialog
      },
      theme: LoginTheme(
        primaryColor: Colors.black,
        pageColorLight: Colors.blue.shade400,
        pageColorDark: Colors.red,
        // tema ayarlar

        titleStyle: const TextStyle(
          color: Colors.red,
          fontFamily: 'DancingScript',
          fontSize: 25,
        ),

        bodyStyle: const TextStyle(
          //kutu içi
          fontStyle: FontStyle.italic,
        ),

        textFieldStyle: const TextStyle(
          //mail pass
          color: Colors.black87,
          shadows: [Shadow(blurRadius: 1)],
        ),

        buttonStyle: const TextStyle(
          //buton setting
          fontWeight: FontWeight.w800,
          color: Colors.orangeAccent,
        ),

        cardTheme: CardTheme(
          color: Colors.purple.shade100,
          elevation: 5,
          margin: EdgeInsets.only(top: 15),
          shape: ContinuousRectangleBorder(
              borderRadius: BorderRadius.circular(100.0)),
        ),
        inputTheme: InputDecorationTheme(
          filled: true,
          fillColor: Colors.purple.withOpacity(.1),
          contentPadding: EdgeInsets.zero,
          errorStyle: TextStyle(
            color: Colors.red,
          ),
          errorBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.red.shade700),
            borderRadius: BorderRadius.circular(100.0),
          ),
        ),
        buttonTheme: LoginButtonTheme(
          splashColor: Colors.red,
          backgroundColor: Colors.purple.shade200,
          highlightColor: Colors.blue,
          shape: BeveledRectangleBorder(
            borderRadius: BorderRadius.circular(3),
          ),
        ),
      ),
    );
    ;
  }
}
