import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

import 'account_lawyer.dart';

class AppointmentReservation extends StatefulWidget {
  const AppointmentReservation({Key? key}) : super(key: key);

  @override
  State<AppointmentReservation> createState() => _AppointmentReservationState();
}

class _AppointmentReservationState extends State<AppointmentReservation> {
  int selected = 0;

  void select(int index) {
    setState(() {
      selected = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Add Appointment"),
          actions: [
            IconButton(
              onPressed: () {},
              color: Colors.black87,
              icon: Icon(
                Icons.edit_outlined,
              ),
            ),
            IconButton(
                onPressed: () {},
                color: Colors.black87,
                icon: Icon(
                  Icons.delete_outline,
                )),
          ],
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: TableCalendar(
                calendarStyle: CalendarStyle(
                  todayDecoration: BoxDecoration(
                    color: Colors.green.shade700,
                    shape: BoxShape.circle,
                  ),
                  selectedDecoration: BoxDecoration(
                    color: Colors.green,
                    shape: BoxShape.circle,
                  ),
                  cellMargin: EdgeInsets.all(2),
                  selectedTextStyle: TextStyle(color: Colors.white),
                  todayTextStyle: TextStyle(color: Colors.white),
                ),
                rowHeight: 35,
                firstDay: DateTime.utc(2010, 10, 16),
                lastDay: DateTime.utc(2030, 3, 14),
                focusedDay: DateTime.now(),
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "AVAILABLE TIME",
                  style: Theme.of(context).textTheme.titleSmall,
                ),
              ),
            ),
            const SizedBox(height: 10),
            Expanded(
                child: Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
              child: GridView.builder(
                itemCount: 9,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  childAspectRatio: 3 / 1,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 30,
                ),
                itemBuilder: (context, index) {
                  return TextButton(
                    onPressed: () {
                      select(index);
                    },
                    child: Text(
                      // use index to create time from 9:00 to 5:00
                      "${(index + 8).toString().padLeft(2, "0")}:00",

                      style: index == selected
                          ? TextStyle(color: Colors.brown)
                          : TextStyle(color: Colors.green.shade900),
                    ),
                    style: index == selected
                        ? TextButton.styleFrom(
                            elevation: 3,
                            shadowColor: Colors.black54,
                            backgroundColor: Colors.amber.shade300,
                            shape: StadiumBorder(),
                          )
                        : TextButton.styleFrom(
                            backgroundColor: Colors.white,
                            elevation: 3,
                            shadowColor: Colors.black54,
                            shape: StadiumBorder(),
                          ),
                  );
                },
              ),
            )),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {},
                child: Text("Add Appointment",
                    style: TextStyle(color: Colors.brown)),
                style: ButtonStyle(
                  backgroundColor: MaterialStateColor.resolveWith(
                      (states) => Colors.amber.shade400),
                  minimumSize:
                      MaterialStateProperty.all(Size(double.infinity, 50)),
                ),
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
        bottomNavigationBar: CustomBottomNav(
          index: 1,
        ),
      ),
    );
  }
}

class MyPainter extends CustomPainter {
  final double itemHeight;
  final double itemPadding;

  MyPainter({this.itemHeight = 56.0, this.itemPadding = 16.0});

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.black54
      ..strokeWidth = 1
      ..strokeCap = StrokeCap.round;

    double offset = itemPadding + itemHeight / 2 + 10;

    Offset startPoint = Offset(offset, 2);
    Offset endPoint = Offset(offset, size.height);

    canvas.drawLine(startPoint, endPoint, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
