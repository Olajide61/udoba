import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:udoba_test/views/widgets/colors.dart';

class PostsView extends StatefulWidget {
  const PostsView({super.key});

  @override
  State<PostsView> createState() => _PostsViewState();
}

class _PostsViewState extends State<PostsView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/whiteb.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
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
                                      width: 200,
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
                        const Divider(),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
