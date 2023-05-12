import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:the_lms_try/lec_dashboard.dart';

class TimeTable extends StatefulWidget {
  const TimeTable({Key? key}) : super(key: key);

  @override
  State<TimeTable> createState() => _TimeTableState();
}

class _TimeTableState extends State<TimeTable> {
  FirebaseDatabase database = FirebaseDatabase.instance;

  late String date;
  late String time1;
  late String time2;
  late String time3;
  late String time4;
  late String module1;
  late String module2;
  late String module3;
  late String module4;
  var dateTEC = TextEditingController();
  var time1TEC = TextEditingController();
  var time2TEC = TextEditingController();
  var time3TEC = TextEditingController();
  var time4TEC = TextEditingController();
  var module1TEC = TextEditingController();
  var module2TEC = TextEditingController();
  var module3TEC = TextEditingController();
  var module4TEC = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            leading: IconButton(
              icon: Icon(
                Icons.arrow_back_ios_new_outlined,
                color: Colors.black,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => lec_dashboard()),
                );
              },
            ),
            title: Text(
              'Update Time Table',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            backgroundColor: Color(0xFFDBD6E5),
          ),
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: Row(
                    children: [
                      Expanded(
                        flex: 3,
                        child: TextField(
                          controller: dateTEC,
                          decoration: const InputDecoration(
                            hintText: 'Date',
                          ),
                          onChanged: (value) {
                            date = value;
                          },
                        ),
                      ),
                      const SizedBox(
                        width: 8.0,
                      ),
                      Expanded(
                        child: ElevatedButton(
                          child: const Text('Send'),
                          onPressed: () async {
                            DatabaseReference ref = FirebaseDatabase.instance
                                .ref('timetable/$date');
                            await ref.update({
                              'date': date,
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      Expanded(
                        flex: 3,
                        child: TextField(
                          controller: time1TEC,
                          decoration: const InputDecoration(
                            hintText: 'Time',
                          ),
                          onChanged: (value) {
                            time1 = value;
                          },
                        ),
                      ),
                      const SizedBox(
                        width: 8.0,
                      ),
                      Expanded(
                        flex: 3,
                        child: TextField(
                          controller: module1TEC,
                          decoration: const InputDecoration(
                            hintText: 'Module Name',
                          ),
                          onChanged: (value) {
                            module1 = value;
                          },
                        ),
                      ),
                      const SizedBox(
                        width: 8.0,
                      ),
                      Expanded(
                        flex: 2,
                        child: ElevatedButton(
                          child: const Text('Send'),
                          onPressed: () async {
                            DatabaseReference ref = FirebaseDatabase.instance
                                .ref('timetable/$date');
                            await ref.update({
                              'time1': time1,
                              'module1': module1,
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      Expanded(
                        flex: 3,
                        child: TextField(
                          controller: time2TEC,
                          decoration: const InputDecoration(
                            hintText: 'Time',
                          ),
                          onChanged: (value) {
                            time2 = value;
                          },
                        ),
                      ),
                      const SizedBox(
                        width: 8.0,
                      ),
                      Expanded(
                        flex: 3,
                        child: TextField(
                          controller: module2TEC,
                          decoration: const InputDecoration(
                            hintText: 'Module Name',
                          ),
                          onChanged: (value) {
                            module2 = value;
                          },
                        ),
                      ),
                      const SizedBox(
                        width: 8.0,
                      ),
                      Expanded(
                        flex: 2,
                        child: ElevatedButton(
                          child: const Text('Send'),
                          onPressed: () async {
                            DatabaseReference ref = FirebaseDatabase.instance
                                .ref('timetable/$date');
                            await ref.update({
                              'time2': time2,
                              'module2': module2,
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      Expanded(
                        flex: 3,
                        child: TextField(
                          controller: time3TEC,
                          decoration: const InputDecoration(
                            hintText: 'Time',
                          ),
                          onChanged: (value) {
                            time3 = value;
                          },
                        ),
                      ),
                      const SizedBox(
                        width: 8.0,
                      ),
                      Expanded(
                        flex: 3,
                        child: TextField(
                          controller: module3TEC,
                          decoration: const InputDecoration(
                            hintText: 'Module Name',
                          ),
                          onChanged: (value) {
                            module3 = value;
                          },
                        ),
                      ),
                      const SizedBox(
                        width: 8.0,
                      ),
                      Expanded(
                        flex: 2,
                        child: ElevatedButton(
                          child: const Text('Send'),
                          onPressed: () async {
                            DatabaseReference ref = FirebaseDatabase.instance
                                .ref('timetable/$date');
                            await ref.update({
                              'time3': time3,
                              'module3': module3,
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      Expanded(
                        flex: 3,
                        child: TextField(
                          controller: time4TEC,
                          decoration: const InputDecoration(
                            hintText: 'Time',
                          ),
                          onChanged: (value) {
                            time4 = value;
                          },
                        ),
                      ),
                      const SizedBox(
                        width: 8.0,
                      ),
                      Expanded(
                        flex: 3,
                        child: TextField(
                          controller: module4TEC,
                          decoration: const InputDecoration(
                            hintText: 'Module Name',
                          ),
                          onChanged: (value) {
                            module4 = value;
                          },
                        ),
                      ),
                      const SizedBox(
                        width: 8.0,
                      ),
                      Expanded(
                        flex: 2,
                        child: ElevatedButton(
                          child: const Text('Send'),
                          onPressed: () async {
                            DatabaseReference ref = FirebaseDatabase.instance
                                .ref('timetable/$date');
                            await ref.update({
                              'time4': time4,
                              'module4': module4,
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                ElevatedButton(
                  child: const Text('Clear'),
                  onPressed: () {
                    setState(() {
                      dateTEC.clear();
                      time1TEC.clear();
                      time2TEC.clear();
                      time3TEC.clear();
                      time4TEC.clear();
                      module1TEC.clear();
                      module2TEC.clear();
                      module3TEC.clear();
                      module4TEC.clear();
                    });
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
