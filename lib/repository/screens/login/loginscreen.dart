import 'package:flutter/material.dart';
import '../../widgets/uihelper.dart';
import '../bottomnav/bottomnavscreen.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              // Top Image
              UiHelper.CustomImage(img: "Blinkit Onboarding Screen.png"),
              const SizedBox(height: 30),

              // Middle Image
              UiHelper.CustomImage(img: "image 10.png"),
              const SizedBox(height: 20),

              // Heading Text
              UiHelper.CustomText(
                text: "India’s last minute app",
                color: const Color(0xFF000000),
                fontweight: FontWeight.bold,
                fontsize: 20,
                fontfamily: "bold",
              ),
              const SizedBox(height: 20),

              // Card Section
              Card(
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Container(
                  height: 200,
                  width: 350,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xFFFFFFFF),
                  ),
                  child: Column(
                    children: [
                      const SizedBox(height: 20),

                      // User Name
                      UiHelper.CustomText(
                        text: "Lalu",
                        color: const Color(0xFF000000),
                        fontweight: FontWeight.w900,
                        fontsize: 16,
                      ),
                      const SizedBox(height: 5),

                      // User Phone
                      UiHelper.CustomText(
                        text: "8175052XXX",
                        color: const Color(0xFF9C9C9C),
                        fontweight: FontWeight.bold,
                        fontsize: 14,
                        fontfamily: "bold",
                      ),
                      const SizedBox(height: 20),

                      // Login Button
                      SizedBox(
                        height: 48,
                        width: 295,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => BottomNavScreen(),
                              ),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFFE23744),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              UiHelper.CustomText(
                                text: "Login with",
                                color: const Color(0xFFFFFFFF),
                                fontweight: FontWeight.bold,
                                fontsize: 14,
                                fontfamily: "bold",
                              ),
                              const SizedBox(width: 5),
                              UiHelper.CustomImage(img: "image 9.png"),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 8),

                      // Info Text
                      UiHelper.CustomText(
                        text:
                        "Access your saved addresses from Zomato automatically!",
                        color: const Color(0xFF9C9C9C),
                        fontweight: FontWeight.normal,
                        fontsize: 10,
                      ),
                      const SizedBox(height: 15),

                      // Alternative Login Text
                      UiHelper.CustomText(
                        text: "or login with phone number",
                        color: const Color(0xFF269237),
                        fontweight: FontWeight.normal,
                        fontsize: 14,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}