import 'package:flutter/material.dart';

class MyLogin extends StatefulWidget {
  const MyLogin({Key? key}) : super(key: key);

  @override
  _MyLoginState createState() => _MyLoginState();
  



}

class _MyLoginState extends State<MyLogin> {
  @override
  Widget build(BuildContext context) { 
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/login.png'), fit: BoxFit.cover),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: const Text("ECall Doctor And Nurse"),
        ),
        body: Stack(
          children: [
            SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(left: 35, right: 35),
                      child: Column(
                        children: [
                          const Text(
                            "Login",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 33,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          TextField(
                            style:const TextStyle(color: Colors.black),
                            decoration: InputDecoration(
                                fillColor: Colors.blue[50],
                                filled: true,
                                prefixIcon:const Icon(
                                  Icons.email,
                                  color: Colors.black,
                                ),
                                hintText: "Email",
                                hintStyle: const TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                                labelText: "Enter Your Email Please",
                                labelStyle: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.blue),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                )),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          TextField(
                            style:const TextStyle(),
                            obscureText: true,
                            decoration: InputDecoration(
                                fillColor: Colors.blue[50],
                                filled: true,
                                prefixIcon: const  Icon(
                                 Icons.lock,
                                  color: Colors.black,
                                ),
                                hintStyle: const TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                                hintText: "Password",
                                labelText: "Enter Your Password Please",
                                labelStyle:const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.blue),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                )),
                          ),
                          TextButton(
                              onPressed: () {},
                              child: Container(
                                alignment: Alignment.topRight,
                                child:const Text(
                                  'Forgot Password',
                                  style: TextStyle(
                                    decoration: TextDecoration.underline,
                                    color: Color(0xff4c505b),
                                    fontSize: 18,
                                  ),
                                ),
                              )),
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                            Container(
                                width: MediaQuery.of(context).size.width * 0.4,
                                child: ElevatedButton(
                                  child:const Text(
                                    'Login',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 23),
                                  ),
                                  onPressed: () {},
                                  // style: ButtonStyle(
                                  //   shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(50)),
                                  //   backgroundColor: MaterialStateProperty.all(
                                  //       Colors.deepOrange),
                                  // ),

                                  style: ElevatedButton.styleFrom(
                                      primary: Colors.deepOrange,
                                      //  fixedSize: const Size(50, 100),
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(50))),
                                ),
                              ),
                            ],
                          ),
                          // SizedBox(
                          //   height: 10,
                          // ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                "Don't have an account?",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                              ),
                              TextButton(
                                onPressed: () {
                                  Navigator.pushNamed(context, 'register');
                                },
                                child:const  Text(
                                  'Register',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      decoration: TextDecoration.underline,
                                      color: Colors.red,
                                      fontSize: 18),
                                ),
                                style: const ButtonStyle(),
                              ),
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
