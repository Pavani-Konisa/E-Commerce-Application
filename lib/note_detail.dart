import 'package:flutter/material.dart';
import 'package:waste/note.dart';
import 'package:waste/database_helper.dart';
import 'package:intl/intl.dart';

class NoteDetail extends StatefulWidget {
  final String appBArTitle;
  final Note note;

  NoteDetail(this.note, this.appBArTitle);
  @override
  State<StatefulWidget> createState() {
    return NoteDetailState(this.note, this.appBArTitle);
  }
}

class NoteDetailState extends State<NoteDetail> {
  static var _priorities = [
    'Srikakulam',
    'Vijayanagaram',
    'Visakhapatnam',
    'East Godavari',
    'West Godavari',
    'Krishna',
    'Guntur',
    'Nellore',
    'Prakasam',
    'Kurnool',
    'Kadapa',
    'Anathpoor',
    'Chittor',
  ];

  DatabaseHelper helper = DatabaseHelper();

  String appBarTitle;
  Note note;

  TextEditingController titleController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();

  NoteDetailState(this.note, this.appBarTitle);

  @override
  Widget build(BuildContext context) {
    TextStyle textStyle = Theme.of(context).textTheme.title;

    titleController.text = note.title;
    descriptionController.text = note.description;

    return WillPopScope(
        onWillPop: () {
          moveToLastScreen();
        },
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Colors.white,
            title: Text(appBarTitle,
              style: TextStyle(fontFamily: 'JosefinSans',
              fontSize: 25,
              color: Colors.black,
            ),
            ),
            iconTheme: IconThemeData(color: Colors.black),
            leading: IconButton(
                icon: Icon(Icons.arrow_back),
                color: Colors.black,
                onPressed: () {
                  moveToLastScreen();
                }),
          ),
          body: Padding(
            padding: EdgeInsets.all(10.0),
            child: ListView(
              children: <Widget>[
                //first element
                ListTile(
                  title: DropdownButton(
                      items: _priorities.map((String dropDrownStringItem) {
                        return DropdownMenuItem<String>(
                          value: dropDrownStringItem,
                          child: Text(dropDrownStringItem),
                        );
                      }).toList(),
                      style: textStyle,
                      value: getPriorityAsString(note.priority),
                      onChanged: (valueSelectedByUser) {
                        setState(() {
                          debugPrint("user selected $valueSelectedByUser");
                          updatePriorityAsInt(valueSelectedByUser);
                        });
                      }),
                ),

                //second element

                Padding(
                  padding: EdgeInsets.all(15.0),
                  child: TextField(
                    controller: titleController,
                    style: textStyle,
                    onChanged: (value) {
                      debugPrint("something changed");
                      updateTitle();
                    },
                    decoration: InputDecoration(
                        labelText: 'Crop Name',

                        labelStyle: textStyle,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0))),
                  ),
                ),

                //third element

                Padding(
                  padding: EdgeInsets.all(15.0),
                  child: TextField(
                    controller: descriptionController,
                    style: textStyle,
                    onChanged: (vallue) {
                      debugPrint("something changed");
                      updateDescription();
                    },
                    decoration: InputDecoration(
                        labelText: 'Quantity',
                        labelStyle: textStyle,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0))),
                  ),
                ),

//fourth element

                Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: RaisedButton(
                            color: Colors.green,
                          child: Text(
                            'Save',
                            style: TextStyle(fontFamily: 'JosefinSans',
                              fontSize: 15,
                              color: Colors.black,
                            ),
                            textScaleFactor: 1.5,
                          ),
                          onPressed: () {
                            setState(() {
                              debugPrint("save button clicked");
                              _save();
                            });
                          },
                        ),
                      ),
                      Container(
                        width: 5.0,
                      ),
                      Expanded(
                        child: RaisedButton(
                        color: Colors.red,
                          child: Text(
                            'Delete',
                            style: TextStyle(fontFamily: 'JosefinSans',
                              fontSize: 15,
                              color: Colors.black,
                            ),
                            textScaleFactor: 1.5,
                          ),
                          onPressed: () {
                            setState(() {
                              debugPrint("Delete buton clicked");
                              _delete();
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }

  void moveToLastScreen() {
    Navigator.pop(context, true);
  }

//convert the string priority in the form of integer before saving it to Database
  void updatePriorityAsInt(String value) {
    switch (value) {
      case 'Srikakulam':
        note.priority = 1;
        break;
      case 'Vijayanagaram':
        note.priority = 2;
        break;
      case 'Visakhapatnam':
        note.priority = 3;
        break;
      case 'East Godavari':
        note.priority = 4;
        break;
      case 'West Godavari':
        note.priority = 5;
        break;
      case 'Krishna':
        note.priority = 6;
        break;
      case 'Guntur':
        note.priority = 7;
        break;
      case 'Nellore':
        note.priority = 8;
        break;
      case 'Prakasam':
        note.priority = 9;
        break;
      case 'Kurnool':
        note.priority = 10;
        break;
      case 'Kadapa':
        note.priority = 11;
        break;
      case 'Ananthpoor':
        note.priority = 12;
        break;
      case 'Chittor':
        note.priority = 13;
        break;
    }
  }

  //convert int priority to string priority and dispaly it to the user in dropdown
  String getPriorityAsString(int value) {
    String Priority;
    switch (value) {
      case 1:
        Priority = _priorities[0]; //low
        break;
      case 2:
        Priority = _priorities[1]; //low
        break;
      case 3:
        Priority = _priorities[2]; //low
        break;
      case 4:
        Priority = _priorities[3]; //low
        break;
      case 5:
        Priority = _priorities[4]; //low
        break;
      case 6:
        Priority = _priorities[5]; //low
        break;
      case 7:
        Priority = _priorities[6]; //low
        break;
      case 8:
        Priority = _priorities[7]; //low
        break;
      case 9:
        Priority = _priorities[8]; //low
        break;
      case 10:
        Priority = _priorities[9]; //low
        break;
      case 11:
        Priority = _priorities[10]; //low
        break;
      case 12:
        Priority = _priorities[11]; //low
        break;
      case 13:
        Priority = _priorities[12]; //low
        break;
    }
    return Priority;
  }

//update the title of note object
  void updateTitle() {
    note.title = titleController.text;
  }

//update the description of note object
  void updateDescription() {
    note.description = descriptionController.text;
  }

//save data to database
  void _save() async {
    moveToLastScreen();

    note.date = DateFormat.yMMMd().format(DateTime.now());
    int result;
    if (note.id != null) {
      //case 1: update operation
      result = await helper.updateNote(note);
    } else {
      // case 2: insert operation
      result = await helper.insertNote(note);
    }

    if (result != 0) {
      //success
      _showAlertDialog('Status', ' note saved successfully');
    } else {
      //failure
      _showAlertDialog('Status', 'problem saving note');
    }
  }

  void _delete() async {
    moveToLastScreen();

    if (note.id == null) {
      _showAlertDialog('Status', 'no note was deleted');
    } else {
      _showAlertDialog('Status', 'error occured while deleting note');
    }
  }

  void _showAlertDialog(String title, String message) {
    AlertDialog alertDialog = AlertDialog(
      title: Text(title),
      content: Text(message),
    );
    showDialog(context: context, builder: (_) => alertDialog);
  }
}