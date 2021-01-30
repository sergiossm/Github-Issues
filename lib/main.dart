import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:github_issues/enums/enums.dart';
import 'package:github_issues/locator.dart';
import 'package:github_issues/providers/auth_provider.dart';
import 'package:github_issues/screens/home.dart';
import 'package:github_issues/screens/login.dart';
import 'package:github_issues/screens/splash.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setupLocator();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) => ChangeNotifierProvider<AuthProvider>(
        create: (_) => AuthProvider(),
        child: MaterialApp(
          home: Consumer<AuthProvider>(
            builder: (_, AuthProvider provider, __) {
              switch (provider.status) {
                case AuthStatus.Uninitialized:
                  return Splash();
                case AuthStatus.Unauthenticated:
                case AuthStatus.Authenticating:
                  return Login(
                    status: provider.status,
                    logIn: (String email, String password) {
                      provider.signIn(email, password);
                    },
                  );
                case AuthStatus.Authenticated:
                  return Home();
                default:
                  return Login();
              }
            },
          ),
        ),
      );
}
