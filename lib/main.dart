import 'package:flutter/material.dart';
import 'constants.dart'; // Import for constants like kTextColor
import 'screens/home/home_screen.dart';
import 'package:provider/provider.dart';
import 'package:providers/Providers/CartProvider.dart';

// The entry point of the application
void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => CartProvider()),
      ],
      child: const MyApp(),
    ),
  ); // Runs the app by calling MyApp as the root widget
}

// The main app widget
class MyApp extends StatelessWidget {
  const MyApp(
      {super.key}); // Constructor with a key to identify this widget uniquely

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:
          false, // Removes the "debug" banner in debug mode
      title: 'The Flutter Way', // Sets the app's title visible in task manager
      theme: ThemeData(
        // Customizes the app's text appearance by applying the kTextColor
        textTheme: Theme.of(context).textTheme.apply(bodyColor: kTextColor),
        visualDensity: VisualDensity
            .adaptivePlatformDensity, // Adjusts layout density for different platforms
      ),
      home:
          const HomeScreen(), // Sets HomeScreen as the initial screen of the app
    );
  }
}
