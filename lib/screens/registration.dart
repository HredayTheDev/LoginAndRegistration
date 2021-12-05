import 'package:flutter/material.dart';

class MyRegister extends StatefulWidget {
  const MyRegister({Key? key}) : super(key: key);

  @override
  _MyRegisterState createState() => _MyRegisterState();
}

class _MyRegisterState extends State<MyRegister> {
  @override
  Widget build(BuildContext context) {
    return Container(
      //width: MediaQuery.of(context).size.width*0.2,
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/register.png'), fit: BoxFit.cover,),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: Stack(
          alignment: Alignment.topCenter,
          children: [
            Container(
              // padding: EdgeInsets.only(left: 35, top: 30),
              child: const Text(
                'Register',
                style: TextStyle(color: Colors.white, fontSize: 33,fontWeight: FontWeight.bold),
              ),
            ),
            SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.22),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(left: 35, right: 35),
                      child: Column(
                        children: [
                          TextField(
                            style: const TextStyle(),
                            obscureText: true,
                            decoration: InputDecoration(
                                fillColor: Colors.blue[50],
                                filled: true,
                                prefixIcon: const Icon(
                                  Icons.person,
                                  color: Colors.black,
                                ),
                                hintStyle:const TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                                hintText: "Name",
                                labelText: "Enter Your Name Please",
                                  labelStyle:const TextStyle(fontWeight: FontWeight.bold,color: Colors.blue),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                )),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                        TextField(
                            style: const TextStyle(color: Colors.black),
                            decoration: InputDecoration(
                                fillColor: Colors.blue[50],
                                filled: true, 
                                prefixIcon: const Icon(
                                  Icons.email,
                                  color: Colors.black,
                                ),
                                hintText: "Email",
                                hintStyle: const TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                                labelText: "Enter Your Email Please",
                                  labelStyle:const TextStyle(fontWeight: FontWeight.bold,color: Colors.blue),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                )),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                         TextField(
                            style:const TextStyle(color: Colors.black),
                            obscureText: true,
                            decoration: InputDecoration(
                                fillColor: Colors.blue[50],
                                filled: true, 
                                prefixIcon: const Icon(
                                  Icons.lock,
                                  color: Colors.black,
                                ),
                                hintText: "Password",
                                hintStyle:const TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                                labelText: "Enter Your Password Please",
                                labelStyle: const TextStyle(fontWeight: FontWeight.bold,color: Colors.blue),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                )),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                           TextField(
                            style: const TextStyle(color: Colors.black),
                            obscureText: true,
                            decoration: InputDecoration(
                                fillColor: Colors.blue[50],
                                filled: true, 
                                prefixIcon:const Icon(
                                  Icons.lock,
                                  color: Colors.black,
                                ),
                                hintText: "Confirm Password",
                                hintStyle:const TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                                labelText: "Confirm Your Password Please",
                                  labelStyle:const TextStyle(fontWeight: FontWeight.bold,color: Colors.blue),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                )),
                          ),
                          const SizedBox(height: 30,),
                           Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width * 0.8,
                                child: ElevatedButton(
                                  child: const Text(
                                    'Register',
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
                          //  SizedBox(
                          //   height: 10,
                          // ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              const Text(
                                "Already Registered?",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold
                                ),
                              ),
                              TextButton(
                                onPressed: () {
                                  Navigator.pushNamed(context, 'login');
                                },
                                child:const Text(
                                  'Login',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      decoration: TextDecoration.underline,
                                      color: Colors.red,
                                      fontWeight: FontWeight.bold,
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
