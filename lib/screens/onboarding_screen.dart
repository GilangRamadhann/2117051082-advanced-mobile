import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mola/screens/signup_screen.dart';

class onboardingscreen extends StatelessWidget {
  const onboardingscreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 24.0, horizontal: 16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Align(
                  alignment: Alignment.center,
                  child: Image.asset('assets/images/justduit.png')),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16.0),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const SizedBox(height: 16.0),
                    Text(
                      'Let’s start the journey',
                      style: TextStyle(
                          fontFamily: GoogleFonts.poppins(
                            fontWeight: FontWeight.w600,
                          ).fontFamily,
                          fontSize: 24.0),
                    ),
                    const SizedBox(height: 16.0),
                    Text(
                      'Experience seamless digital',
                      style: TextStyle(
                        fontFamily: GoogleFonts.poppins(
                          fontWeight: FontWeight.w400,
                        ).fontFamily,
                        fontSize: 16.0,
                        color: Colors.grey,
                      ),
                    ),
                    Text(
                      'transactions with JustDuit',
                      style: TextStyle(
                        fontFamily: GoogleFonts.poppins(
                          fontWeight: FontWeight.w400,
                        ).fontFamily,
                        fontSize: 16.0,
                        color: Colors.grey,
                      ),
                    ),
                    const SizedBox(height: 16.0),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: SizedBox(
                        width: double.infinity,
                        height: 50.0,
                        child: ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all<Color>(Colors.blue),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50.0),
                              ),
                            ),
                          ),
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => SignupScreen()));
                          },
                          child: Text(
                            'Get Started',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16.0,
                              fontFamily: GoogleFonts.poppins(
                                fontWeight: FontWeight.w400,
                              ).fontFamily,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10.0),
                    Text(
                      'I already have an account',
                      style: TextStyle(
                        fontFamily: GoogleFonts.poppins(
                          fontWeight: FontWeight.w400,
                        ).fontFamily,
                        fontSize: 16.0,
                        color: Colors.grey,
                      ),
                    ),
                    const SizedBox(height: 16.0),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
