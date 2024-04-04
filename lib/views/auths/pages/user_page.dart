import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:udoba_test/views/auths/pages/photos_view.dart';
import 'package:udoba_test/views/auths/pages/posts_view.dart';
import 'package:udoba_test/views/widgets/colors.dart';

class UserPage extends StatefulWidget {
  const UserPage({super.key});

  @override
  State<UserPage> createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
  int _currentPage = 0;
  final PageController _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Title(
            color: Colors.black,
            child: Padding(
              padding: const EdgeInsets.only(top: 24, left: 17, right: 16),
              child: InkWell(
                onTap: () {},
                child: Text(
                  'Logout',
                  style: GoogleFonts.inter(
                    textStyle: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: AppColors.white,
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
        elevation: 0,
        backgroundColor: AppColors.primary,
        centerTitle: true,
        leading: Padding(
          padding: const EdgeInsets.only(top: 24, left: 17, right: 16),
          child: Row(
            children: [
              Text(
                'Settings',
                style: GoogleFonts.inter(
                  textStyle: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: AppColors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
        title: Text(
          'Profile',
          textAlign: TextAlign.center,
          style: GoogleFonts.inter(
            textStyle: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w600,
              color: AppColors.white,
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
        child: Stack(
          children: [
            Column(
              children: [
                Container(
                  height: 245,
                  color: AppColors.primary,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 52, top: 16, right: 51),
                  child: Column(
                    children: [
                      Text(
                        'Victoria Robertson',
                        style: GoogleFonts.inter(
                          textStyle: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.w600,
                            color: AppColors.black,
                          ),
                        ),
                      ),
                      Text(
                        'A mantra goes here',
                        style: GoogleFonts.inter(
                          textStyle: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: AppColors.black,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 24),
                Container(
                  height: 50,
                  width: 343,
                  decoration: BoxDecoration(
                    border: Border.all(color: AppColors.gray),
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(6),
                        topRight: Radius.circular(6),
                        bottomLeft: Radius.circular(6),
                        bottomRight: Radius.circular(6)),
                    color: AppColors.lightgrey,
                  ),
                  child: Row(
                    children: [
                      InkWell(
                        onTap: () {
                          _controller.animateToPage(0,
                              duration: const Duration(milliseconds: 100),
                              curve: Curves.linear);
                        },
                        child: Container(
                          height: 46,
                          width: 170,
                          decoration: BoxDecoration(
                            color: _currentPage == 0
                                ? AppColors.white
                                : AppColors.lightgrey,
                            borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(6),
                                topRight: Radius.circular(6),
                                bottomLeft: Radius.circular(6),
                                bottomRight: Radius.circular(6)),
                          ),
                          child: Center(
                            child: Text(
                              'Posts',
                              style: GoogleFonts.openSans(
                                color: _currentPage == 0
                                    ? AppColors.primary
                                    : AppColors.grey,
                                textStyle: const TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      const Spacer(),
                      InkWell(
                        onTap: () {
                          _controller.animateToPage(1,
                              duration: const Duration(milliseconds: 100),
                              curve: Curves.linear);
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: _currentPage == 1
                                ? AppColors.white
                                : AppColors.lightgrey,
                            borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(6),
                                topRight: Radius.circular(6),
                                bottomLeft: Radius.circular(6),
                                bottomRight: Radius.circular(6)),
                          ),
                          height: 46,
                          width: 170,
                          child: Center(
                            child: Text(
                              'Photos',
                              style: GoogleFonts.openSans(
                                color: _currentPage == 1
                                    ? AppColors.primary
                                    : AppColors.grey,
                                textStyle: const TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: PageView(
                    controller: _controller,
                    onPageChanged: (a) {
                      _currentPage = a;
                      setState(() {});
                    },
                    children: const [
                      PostsView(),
                      PhotosView(),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
