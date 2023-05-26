// import 'package:ccaves_management_app/screens/view_events.dart';
// import 'package:ccaves_management_app/screens/create_event.dart';
// import 'package:ccaves_management_app/screens/past_events.dart';
// import 'package:ccaves_management_app/screens/request_item.dart';
// import 'package:ccaves_management_app/screens/onboding/onboding_screen.dart';
// import 'package:ccaves_management_app/screens/view_damage_report.dart';
import 'package:flutter/material.dart';

import '../pages/Onboarding/onboarding_screen.dart';
// import 'damage_report.dart';
// import 'manage_items.dart';
// import 'request_item.dart';
// import 'past_events.dart';
// import 'view_damage_report.dart';

class Routes {
  static const String home = '/home';
  static const String profile = '/profile';
  static const String settings = '/settings';
  static const String addItem = '/add-item';
  static const String requestItem = '/request-item';
  static const String findEvents = '/FindEvent';
  static const String addDamageReport = '/damage-report';
  static const String pastDamageReports = '/view-damage-reports';
  static const String pastEvents = '/past-events';
  static const String addEvents = '/create-event';

  static Route<dynamic>? generateRoute(RouteSettings settings) {
    WidgetBuilder? builder;

    switch (settings.name) {
      case home:
        builder = (context) => const OnboardingScreen();
        break;
      // case profile:
      //   // Add your profile page builder here
      //   break;
      // case addItem:
      //   builder = (context) => const AddItemPage();
      //   break;
      // case findEvents:
      //   builder = (context) => const ViewEventsPage();
      //   break;
      // case requestItem:
      //   builder = (context) => const RequestItemPage();
      //   break;
      // case addDamageReport:
      //   builder = (context) => const DamageReportPage();
      //   break;      
      // case pastDamageReports:
      //   builder = (context) => const ViewDamageReportsPage();
      //   break;
      // case pastEvents:
      //   builder = (context) => const PastEventsPage();
      //   break;
      // case addEvents:
      //   builder = (context) => const CreateEventPage();
        break;

      default:
        return MaterialPageRoute(
          builder: (context) => Scaffold(
            body: Center(
              child: Text('Unknown route: ${settings.name}'),
            ),
          ),
        );
    }

    if (builder != null) {
      return MaterialPageRoute(builder: builder);
    } else {
      return null;
    }
  }
}
