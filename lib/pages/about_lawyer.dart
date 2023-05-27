import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AboutLawyer extends StatelessWidget {
  const AboutLawyer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text("about Lawyer"),
        elevation: 0,
        backgroundColor: Colors.green.shade700,
      ),
      extendBodyBehindAppBar: true,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.3,
              child: Stack(
                fit: StackFit.expand,
                children: [
                  FractionallySizedBox(
                    widthFactor: 1,
                    heightFactor: .8,
                    alignment: Alignment.topCenter,
                    child: ColoredBox(
                      color: Colors.green.shade700,
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: FractionallySizedBox(
                      widthFactor: .8,
                      alignment: Alignment.center,
                      child: Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: Colors.black)),
                          padding: const EdgeInsets.all(10),
                          child: Row(
                            children: [
                              CircleAvatar(
                                radius: 40,
                                backgroundColor: Colors.green.shade700,
                                backgroundImage: NetworkImage(
                                    "https://laknabil.me/nabil.png"),
                              ),
                              const SizedBox(width: 10),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Text(
                                      "Mohamed Amin",
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleLarge,
                                    ),
                                    const SizedBox(height: 4),
                                    // make button with black borders background amber and text black and fully rounded
                                    ElevatedButton(
                                      onPressed: () {},
                                      child: Text(
                                        "Contact me",
                                        style: TextStyle(
                                          color: Colors.black,
                                        ),
                                      ),
                                      style: ElevatedButton.styleFrom(
                                        elevation: 0,
                                        backgroundColor: Colors.amber,
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(30),
                                            side: BorderSide(
                                                color: Colors.black)),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          )),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),
            Text(
              "Biography",
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: 20),
            Label(
              text: "Lieu School",
            ),
            ListTile(
              leading: Icon(Icons.apartment),
              title: Text("University mohamed khider"),
              subtitle: Text("chetma,Biskra,Algerie"),
              
            ),
            const SizedBox(height: 10),
            Label(
              text: "Education",
            ),
            ListTile(
              leading: Icon(Icons.school),
              title: Text("Law department, khider univ"),
              
            ),
            const SizedBox(height: 30),
            Label(
              text: "Schedule",
            ),
            Timeline(),
            const SizedBox(height: 30),
            ListTile(
              visualDensity: VisualDensity.compact,
              leading: Icon(Icons.location_on_outlined),
              title: Text("Biskra"),
              
              style: ListTileStyle.drawer,
            ),
            ListTile(
              visualDensity: VisualDensity.compact,
              leading: Icon(Icons.work_outline_outlined),
              title: Text("8+ Years of experience"),
              style: ListTileStyle.drawer,
            ),
            ListTile(
              visualDensity: VisualDensity.compact,
              leading: Icon(Icons.message_outlined),
              title: Text("Arabic, french, English"),
              style: ListTileStyle.drawer,
            )
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomNav(),
    ));
  }
}

class CustomBottomNav extends StatelessWidget {
  const CustomBottomNav({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      onTap: (index) {
        final next = [
          "home",
          "appointment",
          "contact",
          "tasks",
          "account_lawyer"
        ].elementAt(index);

        context.push(next);
      },
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: "Home",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.timeline_rounded),
          label: "appointment",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.contacts_outlined),
          label: "contact",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.task_outlined),
          label: "Tasks",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.account_circle_rounded),
          label: "account",
        ),
      ],
    );
  }
}

class Timeline extends StatelessWidget {
  const Timeline({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: ColoredBox(
              color: Colors.grey.shade300,
              child: SizedBox(
                width: double.infinity,
                height: 2,
              ),
            ),
          ),
          _dot(-.8, "2005", Colors.blueAccent),
          _dot(-.4, "2010", Colors.pinkAccent),
          _dot(-.2, "2013", Colors.amberAccent),
          _dot(.6, "2023", Colors.greenAccent),
        ],
      ),
    );
  }

  Align _dot(double x, String text, Color color) {
    return Align(
        alignment: Alignment(x, 4),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CircleAvatar(
              radius: 10,
              backgroundColor: color,
            ),
            Text(text),
          ],
        ));
  }
}

class Label extends StatelessWidget {
  final String text;
  const Label({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text(
          text,
          style: Theme.of(context).textTheme.labelLarge!.copyWith(
                color: Colors.grey.shade600,
              ),
        ),
      ),
    );
  }
}

class Stats extends StatelessWidget {
  const Stats({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.amber.shade100,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            children: [
              Text(
                "Employee",
                style: Theme.of(context).textTheme.labelMedium,
              ),
              const SizedBox(height: 4),
              Text(
                "10",
                style: Theme.of(context).textTheme.headlineMedium,
              ),
            ],
          ),
          Column(
            children: [
              Text(
                "Client",
                style: Theme.of(context).textTheme.labelMedium,
              ),
              const SizedBox(height: 4),
              Text(
                "100",
                style: Theme.of(context).textTheme.headlineMedium,
              ),
            ],
          ),
          Column(
            children: [
              Text(
                "Case",
                style: Theme.of(context).textTheme.labelMedium,
              ),
              const SizedBox(height: 4),
              Text(
                "50",
                style: Theme.of(context).textTheme.headlineMedium,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
