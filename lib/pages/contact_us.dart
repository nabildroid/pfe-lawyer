import 'package:dounia/pages/account_lawyer.dart';
import 'package:dounia/pages/login.dart';
import 'package:flutter/material.dart';

class ContactUs extends StatelessWidget {
  const ContactUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).primaryColor,
          elevation: 1,
          title: Text("Contact US"),
        ),
        body: SingleChildScrollView(
          child: Column(children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.6,
              width: double.infinity,
              padding: EdgeInsets.only(bottom: 40, left: 20, right: 20),
              decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20))),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "Contact Us",
                      style: Theme.of(context)
                          .textTheme
                          .headlineLarge!
                          .copyWith(color: Colors.greenAccent.shade100),
                    ),
                    SizedBox(height: 40),
                    LoginInput(label: "Name", icon: Icons.person_outlined),
                    SizedBox(height: 10),
                    LoginInput(label: "Email", icon: Icons.email_outlined),
                    SizedBox(height: 10),
                    LoginInput(label: "Subject", icon: Icons.text_fields),
                  ],
                ),
              ),
            ),
            SizedBox(height: 40),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: ListTile(
                leading: Icon(Icons.phone_outlined),
                title: Text("Phone"),
                subtitle: Text("+213005162828"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: ListTile(
                leading: Icon(Icons.location_on_outlined),
                title: Text("Our main office"),
                subtitle: Text("SoHo 94 Broadway , NY 1001"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: ListTile(
                leading: Icon(Icons.email_outlined),
                title: Text("Email"),
                subtitle: Text("hello@gmail.com"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: ListTile(
                leading: Icon(Icons.fax),
                title: Text("Fax"),
                subtitle: Text("0333254050"),
              ),
            ),
          ]),
        ),
        bottomNavigationBar: CustomBottomNav(),
      ),
    );
  }
}
