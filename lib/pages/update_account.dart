import 'package:flutter/material.dart';

class UpdateAccount extends StatelessWidget {
  const UpdateAccount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text("Update Account"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: SizedBox(
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 20),
                CircleAvatar(
                  radius: 50,
                  backgroundImage:
                      NetworkImage("https://laknabil.me/nabil.png"),
                ),
                const SizedBox(height: 40),
                Card(
                  color: Colors.green.shade100,
                  child: ListTile(
                    leading: Icon(Icons.person),
                    title: Text("mohamed_am"),
                    trailing: Icon(Icons.edit),
                  ),
                ),
                SizedBox(height: 10),
                Card(
                  color: Colors.green.shade100,
                  child: ListTile(
                    leading: Icon(Icons.person),
                    title: Text("Mohamed"),
                    trailing: Icon(Icons.edit),
                  ),
                ),
                SizedBox(height: 10),
                Card(
                  color: Colors.green.shade100,
                  child: ListTile(
                    leading: Icon(Icons.person),
                    title: Text("Amin"),
                    trailing: Icon(Icons.edit),
                  ),
                ),
                SizedBox(height: 10),
                Card(
                  color: Colors.green.shade100,
                  child: ListTile(
                    leading: Icon(Icons.email),
                    title: Text("hello@gmail.com"),
                    trailing: Icon(Icons.edit),
                  ),
                ),
                SizedBox(height: 10),
                Card(
                  color: Colors.green.shade100,
                  child: ListTile(
                    leading: Icon(Icons.phone),
                    title: Text("0645804760"),
                    trailing: Icon(Icons.edit),
                  ),
                ),
                SizedBox(height: 10),
                Card(
                  color: Colors.green.shade100,
                  child: ListTile(
                    leading: Icon(Icons.password),
                    title: Text("*********"),
                    trailing: Icon(Icons.edit),
                  ),
                ),
                SizedBox(height: 10),
                Card(
                  color: Colors.green.shade100,
                  child: ListTile(
                    leading: Icon(Icons.celebration),
                    title: Text("25/02/1982"),
                    trailing: Icon(Icons.edit),
                  ),
                ),
                SizedBox(height: 10),
                Card(
                  color: Colors.green.shade100,
                  child: ListTile(
                    leading: Icon(Icons.location_on_rounded),
                    title: Text("soho 94 Biskra "),
                    trailing: Icon(Icons.edit),
                  ),
                ),
                SizedBox(height: 30),

                // full width ElevatedButton
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text("Update"),
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Colors.green.shade700),
                      padding: MaterialStateProperty.all(EdgeInsets.all(20)),
                    ),
                  ),
                ),
              ],
            ),
          ),
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
