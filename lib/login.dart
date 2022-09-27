import 'package:flutter/material.dart';

class MyLogin extends StatefulWidget {
  const MyLogin({Key? key}) : super(key: key);

  @override
  State<MyLogin> createState() => _MyLoginState();
}
class _MyLoginState extends State<MyLogin> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/login.png'),fit: BoxFit.cover),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Container(
              padding: EdgeInsets.only(left: 90,top: 170),
              child: Text(
                  'Welcome Back',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 34,),),
            ),
           SingleChildScrollView(
             child: Container(
               padding: EdgeInsets.only(
                 top: MediaQuery.of(context).size.height*0.5,
                 right: 35,
                 left: 35,
               ),
               child: Column(
                 children: [
                   TextField(
                     decoration: InputDecoration(
                       fillColor: Colors.grey.shade100,
                       filled: true,
                       hintText: 'Email',
                       border: OutlineInputBorder(
                         borderRadius: BorderRadius.circular(10))
                     ),
                   ),
                   SizedBox(height: 30),
                   TextField(
                     obscureText: true,
                     decoration: InputDecoration(
                         fillColor: Colors.grey.shade100,
                         filled: true,
                         hintText: 'Password',
                         border: OutlineInputBorder(
                             borderRadius: BorderRadius.circular(10))
                     ),
                   ),
                   SizedBox(height: 30),
                   Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       Text('Sign In',
                       style: TextStyle(
                         color: Color(0xff4c505b),
                         fontSize: 30,
                         fontWeight: FontWeight.w700,
                       ),),
                       CircleAvatar(
                         radius: 30,
                         backgroundColor: Color(0xff4c505b),
                         child: IconButton(
                           onPressed: () {},
                           color: Colors.white,
                           icon: Icon(Icons.arrow_forward),
                         ),
                       ),
                     ],
                   ),
                   SizedBox(height: 30),
                   Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       TextButton(onPressed: () {
                         Navigator.pushNamed(context, 'signup');
                       },
                           child: Text(
                             'Sign Up',
                             style: TextStyle(
                               decoration: TextDecoration.underline,
                               fontSize: 22,
                               color: Color(0xff4c505b),
                             ),
                           ),
                       ),
                       TextButton(onPressed: () {},
                         child: Text(
                           'Forget Password',
                           style: TextStyle(
                             decoration: TextDecoration.underline,
                             fontSize: 22,
                             color: Color(0xff4c505b),
                           ),
                         ),
                       )
                     ],
                   ),
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
