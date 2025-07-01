

import 'package:flutter/material.dart';

class Addmusic extends StatefulWidget {
  const Addmusic({super.key});

  @override
  State<Addmusic> createState() => _AddmusicState();
}

class _AddmusicState extends State<Addmusic> {

  final _formKey = GlobalKey<FormState>();
  String _title = '';
  String _artist= '';
  int _duration = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink[100],
        centerTitle: true,
        title: const Text(
          'Snuzic',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ),
      body: Container(
        margin: EdgeInsets.all(20),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              const Text(
                'Add Music',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Title',
                  hintText: 'Ex. Multo',
                  hintStyle: TextStyle(
                      fontStyle: FontStyle.italic,
                  ),
                  labelStyle: TextStyle(color: Colors.pink),
                  border: OutlineInputBorder(),
                  focusedBorder:  OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.pink),
                ),
              ),
                  validator: (value){
                    if(value == null || value.isEmpty){
                      return 'Please add title';
        }
                    return null;

        },
              ),
              SizedBox(height: 15),
              TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Artist',
                    hintText: 'Ex. by Arthur Nery',
                    hintStyle: TextStyle(
                      fontStyle: FontStyle.italic,
                    ),
                    labelStyle: TextStyle(color: Colors.pink),
                    border: OutlineInputBorder(),
                    focusedBorder:  OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.pink),
                    ),
                  ),
                validator: (value){
                  if(value == null || value.isEmpty){
                    return 'Please add artist';
                  }
                  return null;

                },
              ),
              SizedBox(height: 15),
              TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Duration',
                    hintText: 'Ex. 5 mins',
                    hintStyle: TextStyle(
                      fontStyle: FontStyle.italic,
                    ),
                    labelStyle: TextStyle(color: Colors.pink),
                    border: OutlineInputBorder(),
                    focusedBorder:  OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.pink),
                    ),
                  ),
                validator: (value){
                  if(value == null || value.isEmpty){
                    return 'Please add duration';
                  }
                  return null;

                },
              ),
              SizedBox(height: (12)),
              SizedBox(
                width: double.infinity, // makes it as wide as possible
                child: FilledButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()){
                      print('The form is Validated');
                    }
                  },
                  style: FilledButton.styleFrom(
                    backgroundColor: Colors.pink,
                    padding: const EdgeInsets.symmetric(vertical: 16),
                  ),
                  child: const Text('Save'),
                ),
              ),


            ],
          ),
        ),
      ),
    );
  }
}
