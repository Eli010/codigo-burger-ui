import 'package:codigo6_hamburguesa/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                  "https://images.pexels.com/photos/1199957/pexels-photo-1199957.jpeg?auto=compress&cs=tinysrgb&w=600",
                ),
              ),
            ),
          ),
          Container(
            color: Colors.black12,
            width: double.infinity,
          ),
          SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  // mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 15,
                      height: 15,
                      margin: const EdgeInsets.only(left: 80, top: 10),
                      child: Image.network(
                        "https://www.nicepng.com/png/full/111-1110654_crown-icon-wedding-photography.png",
                      ),
                    ),
                    Text(
                      textAlign: TextAlign.start,
                      "  BURGER",
                      style: GoogleFonts.rowdies(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      textAlign: TextAlign.start,
                      "QUEEN",
                      style: GoogleFonts.rowdies(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    // mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        "Good Food",
                        style: GoogleFonts.rowdies(
                          decoration: TextDecoration.underline,
                          decorationColor: const Color(0xffFF8D07),
                          color: Colors.white,
                          fontSize: 37,
                          decorationThickness: 2,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "Tasty Food*",
                        style: GoogleFonts.rowdies(
                          decoration: TextDecoration.underline,
                          decorationColor: const Color(0xffFF8D07),
                          color: Colors.white,
                          fontSize: 37,
                          decorationThickness: 2,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 20, bottom: 5),
                        width: double.infinity,
                        decoration: BoxDecoration(
                          // color: Colors.red,
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xffFF8D07),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16),
                            ),
                            padding: const EdgeInsets.symmetric(vertical: 13),
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => HomePage(),
                              ),
                            );
                          },
                          child: const Text(
                            "Sign in",
                            style: TextStyle(
                              // fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 17,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(bottom: 30),
                        padding: const EdgeInsets.all(10),
                        child: Center(
                          child: RichText(
                            text: TextSpan(
                              text: 'Don`t have an account?  ',
                              style: const TextStyle(
                                color: Color(0xffBCBFC4),
                              ),
                              children: <TextSpan>[
                                TextSpan(
                                  onEnter: (event) {
                                    debugPrint("Sign In :::::");
                                  },
                                  text: 'Sign up',
                                  style: const TextStyle(
                                    decoration: TextDecoration.underline,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white,
                                    fontSize: 15,
                                  ),
                                  // navigate to desired screen
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
