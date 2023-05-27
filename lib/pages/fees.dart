import 'package:dounia/pages/account_lawyer.dart';
import 'package:flutter/material.dart';

class Fees extends StatelessWidget {
  const Fees({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Fees"),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.create_new_folder_outlined,
                color: Colors.black87,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.edit_outlined,
                color: Colors.black87,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.delete_outline,
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
                    itemBuilder: (ctx, i) => Container(
                          margin:
                              EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                          decoration: BoxDecoration(
                            color: Colors.grey.shade200,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: ListTile(
                            leading: Icon(
                              Icons.folder_outlined,
                              color: Colors.green.shade800,
                            ),
                            title: Text("Facture $i"),
                          ),
                        ),
                    itemCount: 20)),
          ],
        ),
        bottomNavigationBar: CustomBottomNav(),
      ),
    );
  }
}
