import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:udoba_test/views/auths/home.dart';
import 'package:udoba_test/views/widgets/colors.dart';
import 'package:udoba_test/views/widgets/customised_field.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool hideText = true;
  bool isChecked = false;
  TextEditingController passwordController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon: Image.asset(
            'assets/images/cancel.png',
            height: 16,
            width: 16,
          ),
        ),
        title: Padding(
          padding: const EdgeInsets.all(24),
          child: Text(
            'Log In',
            textAlign: TextAlign.center,
            style: GoogleFonts.inter(
              textStyle: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w600,
                  color: AppColors.black),
            ),
          ),
        ),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                'assets/images/whiteb.png',
              ),
              fit: BoxFit.cover),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 32, left: 16, right: 16),
          child: Column(
            children: [
              CustomisedField(
                hintText: 'Email',
                textInputType: TextInputType.text,
                textInputAction: TextInputAction.next,
                controller: emailController,
              ),
              const SizedBox(height: 20),
              CustomisedField(
                hintText: 'Password',
                suffixIcon: IconButton(
                  icon: Icon(
                    hideText ? Icons.visibility : Icons.visibility_off,
                    color: AppColors.primary,
                  ),
                  onPressed: () {
                    setState(() {
                      hideText = !hideText;
                    });
                  },
                ),
                obscureText: hideText, // Added obscureText parameter
                textInputType: TextInputType.text,
                textInputAction: TextInputAction.done, // Changed to done
                controller: passwordController,
              ),
              const SizedBox(height: 167),
              Column(
                children: [
                  SizedBox(
                    child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(AppColors.primary),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ))),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return const HomeScreen();
                            },
                          ),
                        );
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Log In',
                              style: GoogleFonts.inter(
                                textStyle: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    color: AppColors.white),
                              )),
                        ],
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Forgot your password?',
                    style: GoogleFonts.inter(
                      textStyle: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: AppColors.primary),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
