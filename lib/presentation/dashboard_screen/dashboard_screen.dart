import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_task_manager/core/app_export.dart';
import 'package:flutter_task_manager/widgets/custom_icon_button.dart';
import 'package:flutter_task_manager/widgets/custom_text_form_field.dart';

class DashboardScreen extends StatefulWidget {
  DashboardScreen({Key? key}) : super(key: key);

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  final db = FirebaseFirestore.instance;

  late Stream<QuerySnapshot<Map<String, dynamic>>> taskStream;

  TextEditingController searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    taskStream = FirebaseFirestore.instance
        .collection("Tasks")
        .orderBy("date", descending: true)
        .snapshots();
  }

  Future<void> _addTask() async {
    String title = '';
    String details = '';

    await showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          backgroundColor: Colors.blueGrey,
          title: Text('Add New Task', style: TextStyle(color: Colors.blue)),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                decoration: InputDecoration(
                  labelText: 'Title',
                  filled: true,
                  fillColor: Colors.grey,
                  border: OutlineInputBorder(borderSide: BorderSide(color: Colors.blue)),
                ),
                onChanged: (value) => title = value,
              ),
              SizedBox(height: 20),
              TextField(
                decoration: InputDecoration(
                  
                  labelText: 'Details',
                  filled: true,
                  fillColor: Colors.grey,
                  border: OutlineInputBorder(borderSide: BorderSide(color: Colors.blue)),
                ),
                onChanged: (value) => details = value,
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Cancel', style: TextStyle(color: Colors.blue)),
            ),
            TextButton(
              onPressed: () async {
                if (title.isNotEmpty && details.isNotEmpty) {
                  await db.collection('Tasks').add({
                    'task_name': title,
                    'task_details': details,
                    'date': Timestamp.now(),
                  });
                  Navigator.of(context).pop();
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Please enter title and details.', style: TextStyle(color: Colors.blue)),
                      backgroundColor: Colors.white, // Set the background color of the snack bar
                    ),
                  );
                }
              },
              child: Text('Save', style: TextStyle(color: Colors.blue)),
            ),
          ],
        );
      },
    );
  }

  Future<void> _editTask(String taskId, String currentTitle, String currentDetails) async {
    String newTitle = currentTitle;
    String newDetails = currentDetails;

    await showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          backgroundColor: Colors.blueGrey,
          title: Text('Edit Task', style: TextStyle(color: Colors.blue)),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                decoration: InputDecoration(
                  labelText: 'Title',
                  filled: true,
                  fillColor: Colors.grey,
                  border: OutlineInputBorder(borderSide: BorderSide(color: Colors.blue)),
                ),
                onChanged: (value) => newTitle = value,
                controller: TextEditingController(text: currentTitle),
              ),
              SizedBox(height: 20),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Details',
                  filled: true,
                  fillColor: Colors.grey,
                  border: OutlineInputBorder(borderSide: BorderSide(color: Colors.blue)),
                ),
                onChanged: (value) => newDetails = value,
                controller: TextEditingController(text: currentDetails),
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Cancel', style: TextStyle(color: Colors.blue)),
            ),
            TextButton(
              onPressed: () async {
                if (newTitle.isNotEmpty && newDetails.isNotEmpty) {
                  await db.collection('Tasks').doc(taskId).update({
                    'task_name': newTitle,
                    'task_details': newDetails,
                  });
                  Navigator.of(context).pop();
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Please enter title and details.', style: TextStyle(color: Colors.blue)),
                      backgroundColor: Colors.white, // Set the background color of the snack bar
                    ),
                  );
                }
              },
              child: Text('Save', style: TextStyle(color: Colors.blue)),
            ),
          ],
        );
      },
    );
  }

  Future<void> _deleteTask(String taskId) async {
    await db.collection('Tasks').doc(taskId).delete();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text("Task Manager", style: TextStyle(fontSize: 24),),
      ),
      body: StreamBuilder<QuerySnapshot<Map<String, dynamic>>>(
        stream: taskStream,
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return Center(
              child: Text('Error: ${snapshot.error}', style: TextStyle(color: Colors.red)),
            );
          }

          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }

          final tasks = snapshot.data!.docs.map((doc) => doc.data()).toList();

          return ListView.builder(
            itemCount: tasks.length,
            itemBuilder: (context, index) {
              final task = tasks[index];

              return Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.blue,
                    ),
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * .15,
                    child: Column(
                      children: [
                        Container(
                          decoration: const BoxDecoration(
                            color: Colors.black26,
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(15),
                              bottomRight: Radius.circular(15),
                            ),
                          ),
                          width: MediaQuery.of(context).size.width,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("${task["task_name"]}", style: TextStyle(color: Colors.white)),
                                Row(
                                  children: [
                                    IconButton(
                                      onPressed: () async {
                                        await _editTask(
                                          snapshot.data!.docs[index].id,
                                          task["task_name"],
                                          task["task_details"],
                                        );
                                      },
                                      icon: Icon(Icons.edit, color: Colors.white),
                                    ),
                                    IconButton(
                                      onPressed: () async {
                                        await _deleteTask(snapshot.data!.docs[index].id);
                                      },
                                      icon: Icon(Icons.delete, color: Colors.white),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("${task["task_details"]}", style: TextStyle(color: Colors.white)),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _addTask,
        child: Icon(Icons.add),
      ),
    );
  }
}
