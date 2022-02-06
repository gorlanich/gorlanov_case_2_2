import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  //
  @override
  Widget build(BuildContext context) {
    const borderStyle=OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(10)),
      borderSide: BorderSide(
        color: const Color(0x32647ae2), width:3));
    const borderStyle2=OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(24)),
        borderSide: BorderSide(
            color: const Color(0x1d000000), width:2));







    return MaterialApp(
      home: Scaffold(
          body:Container(
            //
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/bg.png"),
            fit: BoxFit.cover,
            )
            ),
            width: double.infinity,
            height: double.infinity,
            //padding: EdgeInsets.symmetric(horizontal: 0),
            child: SingleChildScrollView(
              child: Column(children: [
                SizedBox(height:120,),
                Image.asset("assets/images/logo.png"),
                SizedBox(height:30,),
                Text("Введите номер телефона", style: TextStyle(fontSize: 14,color: Color.fromRGBO(0, 0, 0, 0.4))),
                SizedBox(height:30,),
                SizedBox(width:300,
                  child: TextField(
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                      enabledBorder: borderStyle,
                      focusedBorder: borderStyle2,
                      filled: true,
                      fillColor: Color(0x5Edbebf6),
                      labelText: "+7 xxx xxx xx xx",
                    ),
                  ),
                ),
                SizedBox(height:30,),
                const SizedBox(width:300,
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      enabledBorder: borderStyle,
                      focusedBorder: borderStyle2,
                      filled: true,
                      fillColor: Color(0x5Edbebf6),
                      labelText: "пароль",
                    ),
                  ),
                ),
                SizedBox(height:30,),
                SizedBox(width:154, child:
                ElevatedButton(onPressed: () {},  child: Text("Войти"),
                style: ElevatedButton.styleFrom(
                  primary: Color(0xFF0079D0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  )
                )
                ),
                ),
                SizedBox(height:80,),
                InkWell(child: const Text("Регистрация", style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF0079D0),
                ),
                ), onTap: () {}),
                SizedBox(height:10,),
                InkWell(child: const Text("Забыли пароль?", style: TextStyle(
                      fontSize: 16,
                      color: Color(0xFF0079D0),
                    ),
                ), onTap: () {}),
                SizedBox(height:100,),
                Text("Case 2.2, author: Gorlanov AA"),
              ],),
            ),
          )

        ),
      );

  }
}
