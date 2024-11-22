import 'package:go_router/go_router.dart';
import 'package:navigationdemo/screens/about_screen.dart';
import 'package:navigationdemo/screens/contact_us_screen.dart';
import 'package:navigationdemo/screens/home_screen.dart';
import 'package:navigationdemo/screens/profile_screen.dart';

class MyAppRouter {
  final GoRouter router = GoRouter(
    routes: [
      /// Home screen navigation
      GoRoute(
        path: "/",
        name: "/home",
        builder: (context, state) {
          return const HomeScreen();
        },
      ),

      /// Profile screen navigation
      GoRoute(
        path: "/profile",
        name: "/profile",
        builder: (context, state) {
          final userName = state.extra as String;
          return ProfileScreen(
            name: userName,
          );
        },
      ),

      /// Contact screen navigation
      /// Contact screen navigation
      GoRoute(
        path: "/contact/:phoneNumber",
        name: "contact",
        builder: (context, state) {
          final phoneNumber = state.pathParameters["phoneNumber"] ?? "Unknown";
          return ContactUsScreen(
            contactNumber: phoneNumber,
          );
        },
      ),

      /// About screen navigation
      GoRoute(
        path: "/",
        name: "/about",
        builder: (context, state) {
          return const AboutScreen();
        },
      ),
    ],
  );
}
