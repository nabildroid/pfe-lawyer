import 'package:dounia/pages/account_lawyer.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Services extends StatelessWidget {
  const Services({Key? key}) : super(key: key);

  static List<String> serivces = [
    "Legal advice and counseling: we provide legal advice and counseling to clients on a wide range of legal matters, including business law, contract law, real estate law, intellectual property law, and employment law.",
    "Litigation and dispute resolution: we represent clients in litigation and other dispute resolution proceedings, such as arbitration and mediation.",
    "This includes representing clients in court, drafting and filing legal documents, and negotiating settlements.",
    "Transactional services: we assist clients in the negotiation and drafting of legal agreements, such as contracts, leases, and other business transactions.",
    "Regulatory compliance: we advise clients on compliance with applicable laws and regulations, including environmental, labor, and securities laws.",
    "Intellectual property services: we help clients protect their intellectual property rights, including trademarks, patents, and copyrights.",
    "Estate planning and administration: we assist clients in the creation of wills and trusts, and in the administration of estates.",
    "Immigration services: we assist clients with a range of immigration matters, including visas, green cards, and citizenship applications.",
    "Criminal defense: we defend clients in criminal cases, including white-collar crimes, drug offenses, and DUI charges.",
    "Family law: we provide legal services related to family law matters, such as divorce, child custody, and adoption.",
    "Alternative dispute resolution: we provide alternative dispute resolution services, such as mediation and arbitration, as an alternative to litigation."
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Services"),
        ),
        body: Column(
          children: [
            SizedBox(height: 20),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                // child is list view that contains listTiles, leading is circle and number (index) and title is long multi line text
                child: ListView.builder(
                  itemCount: serivces.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: ListTile(
                        leading: CircleAvatar(
                          child: Text("$index"),
                          backgroundColor: Colors.amber.shade600,
                          foregroundColor: Colors.green.shade900,
                        ),
                        title: Text(
                          serivces[index],
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
            SizedBox(height: 10),
            Text(
              "Do you Need a Lawyer?",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            FilledButton(
              onPressed: () {
                context.push("/contact_us");
              },
              child: Text("Conact Us"),
            ),
          ],
        ),
        bottomNavigationBar: CustomBottomNav(),
      ),
    );
  }
}
