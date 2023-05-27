import 'package:dounia/pages/account_lawyer.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Contact extends StatelessWidget {
  const Contact({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Contact"),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.edit_outlined,
                color: Colors.black87,
              ),
            ),
            IconButton(
              onPressed: () {
                context.push("/new_contact");
              },
              icon: Icon(
                Icons.add_box_outlined,
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
            SizedBox(height: 20),
            Expanded(
                // add tabBar with two tabs

                child: ListView.builder(
                    itemBuilder: (ctx, i) => ListTile(
                          leading: CircleAvatar(
                            radius: 20,
                            backgroundImage:
                                NetworkImage("https://laknabil.me/nabil.png"),
                          ),
                          title: Text("Lakrib Nabil"),
                        ),
                    itemCount: 20)),
          ],
        ),
        bottomNavigationBar: CustomBottomNav(
          index: 2,
        ),
      ),
    );
  }
}
