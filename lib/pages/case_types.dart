import 'package:go_router/go_router.dart';

import 'package:dounia/pages/account_lawyer.dart';
import 'package:flutter/material.dart';

class CaseTypes extends StatelessWidget {
  const CaseTypes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Cases"),
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
              child: Text(
                "Types of Cases",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 20),
            // grid two colums with 1:1 ratio for container that contain center and text the container is rounded and grey
            Expanded(
              child: GridView.count(
                  crossAxisCount: 2,
                  childAspectRatio: 1 / 1,
                  children: [
                    ...List.generate(
                      10,
                      (i) => GestureDetector(
                        onTap: () {
                          context.push("/cases");
                        },
                        child: Container(
                          margin: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Colors.grey.shade200,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          padding: EdgeInsets.all(2),
                          child: Center(
                            child: Text(
                              "Civil cases",
                              softWrap: true,
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.green.shade900,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ),
                    )
                  ]),
            )
          ],
        ),
        bottomNavigationBar: CustomBottomNav(),
      ),
    );
  }
}
