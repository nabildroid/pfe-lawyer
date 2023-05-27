import 'package:dounia/pages/account_lawyer.dart';
import 'package:flutter/material.dart';

class Team extends StatelessWidget {
  const Team({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Our Team"),
        ),
        body: SingleChildScrollView(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              const SizedBox(height: 20),
              ...List.generate(
                10,
                (index) => Container(
                  margin: EdgeInsets.only(bottom: 20),
                  padding: EdgeInsets.all(12),
                  height: 120,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.green.shade100.withOpacity(.3),
                        blurRadius: 8,
                        spreadRadius: 3,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Row(
                    children: [
                      AspectRatio(
                        aspectRatio: 1,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                              image:
                                  NetworkImage("https://laknabil.me/nabil.png"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 8),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Expanded(
                                  child: Text(
                                    "Samir bakhouch",
                                    style:
                                        Theme.of(context).textTheme.titleMedium,
                                    softWrap: true,
                                  ),
                                ),
                              ],
                            ),
                            Text(
                              "Doctor of criminal case",
                              style: Theme.of(context).textTheme.labelMedium,
                            ),
                            RichText(
                              text: TextSpan(
                                  text: "Exp: ",
                                  style: Theme.of(context)
                                      .textTheme
                                      .labelMedium!
                                      .copyWith(
                                        fontWeight: FontWeight.bold,
                                      ),
                                  children: [
                                    TextSpan(
                                      text: "+2 years",
                                      style: Theme.of(context)
                                          .textTheme
                                          .labelMedium,
                                    )
                                  ]),
                            ),
                            SizedBox(height: 8),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        )),
        bottomNavigationBar: CustomBottomNav(),
      ),
    );
  }
}
