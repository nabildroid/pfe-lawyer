import 'package:dounia/pages/account_lawyer.dart';
import 'package:flutter/material.dart';

class Notifications extends StatelessWidget {
  const Notifications({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text("Notifications"),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.delete_outline,
              color: Colors.black87,
            ),
          ),
        ],
      ),
      body: ListView.separated(
          padding: EdgeInsets.only(top: 20),
          itemBuilder: (ctx, i) => Noti(),
          separatorBuilder: (ctx, i) => Divider(),
          itemCount: 10),
      bottomNavigationBar: CustomBottomNav(),
    ));
  }
}

class Noti extends StatelessWidget {
  const Noti({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
      child: Row(
        children: [
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                  text: TextSpan(
                    style: TextStyle(color: Colors.black54, fontSize: 18),
                    children: [
                      TextSpan(
                          text: "Samir",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black)),
                      TextSpan(text: " sent you a message"),
                    ],
                  ),
                ),
                const SizedBox(height: 8),
                Row(
                  children: [
                    Icon(
                      Icons.timer_outlined,
                      color: Colors.black54,
                    ),
                    const SizedBox(width: 5),
                    Text("2 hours ago",
                        style: TextStyle(fontWeight: FontWeight.bold))
                  ],
                )
              ],
            ),
          ),
          CircleAvatar(
            radius: 20,
            backgroundColor: Colors.white,
            backgroundImage: NetworkImage("https://laknabil.me/nabil.png"),
          ),
        ],
      ),
    );
  }
}
