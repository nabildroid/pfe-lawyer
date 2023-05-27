import 'package:dounia/pages/account_lawyer.dart';
import 'package:flutter/material.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("About Us"),
        ),
        body: Column(
          children: [
            SizedBox(height: 20),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SingleChildScrollView(
                  child: Text(
                      "At our law firm, we are committed to providing our clients with personalized and effective legal solutions. Our team of experienced attorneys has a deep understanding of the law and the legal system, and we work tirelessly to ensure that our clients' rights are protected and their goals are achieved. Whether you are facing a complex legal issue or simply need advice on a legal matter, we are here to help. We believe in building strong relationships with our clients, and we strive to be responsive, transparent, and accessible at all times. At our law firm, we are dedicated to delivering exceptional service and achieving the best possible outcomes for our clients.",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20,
                        height: 2,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87,
                      )),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
