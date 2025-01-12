import 'package:flutter/material.dart';
import 'package:minder/Caregiver_Conversation/patient_conversation_list.dart';
import 'package:minder/Caregiver_Login/caregiver_patient_account_creation.dart';
import 'package:minder/Reminder/caregiver_reminder_creation.dart';
import 'package:minder/patient_signup.dart';

import 'Caregiver_Conversation/patient_conversation_details.dart';
import 'Caregiver_Login/caregiver_login.dart';
import 'Caregiver_Login/caregiver_signup.dart';

import 'Welcome_screen/welcome.dart';
import 'end_user_license_agreement.dart';
import 'reminder_creation_screen.dart.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Minder App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),

      home:  SplashScreen(),
      //home: tour
      routes: {
        //  '/Settings' : (context) => FigmaToCodeApp(),
        '/Login': (context) =>  LoginPage(), // Add this line
        '/welcome': (context) =>  SplashScreen(), // Add this line
         '/conversationDetailsScreen': (context) =>  conversationDetailsScreen(),
        //  '/conversationListScreen': (context) => tour_one(),
          '/conversationListScreen': (context) =>  ConversationListScreen(),
          '/caregiversignup': (context) =>  caregiversignup(),
          '/ReminderFormScreen': (context) =>  ReminderFormScreen(),
          '/reminder_creation_screen' : (context) => CaregiverReminderCreationScreen(),
          '/caregiver_signup' : (context) =>  SignUpScreen(),
          '/eula' : (context) => const CaregiverEulaScreen(),
          '/faceidsignup' : (context) => const patient_signup(),
        //  '/tourone' : (context) => MyHomePage(),
      },
    );
  }
}
