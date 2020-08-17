import 'package:flutter/material.dart';
import 'package:pictures_app/widget/image_input.dart';

class AddPlaceScreen extends StatefulWidget {
  static const routeName = "add-place-screen";
  AddPlaceScreen({Key key}) : super(key: key);

  @override
  _AddPlaceScreenState createState() => _AddPlaceScreenState();
}

class _AddPlaceScreenState extends State<AddPlaceScreen> {
  final _titleController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add a new place"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
              child: SingleChildScrollView(
                  child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                TextField(
                  decoration: InputDecoration(labelText: "Title"),
                  controller: _titleController,
                ),
                SizedBox(
                  height: 10,
                ),
                ImageInput(),
              ],
            ),
          ))),
          RaisedButton.icon(
            onPressed: () {},
            icon: Icon(Icons.add),
            label: Text("Add place"),
            elevation: 0,
            materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
            color: Theme.of(context).accentColor,
          ),
        ],
      ),
    );
  }
}
