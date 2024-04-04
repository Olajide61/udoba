import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:udoba_test/views/widgets/colors.dart';

class FeedPage extends StatefulWidget {
  const FeedPage({super.key});

  @override
  State<FeedPage> createState() => _FeedPageState();
}

class _FeedPageState extends State<FeedPage> {
  bool isChecked = false;
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Title(
            color: Colors.black,
            child: Padding(
              padding: const EdgeInsets.only(top: 24, left: 24, right: 24),
              child: InkWell(
                onTap: () {},
                child: Text(
                  'Filter',
                  style: GoogleFonts.inter(
                    textStyle: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: AppColors.primary,
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
        leading: Padding(
          padding: const EdgeInsets.only(top: 24, left: 16),
          child: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Text(
              'Back',
              style: GoogleFonts.inter(
                textStyle: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: AppColors.primary,
                ),
              ),
            ),
          ),
        ),
        title: Text(
          'Feed',
          textAlign: TextAlign.center,
          style: GoogleFonts.inter(
            textStyle: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w600,
              color: AppColors.black,
            ),
          ),
        ),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/whiteb.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 32, left: 16, right: 16),
          child: Column(
            children: [
              TextField(
                maxLines: 1,
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.symmetric(horizontal: 16),
                  filled: true,
                  hintText: 'Search',
                  hintStyle: TextStyle(
                    color: AppColors.grey,
                  ),
                  labelStyle: const TextStyle(color: Colors.black),
                  border: const OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.all(
                      Radius.circular(25),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                color: AppColors.lightgrey,
                                height: 50,
                                width: 50,
                              ),
                              const SizedBox(width: 16),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        'Header',
                                        style: GoogleFonts.inter(
                                            textStyle: TextStyle(
                                                color: AppColors.black,
                                                fontSize: 16,
                                                fontWeight: FontWeight.w600)),
                                      ),
                                      const SizedBox(
                                        width: 180,
                                      ),
                                      Text(
                                        '8m ago',
                                        style: GoogleFonts.inter(
                                            textStyle: TextStyle(
                                                color: AppColors.black,
                                                fontSize: 14,
                                                fontWeight: FontWeight.w400)),
                                      )
                                    ],
                                  ),
                                  Text(
                                    'He\'ll want to use your yacht, and I don\'t \nwant this thing smelling like fish.',
                                    style: GoogleFonts.inter(
                                        textStyle: TextStyle(
                                            color: AppColors.black,
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400)),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(height: 16),
                          Divider(),
                        ],
                      ),
                    );
                  },
                ),
              ),
              Container(
                height: 227,
                width: 343,
                color: AppColors.lightgrey,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
