import 'package:flutter/material.dart';

class FlutterForm extends StatefulWidget {
  @override
  _FlutterFormState createState() => _FlutterFormState();
}

class _FlutterFormState extends State<FlutterForm> {
  String _name;
  String _email;
  String _password;
  String _phoneNumber;
  int _age;

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  Widget _buildName() {
    return TextFormField(
      decoration: InputDecoration(
        hintText: 'your name',
        labelText: 'name',
        border: OutlineInputBorder(),
      ),
      validator: (String value) {
        if (value.isEmpty) {
          return 'Enter a valid name';
        }

        return null;
      },
      onSaved: (String value) {
        _name = value;
      },
    );
  }

  Widget _buildEmail() {
    return TextFormField(
      decoration: InputDecoration(
        hintText: 'your email',
        labelText: 'Email',
        border: OutlineInputBorder(),
      ),
      validator: (String value) {
        if (value.isEmpty) {
          return 'Enter a valid name';
        }

        return null;
      },
      onSaved: (String value) {
        _email = value;
      },
    );
  }

  Widget _buildPassword() {
    return TextFormField(
      decoration: InputDecoration(
        hintText: 'your password',
        labelText: 'Password',
        border: OutlineInputBorder(),
      ),
      validator: (String value) {
        if (value.isEmpty) {
          return 'Enter a valid name';
        }

        return null;
      },
      onSaved: (String value) {
        _password = value;
      },
    );
  }

  Widget _buildPhoneNumber() {
    return TextFormField(
      decoration: InputDecoration(
        hintText: 'your number',
        labelText: 'Phone Number',
        border: OutlineInputBorder(),
      ),
      validator: (String value) {
        if (value.isEmpty) {
          return 'Enter a valid name';
        }

        return null;
      },
      onSaved: (String value) {
        _phoneNumber = value;
      },
    );
  }

  Widget _buildAge() {
    return TextFormField(
      decoration: InputDecoration(
        hintText: 'your age',
        labelText: 'Age',
        border: OutlineInputBorder(),
      ),
      validator: (String value) {
        if (value.isEmpty) {
          return 'Enter a valid age';
        }

        return null;
      },
      onSaved: (String value) {
        _name = value;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 50),
      child: Form(
        key: _formKey,
        child: Column(
          children: [
            _buildName(),
            SizedBox(height: 10),
            _buildEmail(),
            SizedBox(height: 10),
            _buildPassword(),
            SizedBox(height: 10),
            _buildPhoneNumber(),
            SizedBox(height: 10),
            _buildAge(),
            SizedBox(height: 20),
            Container(
              width: double.infinity,
              child: ElevatedButton.icon(
                onPressed: () {
                  if (!_formKey.currentState.validate()) {
                    return;
                  }

                  _formKey.currentState.save();

                  print(_name);
                },
                label: Text('Submit'),
                icon: Icon(Icons.save),
                style: ElevatedButton.styleFrom(
                  onPrimary: Colors.white,
                  primary: Colors.teal,
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  onSurface: Colors.grey, //for displead
                  // shape: RoundedRectangleBorder(
                  //   borderRadius: BorderRadius.circular(30),
                  // ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}