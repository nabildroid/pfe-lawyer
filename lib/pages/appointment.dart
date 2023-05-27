import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:table_calendar/table_calendar.dart';

import 'account_lawyer.dart';

class Appointment extends StatelessWidget {
  const Appointment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text("Appointment"),
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
          Expanded(
              child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(.07),
                  blurRadius: 5,
                  spreadRadius: 3,
                  offset: Offset(0, -3),
                ),
              ],
            ),
            child: ShaderMask(
              shaderCallback: (rect) {
                return LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.center,
                  stops: [0.0, 0.1],
                  colors: [
                    Colors.transparent,
                    Colors.white,
                  ],
                ).createShader(
                  Rect.fromLTRB(0, 0, rect.width, rect.height),
                );
              },
              child: CustomPaint(
                painter: MyPainter(),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18),
                  child: ListView.builder(
                    padding: EdgeInsets.only(top: 20),
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return ListTile(
                        leading: CircleAvatar(
                          backgroundColor: Colors.green.shade700,
                          child: Icon(Icons.person),
                        ),
                        title: Text("rendez-vous avec Ahmed"),
                        trailing: Text("15:00"),
                      );
                    },
                  ),
                ),
              ),
            ),
          )),
        ],
      ),
      bottomNavigationBar: CustomBottomNav(
        index: 1,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.push("/appointment_reservation");
        },
        backgroundColor: Colors.green.shade700,
        child: Icon(Icons.add),
      ),
    ));
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
