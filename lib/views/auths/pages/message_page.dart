import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:udoba_test/views/auths/pages/chat_page.dart';
import 'package:udoba_test/views/widgets/colors.dart';

class MessagePage extends StatefulWidget {
  const MessagePage({super.key});

  @override
  State<MessagePage> createState() => _MessagePageState();
}

class _MessagePageState extends State<MessagePage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text(
              'CHATS',
              style: GoogleFonts.rubik(
                textStyle: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            backgroundColor: AppColors.primary,
            elevation: 1,
          ),
          body: ListView.builder(
            itemCount: 4,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return const ChatPage();
                      }));
                    },
                    child: Row(
                      children: [
                        const Padding(
                            padding: EdgeInsets.all(11),
                            child: CircleAvatar(
                              backgroundImage:
                                  AssetImage('assets/images/black.png'),
                              radius: 20,
                            )),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Victoria',
                              style: GoogleFonts.inter(
                                textStyle: const TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
