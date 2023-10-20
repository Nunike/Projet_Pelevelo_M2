// ignore_for_file: library_private_types_in_public_api
import 'package:flutter/material.dart';
//import 'package:fluttertoast/fluttertoast.dart';
import 'package:projet_pelevelo_m2/pages/register.dart';
import 'package:projet_pelevelo_m2/pages/forgot_password.dart';

class LoginPage extends StatefulWidget {
 const LoginPage({super.key});

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  bool obscurePassword = true;                        // variable linked to the button to hide or not the password
  final emailController = TextEditingController();    // variable which collect the value entered by the user in the email TextField 
  final passwordController = TextEditingController(); // variable which collect the value entered by the user in the password TextField 
  bool isTextFieldEmpty = true;                       // variable to know if text has been written or not in the email TextField

  // void login() async {    // Login function
  //   try {
  //     // Collect informations (mail and password) entered by the user
  //     await auth.signInWithEmailAndPassword(
  //       email: emailController.text,
  //       password: passwordController.text,
  //     );
      
  //     FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance; // define the variable 'firebaseFirestore' as a FirebaseFirestore instance
  //     await firebaseFirestore     // Update "last_seen" in Firestore database to "Connected" for the user connected
  //       .collection("users")
  //       .doc(auth.currentUser!.uid.toString())
  //       .update({"last_seen": "Connected"});     
  //     // Connection successfully, redirect user to the Home Page                    
  //     Navigator.push(context, MaterialPageRoute(builder: (context) => MyAppState(selectedPageIndex: 0,)),);
  //     // Show message to tell user that he is connected
  //     Fluttertoast.showToast(
  //       msg: "Connected",
  //       toastLength: Toast.LENGTH_SHORT,
  //       gravity: ToastGravity.TOP,
  //       timeInSecForIosWeb: 2,
  //       backgroundColor: Colors.green,
  //       textColor: Colors.white,
  //       fontSize: 16.0,
  //     );
  //   } on FirebaseAuthException catch (e) {    // if an error appears, we catch it to print it thanks to a toast
  //     if(e.code == 'user-not-found') {        // ERROR: User not found
  //       Fluttertoast.showToast(               // print error message
  //         msg: "User not found",
  //         toastLength: Toast.LENGTH_SHORT,
  //         gravity: ToastGravity.TOP,
  //         timeInSecForIosWeb: 2,
  //         backgroundColor: Colors.red,
  //         textColor: Colors.white,
  //         fontSize: 16.0,
  //       );
  //     }
  //     else if(e.code == 'wrong-password'){    // ERROR: Incorrect Password
  //       Fluttertoast.showToast(               // print error message
  //         msg: "Incorrect Password",  
  //         toastLength: Toast.LENGTH_SHORT,
  //         gravity: ToastGravity.TOP,
  //         timeInSecForIosWeb: 2,
  //         backgroundColor: Colors.red,
  //         textColor: Colors.white,
  //         fontSize: 16.0,
  //       );
  //     }
  //     else if(emailController.text == "" || passwordController.text == ""){   // if email = null and password too
  //         Fluttertoast.showToast(                                             // print error message
  //           msg: "Please enter your email and Password",
  //           toastLength: Toast.LENGTH_SHORT,
  //           gravity: ToastGravity.TOP,
  //           timeInSecForIosWeb: 2,
  //           backgroundColor: Colors.red,
  //           textColor: Colors.white,
  //           fontSize: 16.0,
  //       );
  //     }
  //   }
  // }

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
                'Connexion',
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
              
              const SizedBox(height: 30),
              
              // Container (
              //   padding: const EdgeInsets.all(16.0),
              //   //width: MediaQuery.of(context).size.width*0.8,
              //   child: const Column (
              //     children: <Widget>[
              //       Text(
              //         'Lorem ipsum dolor sit amet,\n\n',
              //         style: TextStyle(
              //           color: Color(0xFF2F3534),
              //           fontSize: 20,
              //           fontFamily: 'Poppins',
              //           fontWeight: FontWeight.w500,
              //           height: 0.07,
              //           letterSpacing: 1,
              //         ),    
              //       ),
              //       SizedBox(height: 15),
              //       Text(
              //         'consectetur adipiscing elit  sit \n',
              //         style: TextStyle(
              //           color: Color(0xFF2F3534),
              //           fontSize: 20,
              //           fontFamily: 'Poppins',
              //           fontWeight: FontWeight.w500,
              //           height: 0.07,
              //           letterSpacing: 1,
              //         ),    
              //       ),
              //       SizedBox(height: 15),
              //       Text(
              //         'consectetur adipiscing elit',
              //         style: TextStyle(
              //           color: Color(0xFF2F3534),
              //           fontSize: 20,
              //           fontFamily: 'Poppins',
              //           fontWeight: FontWeight.w500,
              //           height: 0.07,
              //           letterSpacing: 1,
              //         ),    
              //       ),
              //     ],
              //   ),
              // ),

              const SizedBox(height: 10),
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

              const SizedBox(height: 15),

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
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey.shade400),
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
              
              // forgot password?
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      // if pressed, we redirect user to the Reset Password Page
                      onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => const ResetPasswordPage()),);}, 
                      child: 
                      const Text('Forgot Password?',
                          style: TextStyle(
                              color: Colors.grey,
                              fontFamily: 'Quicksand-Regular',
                          ),
                      ),
                    ),
                  ],
                ),
              ),

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
                  //login();
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

              const SizedBox(height: 30),

              // or login with
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.0),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                  child: Text(
                    'Ou connectez-vous avec',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Color(0xFF303535),
                        fontSize: 16,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                        height: 0,
                    ),
                  )
                ),

              ),

              const SizedBox(height: 30),

              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  side: const BorderSide(width: 1, color: Color(0xFF51ADD4)),
                  backgroundColor: const Color.fromARGB(255, 255, 255, 255),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24),
                  ),
                  fixedSize: Size(MediaQuery.of(context).size.width * 0.88, 46),
                ),
                // if pressed, we do the login function
                onPressed: () {
                  //login();
                },
                child: 
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image(image: AssetImage("assets/images/google_logo.png"), height: 20, width: 20),
                      SizedBox(width: 10,),
                      Text(
                        'Google',
                        style: TextStyle(
                            color: Color(0xFF1B1E34),
                            fontSize: 16,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                            height: 0,
                        ),
                      ),
                    ]
                  ),
              ),

              const SizedBox(height: 30),

              // not a member? register now
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Vous ne possédez pas encore de compte ?',
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
                    onPressed: () { Navigator.push(context, MaterialPageRoute(builder: (context) => const RegisterPage()),); },
                    child: 
                    const Text('Créer un compte',
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