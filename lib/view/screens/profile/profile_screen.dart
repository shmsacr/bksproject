import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../controller/auth_controller.dart';
import '../login/login_screen.dart';

class ProfileScreen extends ConsumerWidget {
  const ProfileScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Center(child: _SignOutButton());
  }
}

class _SignOutButton extends ConsumerWidget {
  const _SignOutButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return TextButton.icon(
      icon: const Icon(
        Icons.exit_to_app,
        color: Colors.redAccent,
      ),
      onPressed: () async {
        ref
            .read(firebaseAuthProvider)
            .signOut()
            .then((_) => Navigator.of(context).pushAndRemoveUntil(
                  MaterialPageRoute(builder: (_) => const LoginScreen()),
                  (route) => false,
                ));
      },
      label: const Text(
        "Çıkış Yap",
        style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
      ),
    );
  }
}
