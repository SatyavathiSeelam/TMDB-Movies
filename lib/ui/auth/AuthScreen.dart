import 'package:flutter/material.dart';
import 'package:tmdbmovies/ui/utils/AppColors.dart';
import 'package:tmdbmovies/ui/utils/Strings.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  var _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: AppColors.auth_bg_color,
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image(
                width: MediaQuery.of(context).size.width,
                image: AssetImage("assets/lock_image.png"),
              ),
              SizedBox(
                height: 16,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Text(
                  Strings.authentication,
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w400,
                      color: AppColors.text_color,
                      decoration: TextDecoration.none),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        TextFormField(
                          controller: emailController,
                          validator: (value){
                            if (value != null && value.isNotEmpty) {
                              return null;
                            }
                            return "Please enter email";
                          },
                          style: TextStyle(
                              decoration: TextDecoration.none,
                              fontWeight: FontWeight.w400,
                              color: AppColors.form_text_color),
                          decoration: InputDecoration(
                            hintText: "Enter email",
                            labelText: "Email",
                            suffixIcon: IconButton(
                              icon: Image(
                                image: AssetImage("assets/icon.png"),
                              ),
                              onPressed: () {
                                emailController.clear();
                              },
                            ),
                            enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: AppColors.text_color),
                                borderRadius: BorderRadius.circular(8)),
                            focusedBorder: OutlineInputBorder(
                                borderSide:
                                const BorderSide(color: Colors.lightBlue),
                                borderRadius: BorderRadius.circular(8)),
                            focusedErrorBorder: OutlineInputBorder(
                                borderSide:
                                const BorderSide(color: Colors.lightBlue),
                                borderRadius: BorderRadius.circular(8)),
                            errorBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: AppColors.text_color),
                                borderRadius: BorderRadius.circular(8)),
                          ),
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        TextFormField(
                          controller: passwordController,
                          validator: (value) {
                            if (value != null && value.isNotEmpty) {
                              return null;
                            }
                            return "Please enter password";
                          },
                          style: TextStyle(
                              decoration: TextDecoration.none,
                              fontWeight: FontWeight.w400,
                              color: AppColors.form_text_color),
                          obscureText: true,
                          decoration: InputDecoration(
                            hintText: "Enter password",
                            labelText: "Password",
                            suffixIcon: IconButton(
                              icon: Image(
                                image: AssetImage("assets/icon.png"),
                              ),
                              onPressed: () {
                                passwordController.clear();
                              },
                            ),
                            enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: AppColors.text_color),
                                borderRadius: BorderRadius.circular(8)),
                            errorBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: AppColors.text_color),
                                borderRadius: BorderRadius.circular(8)),
                            focusedErrorBorder: OutlineInputBorder(
                                borderSide:
                                const BorderSide(color: Colors.lightBlue),
                                borderRadius: BorderRadius.circular(8)),
                            focusedBorder: OutlineInputBorder(
                                borderSide:
                                    const BorderSide(color: Colors.lightBlue),
                                borderRadius: BorderRadius.circular(8)),
                          ),
                        ),
                        SizedBox(
                          height: 24,
                        ),
                        TextButton(
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(AppColors.auth_button_color) ,
                                shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(
                                        side: const BorderSide(
                                          width: 1,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(10)))),
                            onPressed: () {
                              authenticate();
                            },
                            child: const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Image(
                                      image:
                                          AssetImage("assets/mobile_icon.png")),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  Text(Strings.authenticate, style: TextStyle(color: AppColors.text_color, fontWeight: FontWeight.w500, fontSize: 14 ),),
                                ],
                              ),
                            )),
                        SizedBox(
                          height: 24,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 48.0),
                          child: const Text(Strings.note, textAlign: TextAlign.center ,style: TextStyle(color: AppColors.note_text_color, fontWeight: FontWeight.w500, fontSize: 12),),
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
  void authenticate(){
    if (_formKey.currentState != null && _formKey.currentState!.validate()) {
      print("move to next screen");
    }
  }
}
