import 'package:dounia/pages/account_lawyer.dart';
import 'package:flutter/material.dart';

class Tasks extends StatelessWidget {
  const Tasks({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("tasks"),
        ),
        body: Column(
          children: [
            SizedBox(height: 20),
            Expanded(
              child: GridView.count(
                  crossAxisCount: 2,
                  childAspectRatio: 1 / 1,
                  children: [
                    ...List.generate(
                      10,
                      (i) => i == 0
                          ? TextButton.icon(
                              onPressed: () {},
                              style: ButtonStyle(
                                foregroundColor: MaterialStateColor.resolveWith(
                                    (states) => Colors.green.shade800),
                              ),
                              icon: Icon(Icons.add),
                              label: Text(
                                "Add",
                              ),
                              // make it with dashed border
                            )
                          : Container(
                              margin: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                color: [
                                  Colors.grey.shade200,
                                  Colors.red.shade200,
                                  Colors.green.shade200,
                                  Colors.blue.shade200,
                                  Colors.yellow.shade200,
                                  Colors.purple.shade200,
                                  Colors.orange.shade200,
                                  Colors.pink.shade200,
                                  Colors.teal.shade200,
                                  Colors.brown.shade200
                                ][i % 10],
                                borderRadius: BorderRadius.circular(20),
                              ),
                              padding: EdgeInsets.all(2),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      IconButton(
                                        onPressed: () {},
                                        icon: Icon(
                                          Icons.edit,
                                          color: Colors.black54,
                                          size: 18,
                                        ),
                                      ),
                                      IconButton(
                                        onPressed: () {},
                                        icon: Icon(
                                          Icons.delete,
                                          color: Colors.black54,
                                          size: 18,
                                        ),
                                      )
                                    ],
                                  ),
                                  Expanded(
                                    child: Center(
                                      child: Text(
                                        "Task",
                                        style: Theme.of(context)
                                            .textTheme
                                            .titleLarge,
                                      ),
                                    ),
                                  ),
                                ],
                              )),
                    )
                  ]),
            )
          ],
        ),
        bottomNavigationBar: CustomBottomNav(
          index: 3,
        ),
      ),
    );
  }
}
