import 'package:flutter/material.dart';

class Chat extends StatelessWidget {
  const Chat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.green.shade700,
            title: Text(
              "Lakrib Nabil",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            centerTitle: true,
            actions: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: CircleAvatar(
                  radius: 18,
                  backgroundColor: Colors.white,
                  backgroundImage:
                      NetworkImage("https://laknabil.me/nabil.png"),
                ),
              )
            ],
          ),
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  ChatText(
                    isLeft: true,
                    text: "Hello there .",
                  ),
                  SizedBox(height: 5),
                  ChatText(
                    isLeft: true,
                    text:
                        "Greetings it shall be great to help you with your problem and to solve the same.",
                  ),
                  SizedBox(height: 30),
                  ChatText(
                    isLeft: false,
                    text: "Hey hi",
                  ),
                  SizedBox(height: 5),
                  ChatText(
                    isLeft: false,
                    text:
                        "Sure i shall start from the beginning and share all the documents. Do help me to solve my case.",
                  ),
                ],
              ),
            ),
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerFloat,
          floatingActionButton: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Row(
                children: [
                  Expanded(
                      child: TextField(
                    decoration: InputDecoration(
                      hintText: "Type a message",
                      border: InputBorder.none,
                      contentPadding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 1),
                    ),
                  )),
                  const SizedBox(width: 10),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.photo),
                    color: Colors.black54,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.send),
                    color: Colors.black54,
                  ),
                ],
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.amber.shade200,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade300,
                    offset: Offset(0, 3),
                    blurRadius: 3,
                  ),
                ],
              ),
            ),
          )),
    );
  }
}

class ChatText extends StatelessWidget {
  final bool isLeft;
  final String text;

  const ChatText({
    super.key,
    this.isLeft = false,
    this.text = "",
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: isLeft ? Alignment.topLeft : Alignment.topRight,
      child: ConstrainedBox(
        constraints: BoxConstraints(
          minWidth: 20,
          maxWidth: MediaQuery.of(context).size.width * 0.8,
        ),
        child: Container(
          decoration: BoxDecoration(
            color: isLeft ? Colors.green : Colors.grey.shade500,
            borderRadius: BorderRadius.circular(10),
          ),
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                text,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 4),
              Text(
                "12:00 PM",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 10,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
