import 'package:dounia/pages/account_lawyer.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Message extends StatelessWidget {
  const Message({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Message"),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.edit_outlined,
                color: Colors.black87,
              ),
            ),
          ],
        ),
        body: Column(
          children: [
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Search",
                  prefixIcon: Icon(Icons.search),
                  fillColor: Colors.grey.shade100,
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(
                      color: Colors.blue.shade100,
                      width: 2,
                      style: BorderStyle.solid,
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              // add tabBar with two tabs

              child: DefaultTabController(
                length: 2,
                child: Column(children: [
                  TabBar(
                    labelColor: Colors.black,
                    unselectedLabelColor: Colors.grey,
                    indicatorColor: Colors.green.shade700,
                    tabs: [
                      Tab(
                        text: "Chat",
                      ),
                      Tab(
                        text: "Requests",
                      ),
                    ],
                  ),
                  Expanded(
                      child: TabBarView(children: [
                    ListView.builder(
                        itemBuilder: (ctx, i) => ListTile(
                              onTap: () {
                                context.push("/chat");
                              },
                              leading: CircleAvatar(
                                radius: 20,
                                backgroundImage: NetworkImage(
                                    "https://laknabil.me/nabil.png"),
                              ),
                              title: Text("Lakrib Nabil"),
                              subtitle: Text("Hello, how are you?"),
                              trailing: Text("17:10"),
                            ),
                        itemCount: 10),
                    Center(
                      child: Text("Hello world"),
                    )
                    // add listview with 10 items
                  ]))
                ]),
              ),
            ),
          ],
        ),
        bottomNavigationBar: CustomBottomNav(),
      ),
    );
  }
}
