// ignore_for_file: library_private_types_in_public_api
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ResetPasswordPage extends StatefulWidget {
  const ResetPasswordPage({super.key});

  @override
  _ResetPasswordPageState createState() => _ResetPasswordPageState();
}

class _ResetPasswordPageState extends State<ResetPasswordPage> {



  // variable which collect the value entered by the user in the email TextField 
  final usernameController = TextEditingController();     
  final emailController = TextEditingController();    // variable which collect the value entered by the user in the email TextField 
  bool isTextFieldEmpty = true;                       // variable to know if text has been written or not in the email TextField

  // method to send password reset email
  // Future verify_email(context) async{
  //   try {
  //     await FirebaseAuth.instance
  //       .sendPasswordResetEmail(email: usernameController.text.trim());   // get and send the "reset password" email
  //     Fluttertoast.showToast(              // show a message to tell user that a "password reset" email is sending
  //       msg: "Password Reset Email Sent",
  //       toastLength: Toast.LENGTH_SHORT,
  //       gravity: ToastGravity.BOTTOM,
  //       timeInSecForIosWeb: 1,
  //       backgroundColor: Colors.green,
  //       textColor: Colors.white,
  //       fontSize: 16.0,
  //     );
  //     Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()),); // redirection on the Login Page
  //   } on FirebaseAuthException catch (e) {      // if an error appears, we want to print it 
  //     print(e);
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(                     // AppBar is the header of the page
        backgroundColor: const Color.fromARGB(200, 0, 126, 167),    // Background color of the header
        leading: IconButton(       // Arrow Back Button of the header which redirect user to the Login Page
          icon: const Icon(Icons.arrow_back, color: Color.fromARGB(255, 255, 255, 255)),
          onPressed: () => Navigator.of(context).pop(),   // Redirection to the Login Page
        ),
      ),
      
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),    // Background color of the body
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,  // Align center all the childs
            children: [
              // Body Title
              const Text(
                'Reset Password',
                style: TextStyle(
                  color: Color.fromARGB(200, 0, 126, 167),
                  fontSize: 34,
                  fontFamily: 'Quicksand-Regular',
                ),
              ),

              const SizedBox(height: 40),    
              // Email Text Field
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Votre adresse mail',
                      style: TextStyle(
                        color: Color(0xFF303535),
                        fontSize: 16,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                        height: 0,
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 15),

              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 22),
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.94,
                    height: 60,
                    child: TextField(
                      controller: emailController,
                      onChanged: (text) {
                        setState(() {
                          isTextFieldEmpty = text.isEmpty;
                        });
                      },
                      decoration: InputDecoration(
                        hintText: 'exemple@gmail.com',
                        hintStyle: const TextStyle(
                          color: Color(0xFFA1A3B0),
                          fontSize: 14,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                          height: 0,
                        ),
                        enabledBorder: const OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey.shade400),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        fillColor: const Color.fromARGB(200, 224, 228, 231),
                        filled: true,
                        suffixIcon: isTextFieldEmpty
                            ? null
                            : IconButton(
                                icon: const Icon(
                                  Icons.done,
                                  color: Colors.green,
                                ),
                                onPressed: () {
                                  // Handle icon button press
                                },
                            ),
                      ),
                    ),
                ),
              ),  

              const SizedBox(height: 40),
              // Reset Password Button
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF51ADD4),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24),
                  ),
                  fixedSize: Size(MediaQuery.of(context).size.width * 0.88, 46),
                ),
                onPressed: () {
                  // code to execute when the button is clicked
                  if(usernameController.text != "") {      // verify if email is not null
                    //verify_email(context);                 // using verify email function
                  }
                  else {                                   // if email is null, show a message to tell user to enter a valid email
                      Fluttertoast.showToast(
                        msg: "Please enter a valid email",
                        toastLength: Toast.LENGTH_SHORT,
                        gravity: ToastGravity.BOTTOM,
                        timeInSecForIosWeb: 1,
                        backgroundColor: Colors.red,
                        textColor: Colors.white,
                        fontSize: 16.0,
                    );
                  }
                },
                child: 
                const Text("Reset",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontFamily: 'Quicksand-Regular',
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}