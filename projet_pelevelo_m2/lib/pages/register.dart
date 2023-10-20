// ignore_for_file: library_private_types_in_public_api
import 'package:flutter/material.dart';
import 'package:projet_pelevelo_m2/pages/login.dart';

class RegisterPage extends StatefulWidget {
 const RegisterPage({super.key});

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {

  bool obscurePassword = true;                          // variable linked to the button to hide or not the password
  bool obscurePassword2 = true;                         // variable linked to the button to hide or not the second password
  final firstnameController = TextEditingController();  // variable which collect the value entered by the user in the first name TextField 
  final lastnameController = TextEditingController();   // variable which collect the value entered by the user in the last name TextField 
  final emailController = TextEditingController();      // variable which collect the value entered by the user in the email TextField 
  final passwordController = TextEditingController();   // variable which collect the value entered by the user in the password TextField 
  final password2Controller = TextEditingController();  // variable which collect the value entered by the user in the confirmation password TextField
  bool isTextFieldEmpty = true;                         // variable to know if text has been written or not in the first name TextField
  bool isTextFieldEmpty1 = true;                        // variable to know if text has been written or not in the last name TextField
  bool isTextFieldEmpty2 = true;                        // variable to know if text has been written or not in the email TextField
  bool isChecked = false;                               // variable linked to the checkbox state

  @override
  Widget build(BuildContext context) {
     return Scaffold(
      backgroundColor: const Color(0xFFFAFAFA),
      body: SafeArea(

        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Title of the Page
              const Text(
                'Inscription',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Color(0xFF2F3534),
                    fontSize: 16,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                    height: 0,
                    letterSpacing: 1,
                ),
              ),
              
              const SizedBox(height: 20),
              
              Row(
                children: <Widget>[
                  const SizedBox(width: 22),
                  const Expanded(
                    child: 
                      Text(
                        'Prénom',
                        style: TextStyle(
                            color: Color(0xFF303535),
                            fontSize: 16,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                            height: 0,
                        ),
                      )
                  ),
                  SizedBox(width: MediaQuery.of(context).size.width * 0.03),
                  const Expanded(
                    child: 
                      Text(
                        'Nom',
                        style: TextStyle(
                          color: Color(0xFF303535),
                          fontSize: 16,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                          height: 0,
                        ),
                      ),
                  ),
                ],
              ),

              const SizedBox(height: 8),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  const SizedBox(width: 20),
                  Expanded(
                    child:
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.40,
                      height: 60,
                      child: TextField(
                        controller: firstnameController,
                        onChanged: (text) {
                          setState(() {
                            isTextFieldEmpty1 = text.isEmpty;
                          });
                        },
                        obscureText: false,
                        decoration: InputDecoration(
                        hintText: 'Jean',
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
                        suffixIcon: isTextFieldEmpty1
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
                      )
                    ),
                  ),
                  SizedBox(width: MediaQuery.of(context).size.width * 0.06),
                  Expanded(
                    child:                   
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.40,
                          height: 60,
                          child: TextField(
                            controller: lastnameController,
                            onChanged: (text) {
                              setState(() {
                                isTextFieldEmpty2 = text.isEmpty;
                              });
                            },
                            obscureText: false,
                            decoration: InputDecoration(
                              hintText: 'Dupont',
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
                              suffixIcon: isTextFieldEmpty2
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
                    //),
                  ),
                  const SizedBox(width: 22),
                ],
              ),

              const SizedBox(height: 15),

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

              const SizedBox(height: 8),

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

              const SizedBox(height: 15),

              // Password Text Field
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Mot de passe',
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

              const SizedBox(height: 8),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 22),
                child: 
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.94,
                  height: 60,
                  child: TextField(
                    controller: passwordController,
                    obscureText: obscurePassword,
                    decoration: InputDecoration(
                      hintText: '**********',
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
                        borderRadius: const BorderRadius.all(Radius.circular(10)),
                      ),
                      fillColor: const Color.fromARGB(200, 224, 228, 231),
                      filled: true,
                      suffixIcon: IconButton(
                        icon: Icon(
                          obscurePassword ? Icons.visibility : Icons.visibility_off,
                          color: Colors.grey,
                        ),
                        onPressed: () {
                          setState(() {
                            obscurePassword = !obscurePassword;
                          });
                        },
                      ),
                    ),
                  ),
                ),    
              ),  
              
              const SizedBox(height: 15),

              // Password Text Field
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Confirmation de mot de passe',
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

              const SizedBox(height: 8),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 22),
                child: 
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.94,
                  height: 60,
                  child: TextField(
                    controller: password2Controller,
                    obscureText: obscurePassword2,
                    decoration: InputDecoration(
                      hintText: '**********',
                      hintStyle: const TextStyle(
                        color: Color(0xFFA1A3B0),
                        fontSize: 14,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                        height: 0,
                      ),
                      enabledBorder: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: const BorderRadius.all(Radius.circular(10)),
                        borderSide: BorderSide(color: Colors.grey.shade400),
                      ),
                      fillColor: const Color.fromARGB(200, 224, 228, 231),
                      filled: true,
                      suffixIcon: IconButton(
                        icon: Icon(
                          obscurePassword2 ? Icons.visibility : Icons.visibility_off,
                          color: Colors.grey,
                        ),
                        onPressed: () {
                          setState(() {
                            obscurePassword2 = !obscurePassword2;
                          });
                        },
                      ),
                    ),
                  ),
                ),    
              ),  

              const SizedBox(height: 10),
              Row(
                children: 
                [           
                  // Checkbox linked to variable "isChecked"
                  Checkbox(
                    value: isChecked,
                    onChanged: (bool? value) {  // When checkbox is taped 
                    if (value != null) {
                      setState(() {
                        isChecked = value;
                      });
                    }
                    },
                    tristate: true,
                    activeColor: const Color(0xFF51ADD4),
                    checkColor: const Color.fromARGB(255, 255, 255, 255),
                    shape: const CircleBorder(), 
                  ),
                  const Text("Demander l'accès Admin", style: TextStyle(color: Color(0xFF303535), fontSize: 18, fontFamily: 'Poppins', fontWeight: FontWeight.w500, height: 0,)),
                ]
              ),  

              const SizedBox(height: 10),

              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF51ADD4),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24),
                  ),
                  fixedSize: Size(MediaQuery.of(context).size.width * 0.88, 46),
                ),
                // if pressed, we do the login function
                onPressed: () {
                  //register();
                },
                child: 
                  const Text(
                      'VALIDER',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w700,
                          height: 0,
                          letterSpacing: 1,
                      ),
                  )
              ),

              const SizedBox(height: 20),

              // not a member? register now
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Vous possédez déjà un compte ?',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                      height: 0,
                    ),
                  ),
                  TextButton(
                    // if pressed, we redirect user to the Register Page to create his account
                    onPressed: () { Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginPage()),); },
                    child: 
                    const Text('Se connecter',
                      style: TextStyle(
                        color: Color(0xFF52ADD4),
                        fontSize: 14,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w700,
                        height: 0,
                      ),
                    ),
                  ),
                ],
              ),

              // google & apple sign in buttons
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.center,
              //   children: [
              //     // google button
              //     SquareTile(   
              //       // if pressed, we do the "signInWithGoogle" function
              //       onTap: () async {
              //             await AuthService().signInWithGoogle();
              //             // after the "signInWithGoogle" is finished (without error), we redirect user to the Home Page
              //             Navigator.push(context, MaterialPageRoute(builder: (context) => MyAppState(selectedPageIndex: 0,)),);  
              //         },
              //       imagePath: 'assets/images/google.png' // Print Google Logo
              //     ),

              //     const SizedBox(width: 25),

              //     // apple button
              //     SquareTile(
              //       // if pressed, we do the "signInWithApple" function
              //       onTap: () => //Fluttertoast.showToast(
              //           //   msg: "Apple Authentification is not yet available",
              //           //   toastLength: Toast.LENGTH_SHORT,
              //           //   gravity: ToastGravity.TOP,
              //           //   timeInSecForIosWeb: 2,
              //           //   backgroundColor: Colors.orange,
              //           //   textColor: Colors.white,
              //           //   fontSize: 16.0,
              //           // ),
              //           signInWithApple(),
              //       imagePath: 'assets/images/apple.png'  // Print Apple Logo
              //     )
              //   ],
              // ),
            ],
          ),
        ),
      ),
    );
  }

}