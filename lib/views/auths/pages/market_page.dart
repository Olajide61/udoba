import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:udoba_test/views/widgets/colors.dart';

class MarketPage extends StatefulWidget {
  const MarketPage({Key? key}) : super(key: key);

  @override
  State<MarketPage> createState() => _MarketPageState();
}

class _MarketPageState extends State<MarketPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        actions: [
          Padding(
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
          'Market',
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
      body: Column(
        children: [
          Container(
            color: Colors.white,
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: TextField(
              maxLines: 1,
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.symmetric(horizontal: 16),
                filled: true,
                hintText: 'Search',
                hintStyle: TextStyle(
                  color: AppColors.grey,
                ),
                labelStyle: const TextStyle(color: Colors.black),
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(25),
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/whiteb.png'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 32, left: 16, right: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Hot deals',
                      style: GoogleFonts.inter(
                        textStyle: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w500,
                          color: AppColors.black,
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),
                    Row(
                      children: [
                        Column(
                          children: [
                            Container(
                              color: AppColors.lightgrey,
                              height: 110,
                              width: 110,
                            ),
                            Column(
                              children: [
                                Text(
                                  'Item #1 Name',
                                  style: GoogleFonts.inter(
                                    textStyle: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color: AppColors.black,
                                    ),
                                  ),
                                ),
                                Text(
                                  'Goes Here',
                                  style: GoogleFonts.inter(
                                    textStyle: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color: AppColors.black,
                                    ),
                                  ),
                                ),
                                Text(
                                  'Goes Here',
                                  style: GoogleFonts.inter(
                                    textStyle: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color: AppColors.black,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(width: 16),
                        Column(
                          children: [
                            Container(
                              color: AppColors.lightgrey,
                              height: 110,
                              width: 110,
                            ),
                            Column(
                              children: [
                                Text(
                                  'Item #1 Name',
                                  style: GoogleFonts.inter(
                                    textStyle: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color: AppColors.black,
                                    ),
                                  ),
                                ),
                                Text(
                                  'Goes Here',
                                  style: GoogleFonts.inter(
                                    textStyle: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color: AppColors.black,
                                    ),
                                  ),
                                ),
                                Text(
                                  'Goes Here',
                                  style: GoogleFonts.inter(
                                    textStyle: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color: AppColors.black,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(width: 16),
                        Column(
                          children: [
                            Container(
                              color: AppColors.lightgrey,
                              height: 110,
                              width: 110,
                            ),
                            Column(
                              children: [
                                Text(
                                  'Item #1 Name',
                                  style: GoogleFonts.inter(
                                    textStyle: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color: AppColors.black,
                                    ),
                                  ),
                                ),
                                Text(
                                  'Goes Here',
                                  style: GoogleFonts.inter(
                                    textStyle: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color: AppColors.black,
                                    ),
                                  ),
                                ),
                                Text(
                                  'Goes Here',
                                  style: GoogleFonts.inter(
                                    textStyle: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color: AppColors.black,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 32),
                    Text(
                      'Trending',
                      style: GoogleFonts.inter(
                        textStyle: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w500,
                          color: AppColors.black,
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),
                    Row(
                      children: [
                        Column(
                          children: [
                            Container(
                              color: AppColors.lightgrey,
                              height: 110,
                              width: 110,
                            ),
                            Column(
                              children: [
                                Text(
                                  'Item #1 Name',
                                  style: GoogleFonts.inter(
                                    textStyle: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color: AppColors.black,
                                    ),
                                  ),
                                ),
                                Text(
                                  'Goes Here',
                                  style: GoogleFonts.inter(
                                    textStyle: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color: AppColors.black,
                                    ),
                                  ),
                                ),
                                Text(
                                  'Goes Here',
                                  style: GoogleFonts.inter(
                                    textStyle: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color: AppColors.black,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(width: 16),
                        Column(
                          children: [
                            Container(
                              color: AppColors.lightgrey,
                              height: 110,
                              width: 110,
                            ),
                            Column(
                              children: [
                                Text(
                                  'Item #1 Name',
                                  style: GoogleFonts.inter(
                                    textStyle: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color: AppColors.black,
                                    ),
                                  ),
                                ),
                                Text(
                                  'Goes Here',
                                  style: GoogleFonts.inter(
                                    textStyle: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color: AppColors.black,
                                    ),
                                  ),
                                ),
                                Text(
                                  'Goes Here',
                                  style: GoogleFonts.inter(
                                    textStyle: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color: AppColors.black,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(width: 16),
                        Column(
                          children: [
                            Container(
                              color: AppColors.lightgrey,
                              height: 110,
                              width: 110,
                            ),
                            Column(
                              children: [
                                Text(
                                  'Item #1 Name',
                                  style: GoogleFonts.inter(
                                    textStyle: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color: AppColors.black,
                                    ),
                                  ),
                                ),
                                Text(
                                  'Goes Here',
                                  style: GoogleFonts.inter(
                                    textStyle: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color: AppColors.black,
                                    ),
                                  ),
                                ),
                                Text(
                                  'Goes Here',
                                  style: GoogleFonts.inter(
                                    textStyle: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color: AppColors.black,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
