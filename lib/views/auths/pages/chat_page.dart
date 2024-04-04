import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:udoba_test/views/auths/chat_textfield.dart';
import 'package:udoba_test/views/auths/foot_layout.dart';
import 'package:udoba_test/views/auths/local_storage.dart';
import 'package:udoba_test/model/message_model.dart';
import 'package:udoba_test/views/auths/pages/bubble_normal.dart';
import 'package:udoba_test/views/widgets/colors.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  TextEditingController textController = TextEditingController();
  ScrollController scrollController = ScrollController();
  StreamSubscription<bool>? keyboardStream;
  StreamSubscription? listStream;
  List<MessageModel> messageList = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FooterLayout(
        footer: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: ChatTextField(
              textController: textController,
              sendButtonColor: AppColors.primary,
              onSend: (a) {}),
        ),
        child: Stack(
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/whiteb.png'),
                    fit: BoxFit.fill),
              ),
              child: ListView.builder(
                itemCount: messageList.length,
                shrinkWrap: true,
                reverse: true,
                controller: scrollController,
                padding: EdgeInsets.zero,
                itemBuilder: (context, index) {
                  MessageModel msg = messageList[index];

                  bool fromMe = msg.fromUid == AppCache.getUser().id;

                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: RotatedBox(
                      quarterTurns: 2,
                      child: BubbleNormal(
                        text: msg.text!,
                        isSender: fromMe,
                        color: fromMe ? AppColors.primary : AppColors.lightgrey,
                        tail: true,
                        textStyle: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontStyle: FontStyle.normal,
                            fontSize: 16,
                            color: fromMe ? Colors.white : Colors.black),
                      ),
                    ),
                  );
                },
              ),
            ),
            AppBar(
              elevation: 0,
              leading: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(13),
                    child: Text(
                      'Back',
                      style: GoogleFonts.inter(
                          textStyle: TextStyle(
                              color: AppColors.primary,
                              fontSize: 14,
                              fontWeight: FontWeight.w400)),
                    ),
                  ),
                ],
              ),
              title: Padding(
                padding: const EdgeInsets.only(left: 61),
                child: Row(
                  children: [
                    Text(
                      'Messages',
                      style: GoogleFonts.inter(
                          textStyle: TextStyle(
                              color: AppColors.black,
                              fontSize: 30,
                              fontWeight: FontWeight.w600)),
                    ),
                    const Spacer(),
                    Text(
                      'Filter',
                      style: GoogleFonts.inter(
                          textStyle: TextStyle(
                              color: AppColors.primary,
                              fontSize: 14,
                              fontWeight: FontWeight.w400)),
                    ),
                  ],
                ),
              ),
              backgroundColor: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
