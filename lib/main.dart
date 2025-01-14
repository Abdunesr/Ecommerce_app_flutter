import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart'; // Import for Firebase initialization
import 'package:providers/Providers/AuthProvider.dart';
import 'package:providers/models/Users.dart';
import 'constants.dart'; // Import for constants like kTextColor
import 'screens/home/home_screen.dart';
import 'screens/login_screen.dart';
import 'screens/register_screen.dart';
import 'package:provider/provider.dart';
import 'package:providers/Providers/CartProvider.dart';

void main() async {
  WidgetsFlutterBinding
      .ensureInitialized(); // Ensure binding for async operations
  await Firebase.initializeApp(); // Initialize Firebase

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => CartProvider()),
        StreamProvider<Users?>.value(
          value:
              AuthProvider().user, // Provide the user stream from AuthProvider
          initialData: null, // Start with no user
        ),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'The Flutter Way',
      theme: ThemeData(
        textTheme: Theme.of(context).textTheme.apply(bodyColor: kTextColor),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const AuthWrapper(), // Use AuthWrapper as the root widget
    );
  }
}

class AuthWrapper extends StatelessWidget {
  const AuthWrapper({super.key});

  @override
  Widget build(BuildContext context) {
    final user = Provider.of<Users?>(context);

    // Dynamically return the screen based on the user's login status
    if (user == null) {
      return const LoginScreen(); // User is not logged in
    } else {
      print(user.uid);
      return const HomeScreen();
      // User is logged in
    }
  }
}
