import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:udoba_test/views/auths/login_view.dart';
import '../widgets/colors.dart';
import '../widgets/customised_field.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool hideText = true;
  bool isChecked = false;
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        actions: [
          Title(
              color: Colors.black,
              child: Padding(
                padding: const EdgeInsets.only(top: 24, left: 24, right: 24),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return const LoginScreen();
                        },
                      ),
                    );
                  },
                  child: Text(
                    'Login',
                    style: GoogleFonts.inter(
                      textStyle: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: AppColors.primary),
                    ),
                  ),
                ),
              ))
        ],
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
        title: Text(
          'Sign Up',
          textAlign: TextAlign.center,
          style: GoogleFonts.inter(
            textStyle: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w600,
                color: AppColors.black),
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
          padding: const EdgeInsets.all(16),
          child: Padding(
            padding: const EdgeInsets.only(
              top: 32,
            ),
            child: Column(
              children: [
                CustomisedField(
                  hintText: 'Name',
                  textInputType: TextInputType.text,
                  textInputAction: TextInputAction.next,
                  controller: nameController,
                ),
                const SizedBox(height: 20),
                CustomisedField(
                  hintText: 'Email',
                  textInputType: TextInputType.text,
                  textInputAction: TextInputAction.next,
                  controller: emailController,
                ),
                const SizedBox(height: 20),
                CustomisedField(
                  hintText: 'Password',
                  suffixIcon: TextButton(
                    onPressed: () {
                      setState(() {
                        hideText = !hideText;
                      });
                    },
                    child: Text(
                      hideText ? 'Show' : 'Hide',
                      style: TextStyle(color: AppColors.primary),
                    ),
                  ),
                  obscureText: hideText,
                  textInputType: TextInputType.text,
                  textInputAction: TextInputAction.done,
                  controller: passwordController,
                ),
                const SizedBox(height: 32),
                Row(
                  children: [
                    Checkbox(
                      value: isChecked,
                      shape: const CircleBorder(),
                      activeColor: const Color(0xff74BDCB),
                      onChanged: (value) {
                        setState(() {
                          isChecked = value!;
                        });
                      },
                    ),
                    const SizedBox(
                      width: 0.5,
                    ),
                    Text(
                      'I would like to receive your newsletter and other\npromotional information.',
                      style: GoogleFonts.inter(
                        textStyle: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff667085)),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 43),
                Column(
                  children: [
                    SizedBox(
                      child: ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(AppColors.primary),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ))),
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Sign Up',
                              style: GoogleFonts.inter(
                                textStyle: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    color: AppColors.white),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
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
      ),
    );
  }
}
