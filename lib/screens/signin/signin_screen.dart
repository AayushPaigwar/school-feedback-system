import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../components/sized.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Feedback App",
          style: GoogleFonts.poppins(color: Colors.grey),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // icon
            // ClipRRect(
            //   borderRadius: BorderRadius.circular(20.0),
            //   child: Image.asset(
            //     'assets/images/edusurvey.png',
            //     height: 100,
            //     width: 100,
            //   ),
            // ),

            //welcome text
            buildHeight(MediaQuery.of(context).size.height * 0.05),
            Text(
              "Welcome to EduSurvey",
              style: GoogleFonts.poppins(
                  fontSize: 25.0,
                  color: Colors.grey,
                  fontWeight: FontWeight.w500),
            ),

            buildHeight(MediaQuery.of(context).size.height * 0.15),

            Text(
              "LOGIN AS A",
              style: GoogleFonts.poppins(
                  fontSize: 25.0,
                  color: Colors.grey,
                  fontWeight: FontWeight.w500),
            ),
            buildHeight(20),
            ListTile(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0)),
              tileColor: const Color(0xff5c0f8b),
              title: const Center(
                child: Text("Student"),
              ),
              onTap: () {
                Navigator.pushNamed(
                  context,
                  '/signinstu',
                );
              },
            ),
            buildHeight(20),
            ListTile(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0)),
              tileColor: const Color(0xff5c0f8b),
              title: const Center(child: Text("Faculty")),
              onTap: () {
                Navigator.pushNamed(context, '/signinfac');
              },
            ),
          ],
        ),
      ),
    );
  }
}
