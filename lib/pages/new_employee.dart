import 'package:dounia/pages/account_lawyer.dart';
import 'package:dounia/pages/login.dart';
import 'package:flutter/material.dart';

class NewEmpolyee extends StatelessWidget {
  const NewEmpolyee({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Theme.of(context).primaryColor,
        appBar: AppBar(
          backgroundColor: Theme.of(context).primaryColor,
          elevation: 1,
          shadowColor: Colors.white,
          title: Text(
            "New Employee",
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
        ),
        body: SizedBox(
          width: double.infinity,
          child: Column(
            children: [
              SizedBox(height: 20),
              CircleAvatar(
                radius: 50,
                backgroundColor: Colors.white30,
                child: Center(
                  child: IconButton(
                    icon: Icon(Icons.add_photo_alternate),
                    onPressed: () {},
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(height: 20),
              ConstrainedBox(
                constraints: BoxConstraints(maxHeight: 40),
                child: LoginInput(label: "First Name", icon: Icons.person),
              ),
              SizedBox(height: 4),
              ConstrainedBox(
                constraints: BoxConstraints(maxHeight: 40),
                child: LoginInput(label: "Last Name", icon: Icons.person),
              ),
              SizedBox(height: 4),
              ConstrainedBox(
                constraints: BoxConstraints(maxHeight: 40),
                child: LoginInput(label: "Email", icon: Icons.email),
              ),
              SizedBox(height: 4),
              ConstrainedBox(
                constraints: BoxConstraints(maxHeight: 40),
                child: LoginInput(label: "Phone", icon: Icons.phone),
              ),
              SizedBox(height: 4),
              ConstrainedBox(
                constraints: BoxConstraints(maxHeight: 40),
                child: LoginInput(
                    label: "Experiences", icon: Icons.timer_outlined),
              ),
              SizedBox(height: 4),
              ConstrainedBox(
                constraints: BoxConstraints(maxHeight: 40),
                child:
                    LoginInput(label: "Speciality", icon: Icons.work_outline),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  FilledButton(
                    onPressed: () {},
                    child: Text("Add"),
                  ),
                  OutlinedButton(
                    onPressed: () {},
                    child: Text(
                      "Clear",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        bottomNavigationBar: CustomBottomNav(),
      ),
    );
  }
}
