import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'account_lawyer.dart';

class HomeLawyer extends StatelessWidget {
  const HomeLawyer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      drawer: CustomDrawer(),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black87),
        leading: Builder(builder: (context) {
          return IconButton(
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
            icon: Icon(Icons.menu),
          );
        }),
        title: Center(
          child: ConstrainedBox(
            constraints: BoxConstraints(maxHeight: 40),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Search",
                prefixIcon: Icon(Icons.search),
                filled: true,
                fillColor: Colors.grey.shade200,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              context.push("/notifications");
            },
            icon: Icon(Icons.notifications_outlined),
          ),
          IconButton(
            onPressed: () {
              context.push("/message");
            },
            icon: Icon(Icons.archive_outlined),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          SizedBox(height: 20),
          SectionHeader(
            label: "Client",
          ),
          SizedBox(height: 4),
          SizedBox(
            height: 100,
            child: ListView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (ctx, index) => Container(
                width: MediaQuery.of(context).size.width * .65,
                margin: EdgeInsets.only(right: 10),
                decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(12),
                ),
                padding: EdgeInsets.all(10),
                child: Row(
                  children: [
                    AspectRatio(
                      aspectRatio: 1,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.grey.shade300,
                          borderRadius: BorderRadius.circular(12),
                          image: DecorationImage(
                              image: NetworkImage(
                                  "https://laknabil.me/background.png"),
                              fit: BoxFit.cover),
                        ),
                      ),
                    ),
                    const SizedBox(width: 8),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text("Nabil",
                            style: Theme.of(context).textTheme.titleMedium),
                        const SizedBox(
                          height: 8,
                        ),
                        Text("Family lawyer\nTax lawyer",
                            style: Theme.of(context).textTheme.labelLarge),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
          SectionHeader(
            label: "",
          ),
          SizedBox(height: 4),
          SizedBox(
            height: 100,
            child: ListView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (ctx, index) => Container(
                margin: EdgeInsets.only(right: 10),
                child: Row(
                  children: [
                    AspectRatio(
                      aspectRatio: 1,
                      child: TextButton(
                        child: Text(
                          "Civil cases",
                          style: TextStyle(color: Colors.green.shade800),
                        ),
                        onPressed: () {},
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.grey.shade200),
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
          SectionHeader(
            label: "Documents",
          ),
          SizedBox(height: 4),
          SizedBox(
            height: 70,
            child: ListView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (ctx, index) => Container(
                width: MediaQuery.of(context).size.width * .65,
                margin: EdgeInsets.only(right: 10),
                decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(12),
                ),
                padding: EdgeInsets.all(10),
                child: Row(
                  children: [
                    AspectRatio(
                      aspectRatio: 1,
                      child: Center(
                        child: Icon(Icons.folder_outlined),
                      ),
                    ),
                    const SizedBox(width: 8),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Folder 1",
                            style: Theme.of(context).textTheme.labelLarge),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
          SectionHeader(
            label: "",
          ),
          SizedBox(height: 4),
          SizedBox(
            height: 100,
            child: ListView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (ctx, index) => Container(
                margin: EdgeInsets.only(right: 10),
                child: Row(
                  children: [
                    AspectRatio(
                      aspectRatio: 1,
                      child: TextButton(
                        child: Text(
                          "Civil cases",
                          style: TextStyle(color: Colors.green.shade800),
                        ),
                        onPressed: () {},
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.grey.shade200),
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
          SectionHeader(
            label: "Fees",
          ),
          SizedBox(height: 4),
          SizedBox(
            height: 70,
            child: ListView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (ctx, index) => Container(
                width: MediaQuery.of(context).size.width * .65,
                margin: EdgeInsets.only(right: 10),
                decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(12),
                ),
                padding: EdgeInsets.all(10),
                child: Row(
                  children: [
                    AspectRatio(
                      aspectRatio: 1,
                      child: Center(
                        child: Icon(Icons.folder_outlined),
                      ),
                    ),
                    const SizedBox(width: 8),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Folder 1",
                            style: Theme.of(context).textTheme.labelLarge),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
          SectionHeader(
            label: "Our Team",
          ),
          SizedBox(height: 4),
          SizedBox(
            height: 100,
            child: ListView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (ctx, index) => Container(
                width: MediaQuery.of(context).size.width * .65,
                margin: EdgeInsets.only(right: 10),
                decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(12),
                ),
                padding: EdgeInsets.all(10),
                child: Row(
                  children: [
                    AspectRatio(
                      aspectRatio: 1,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.grey.shade300,
                          borderRadius: BorderRadius.circular(12),
                          image: DecorationImage(
                              image:
                                  NetworkImage("https://laknabil.me/nabil.png"),
                              fit: BoxFit.cover),
                        ),
                      ),
                    ),
                    const SizedBox(width: 8),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text("Roopesh",
                            style: Theme.of(context).textTheme.titleMedium),
                        const SizedBox(
                          height: 8,
                        ),
                        Text("Tax Lawyer\nCyber Lawyer",
                            style: Theme.of(context).textTheme.labelLarge),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
        ]),
      ),
      bottomNavigationBar: CustomBottomNav(),
    ));
  }
}

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: Colors.green.shade800,
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 20),
            child: ListTile(
              title: Text(
                "Home",
                style: TextStyle(color: Colors.white, fontSize: 25),
              ),
              trailing: Builder(builder: (context) {
                return IconButton(
                    icon: Icon(
                      Icons.chevron_right,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      Scaffold.of(context).openEndDrawer();
                    });
              }),
              onTap: () {},
            ),
          ),
          DrawerHeader(
            margin: EdgeInsets.zero,
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundImage:
                      NetworkImage("https://laknabil.me/nabil.png"),
                ),
                SizedBox(width: 10),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Lawyer Name",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "@lawyer_name",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
                child: Column(
              children: [
                DrawerLink(
                  icon: Icons.other_houses_outlined,
                  label: "Home",
                ),
                DrawerLink(
                  icon: Icons.gavel,
                  label: "Law",
                  onTap: () {
                    context.push("/law");
                  },
                ),
                DrawerLink(
                  icon: Icons.folder_open_outlined,
                  label: "Documents",
                  onTap: () {
                    context.push("/documents");
                  },
                ),
                DrawerLink(
                  icon: Icons.work_outline_outlined,
                  label: "Cases",
                  onTap: () {
                    context.push("/case_types");
                  },
                ),
                DrawerLink(
                  icon: Icons.money,
                  label: "Fees",
                  onTap: () {
                    context.push("/fees");
                  },
                ),
                DrawerLink(
                  icon: Icons.task_outlined,
                  label: "Tasks",
                  onTap: () {
                    context.push("/tasks");
                  },
                ),
                DrawerLink(
                  icon: Icons.notifications_outlined,
                  label: "Notifications",
                  onTap: () {
                    context.push("/notifications");
                  },
                ),
                DrawerLink(
                  icon: Icons.timeline_outlined,
                  label: "Appointments",
                  onTap: () {
                    context.push("/appointment");
                  },
                ),
                DrawerLink(
                  icon: Icons.people_outline_outlined,
                  label: "Clients",
                  onTap: () {
                    context.push("/client");
                  },
                ),
                DrawerLink(
                  icon: Icons.groups_2_outlined,
                  label: "Employee",
                  onTap: () {
                    context.push("/employee");
                  },
                ),
                DrawerLink(
                  icon: Icons.people_outline_outlined,
                  label: "contact",
                  onTap: () {
                    context.push("/contact");
                  },
                ),
                DrawerLink(
                  icon: Icons.textsms_outlined,
                  label: "FQAs",
                ),
                DrawerLink(
                  icon: Icons.settings_outlined,
                  label: "Settings",
                ),
                DrawerLink(
                  icon: Icons.logout,
                  label: "Logout",
                ),
              ],
            )),
          )
        ],
      ),
    );
  }
}

class DrawerLink extends StatelessWidget {
  final String label;
  final IconData icon;
  final Function? onTap;
  const DrawerLink({
    super.key,
    required this.label,
    required this.icon,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        icon,
        color: Colors.white,
      ),
      title: Text(
        label,
        style: TextStyle(color: Colors.white),
      ),
      onTap: () {
        Scaffold.of(context).openEndDrawer();
        if (onTap != null) onTap!();
      },
    );
  }
}

class SectionHeader extends StatelessWidget {
  final String label;
  const SectionHeader({
    super.key,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 6),
      child: Row(
        children: [
          Text(
            label,
            style: Theme.of(context).textTheme.titleSmall!.copyWith(
                  color: Colors.grey.shade700,
                ),
          ),
          Spacer(),
          TextButton(
            onPressed: () {},
            child: Text(
              "View All",
              style: TextStyle(color: Colors.green.shade800),
            ),
          ),
        ],
      ),
    );
  }
}
