import 'package:flutter/material.dart';
import 'login.dart';

class Signup extends StatefulWidget {
  final GlobalKey<FormState> formKey;
  final TextEditingController nameController;
  final TextEditingController email;
  final TextEditingController password;


  const Signup({Key? key, required this.formKey,
    required this.nameController,
    required this.email,
    required this.password})
      : super(key: key);

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Form(
          key: widget.formKey,
          child: Column(
            children: [
              SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Container(
                  height: 50,
                  width: 250,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 1.0,
                            color: Colors.grey,
                            offset: Offset(0.0, 0.0))
                      ]),
                  child: TextFormField(
                    controller: widget.nameController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter user name';
                      }
                      return null;
                    },
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        icon: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(
                            Icons.person,
                            size: 18,
                          ),
                        ),
                        hintText: "User name",
                        hintStyle: TextStyle(fontSize: 12)),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Container(
                  height: 50,
                  width: 250,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 1.0,
                            color: Colors.grey,
                            offset: Offset(0.0, 0.0))
                      ]),
                  child: TextFormField(
                    controller: widget.email,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter email';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        icon: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(
                            Icons.email,
                            size: 18,
                          ),
                        ),
                        hintText: "Email",
                        hintStyle: TextStyle(fontSize: 12)),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Container(
                  width: 250,
                  height: 50,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 1.8,
                          offset: Offset(0.0, 0.0),
                        )
                      ]),
                  child: TextFormField(
                  controller: widget.password,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter password';
                      }
                      return null;
                    },
                    obscureText: true,
                    obscuringCharacter: "*",
                    decoration: InputDecoration(
                        icon: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(
                            Icons.lock_outline_rounded,
                            size: 18,
                          ),
                        ),
                        border: InputBorder.none,
                        hintText: "Password",
                        hintStyle: TextStyle(fontSize: 12)),
                  ),
                ),
              ),
              SizedBox(
                height: 22,
              ),
              Text("by pressing submit your agree to "),
              Text("our"),
              SizedBox(
                height: 22,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
