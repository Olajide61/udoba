import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:udoba_test/views/widgets/colors.dart';

class PhotosView extends StatefulWidget {
  const PhotosView({super.key});

  @override
  State<PhotosView> createState() => _PhotosViewState();
}

class _PhotosViewState extends State<PhotosView> {
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
        child: Padding(
          padding: const EdgeInsets.only(top: 32, left: 16, right: 16),
          child: Column(
            children: [
              Expanded(
                child: ListView.builder(
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            color: AppColors.lightgrey,
                            height: 240,
                            width: 343,
                          ),
                          const SizedBox(width: 8),
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
                          const SizedBox(height: 8),
                          Text(
                            '8m ago',
                            style: GoogleFonts.inter(
                                textStyle: TextStyle(
                                    color: AppColors.grey,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400)),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
