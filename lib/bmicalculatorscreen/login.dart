import 'package:flutter/material.dart';

class LoginBmi extends StatefulWidget {
  final GlobalKey<FormState> formKey;


  const LoginBmi({Key? key,
    required this.formKey,

  }) : super(key: key);

  @override
  State<LoginBmi> createState() => _LoginState();
}

class _LoginState extends State<LoginBmi> {
  bool _ischecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: widget.formKey,
        child: Container(
          child: Column(
            children: [
              SizedBox(
                height: 40,
              ),
              Container(
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

                  validator: (value)
                  {
                    if (value == null || value.isEmpty) {
                      return 'Please enter email';
                    }
                    return null;
                  },
                  decoration: const InputDecoration(
                      border: InputBorder.none,
                      icon: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Icon(
                          Icons.email,
                          size: 18,
                        ),
                      ),
                      hintText: "Email",
                      hintStyle: TextStyle(fontSize: 12)),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
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
                  validator: (value)
                  {
                    if (value == null || value.isEmpty) {
                      return 'Please enter password';
                    }
                    return null;
                  },

                  obscureText: true,
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
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Transform.scale(
                    scale: 0.7,
                    child: Checkbox(
                        visualDensity: VisualDensity(horizontal: -4),
                        value: _ischecked,
                        onChanged: (value) {
                          setState(() {
                            _ischecked = value!;
                          });
                        }),
                  ),
                  Text("Remembar me", style: TextStyle(fontSize: 12)),
                  Spacer(),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        "Forgot Password ?",
                        style: TextStyle(fontSize: 12, color: Colors.black),
                      ))
                ],
              ),
              SizedBox(
                height: 23,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
