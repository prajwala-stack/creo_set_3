import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(
  home: Home(),
));

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  get emailController => TextEditingController();

  get passController => TextEditingController();

  get child => null;
    //final emailController = TextEditingController();
   // final passController = TextEditingController();
    //bool passToggle = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
         backgroundColor: Colors.deepPurple[900],
         title: const Text('Welcome back'),
      ),
      body:SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 60),
            child: Form(
                child: Column(
         // mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children:[
                  OutlinedButton.icon(
                    onPressed: () {
                    if (kDebugMode) {
                      print('CONTINUE');
                    }
                  },
                    label: const Text('CONTINUE WITH FACEBOOK'),
                    icon: const Icon(
                     Icons.facebook_rounded,
                    ),
                  style: OutlinedButton.styleFrom(
                   // primary: Colors.yellowAccent,
                    side: const BorderSide(color: Colors.yellow, width: 1.0),
                    padding: const EdgeInsets.fromLTRB(10, 10, 100, 10),
                  ),
                ),
                    const SizedBox(height: 30),
                  OutlinedButton.icon(
                    onPressed: () {
                    if (kDebugMode) {
                     print('CONTINUE');
                    }
                  },
                    label: const Text('CONTINUE WITH GOOGLE'),
                     icon: const Icon(
                    Icons.search
                    ),
                     style: OutlinedButton.styleFrom(
                  // primary: Colors.yellowAccent,
                   side: const BorderSide(color: Colors.yellow, width: 1.0),
                   padding: const EdgeInsets.fromLTRB(10, 10, 100, 10),
                ),

            ),
                  const SizedBox(height: 30),
                  const Text(
                      "--------or-------"
                      //style: TextStyle(
                      //color: Colors.grey,
                     // fontSize: 20
                 // ),
        ),
                  const SizedBox(height: 50),
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    controller: emailController,
                    decoration: const InputDecoration(
                      labelText: "email",

                    ),
                  ),
                  const SizedBox(height: 30),
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    controller: passController,
                    decoration: const InputDecoration(
                      labelText: "password",
                      //suffix: InkWell(
                        //onTap: () {
                          //setState(() {
                            //var passToggle = !passToggle;
                          //});

                        //},
                       // child: Icon(
                           // passToggle ? Icons.visibility : Icons.visibility_off),


                        ),
                      ),
                      const SizedBox(height: 30),
                  TextButton(
                        onPressed: () {  },
                        child: const Text(
                          "Forget Password?",
                          style: TextStyle(
                            color: Colors.blue,
                          //  textAlign: TextAlign.right,
                          ),
                        ),
                      ),
                  const SizedBox(height: 30),
                      InkWell(
                        onTap: () {},
                        child: Container(
                          height: 50,
                          decoration: BoxDecoration(
                            color: Colors.indigo,
                            borderRadius: BorderRadius.circular(5)
                          ),
                             child: const Center(
                               child:  Text(
                                  "Log in",
                                 style: TextStyle(
                                   color: Colors.white,
                                   fontSize: 20,
                                   fontWeight: FontWeight.bold,
                                 ),

                          ),
                        ),
                      ),
                      ),
                      const SizedBox(height: 30),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            "Need an Account?",
                            style: TextStyle(
                              fontSize: 16,
                            ),

                          ),
                          TextButton(
                              onPressed: () {},
                              child: const Text(
                                "Sign Up",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                          ),
                        ],
                      ),
                ]
          ),
      ),
      ),
      ),
    );
  }

  void setState(Null Function() param0) {
  }


}


