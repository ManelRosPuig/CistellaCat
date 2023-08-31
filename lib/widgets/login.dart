import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

// Method to put on the button:
Future signIn() async {
  final user = await GoogleSignInApi.login();
  if (kDebugMode) {
    print("Name ${user!.displayName}");
    print("Email ${user.email}");
    print("Photo ${user.photoUrl}");
    print("Id ${user.id}");
    print("AuthHeaders ${user.authHeaders}");
    print("ServerAuthCode ${user.serverAuthCode}");
  }
  await Future.delayed(const Duration(seconds: 1));
  GoogleSignInApi.logout();
}

class GoogleSignInApi {
  // static final _clientIDWeb = 'duwqdhqwuiuhd';
  // static final _googleSignIn = GoogleSignIn(clientId: _clientIDWeb)
  static final _googleSignIn = GoogleSignIn();

  static Future<GoogleSignInAccount?> login() => _googleSignIn.signIn();

  static Future logout() => _googleSignIn.signOut();
}

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cistella Cat', textScaleFactor: 1.0),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            signIn();
          },
          child: const Text('Sign In with Google', textScaleFactor: 1.0),
        ),
      ),
    );
  }
}
