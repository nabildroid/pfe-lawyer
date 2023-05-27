import 'package:dounia/pages/about_lawyer.dart';
import 'package:dounia/pages/about_us.dart';
import 'package:dounia/pages/account_lawyer.dart';
import 'package:dounia/pages/appointment.dart';
import 'package:dounia/pages/appointment_reservation.dart';
import 'package:dounia/pages/case_types.dart';
import 'package:dounia/pages/cases.dart';
import 'package:dounia/pages/chat.dart';
import 'package:dounia/pages/client.dart';
import 'package:dounia/pages/contact_us.dart';
import 'package:dounia/pages/documents.dart';
import 'package:dounia/pages/employee.dart';
import 'package:dounia/pages/fees.dart';
import 'package:dounia/pages/home_lawyer.dart';
import 'package:dounia/pages/law.dart';
import 'package:dounia/pages/login.dart';
import 'package:dounia/pages/message.dart';
import 'package:dounia/pages/new_client.dart';
import 'package:dounia/pages/new_contact.dart';
import 'package:dounia/pages/new_employee.dart';
import 'package:dounia/pages/notifications.dart';
import 'package:dounia/pages/services.dart';
import 'package:dounia/pages/splash.dart';
import 'package:dounia/pages/tasks.dart';
import 'package:dounia/pages/team.dart';
import 'package:dounia/pages/contact.dart' as ContactPage;
import 'package:dounia/pages/update_account.dart';
import 'package:go_router/go_router.dart';

import 'package:flutter/material.dart';

import 'pages/home.dart';
import 'pages/create_account.dart';

/// The route configuration.
final GoRouter routerConfig = GoRouter(
  initialLocation: "/splash",
  routes: <RouteBase>[
    GoRoute(
      path: '/services',
      builder: (BuildContext context, GoRouterState state) {
        return const Services();
      },
    ),
    GoRoute(
      path: '/splash',
      builder: (BuildContext context, GoRouterState state) {
        return const Splash();
      },
    ),
    GoRoute(
      path: '/update_account',
      builder: (BuildContext context, GoRouterState state) {
        return const UpdateAccount();
      },
    ),
    GoRoute(
      path: '/tasks',
      builder: (BuildContext context, GoRouterState state) {
        return const Tasks();
      },
    ),
    GoRoute(
      path: '/about_us',
      builder: (BuildContext context, GoRouterState state) {
        return const AboutUs();
      },
    ),
    GoRoute(
      path: '/law',
      builder: (BuildContext context, GoRouterState state) {
        return const Law();
      },
    ),
    GoRoute(
      path: '/case_types',
      builder: (BuildContext context, GoRouterState state) {
        return const CaseTypes();
      },
    ),
    GoRoute(
      path: '/cases',
      builder: (BuildContext context, GoRouterState state) {
        return const Cases();
      },
    ),
    GoRoute(
      path: '/documents',
      builder: (BuildContext context, GoRouterState state) {
        return const Documents();
      },
    ),
    GoRoute(
      path: '/fees',
      builder: (BuildContext context, GoRouterState state) {
        return const Fees();
      },
    ),
    GoRoute(
      path: '/notifications',
      builder: (BuildContext context, GoRouterState state) {
        return const Notifications();
      },
    ),
    GoRoute(
      path: '/about_lawyer',
      builder: (BuildContext context, GoRouterState state) {
        return const AboutLawyer();
      },
    ),
    GoRoute(
      path: '/message',
      builder: (BuildContext context, GoRouterState state) {
        return const Message();
      },
    ),
    GoRoute(
      path: '/contact_us',
      builder: (BuildContext context, GoRouterState state) {
        return const ContactUs();
      },
    ),
    GoRoute(
      path: '/contact',
      builder: (BuildContext context, GoRouterState state) {
        return const ContactPage.Contact();
      },
    ),
    GoRoute(
      path: '/new_empolyee',
      builder: (BuildContext context, GoRouterState state) {
        return const NewEmpolyee();
      },
    ),
    GoRoute(
      path: '/team',
      builder: (BuildContext context, GoRouterState state) {
        return const Team();
      },
    ),
    GoRoute(
      path: '/client',
      builder: (BuildContext context, GoRouterState state) {
        return const Client();
      },
    ),
    GoRoute(
      path: '/employee',
      builder: (BuildContext context, GoRouterState state) {
        return const Employee();
      },
    ),
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const Home();
      },
    ),
    GoRoute(
      path: '/new_client',
      builder: (BuildContext context, GoRouterState state) {
        return const NewClient();
      },
    ),
    GoRoute(
      path: '/new_contact',
      builder: (BuildContext context, GoRouterState state) {
        return const NewContact();
      },
    ),
    GoRoute(
      path: '/create_account',
      builder: (BuildContext context, GoRouterState state) {
        return const CreateAccount();
      },
    ),
    GoRoute(
      path: '/home_lawyer',
      builder: (BuildContext context, GoRouterState state) {
        return const HomeLawyer();
      },
    ),
    GoRoute(
      path: '/appointment',
      builder: (BuildContext context, GoRouterState state) {
        return const Appointment();
      },
    ),
    GoRoute(
      path: '/chat',
      builder: (BuildContext context, GoRouterState state) {
        return const Chat();
      },
    ),
    GoRoute(
      path: '/appointment_reservation',
      builder: (BuildContext context, GoRouterState state) {
        return const AppointmentReservation();
      },
    ),
    GoRoute(
      path: '/login',
      builder: (BuildContext context, GoRouterState state) {
        return const Login();
      },
    ),
    GoRoute(
      path: '/accountLawyer',
      builder: (BuildContext context, GoRouterState state) {
        return const AccountLawyer();
      },
    ),
  ],
);
