import 'package:flutter/material.dart';

class TextFieldScreen extends StatefulWidget {
  const TextFieldScreen({Key? key}) : super(key: key);

  @override
  _TextFieldScreenState createState() => _TextFieldScreenState();
}

class _TextFieldScreenState extends State<TextFieldScreen> {
  bool isTap = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.teal,
      //appBar: AppBar(title: Text("TextField"),),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Image.asset("images.jpeg"),
            Text(
              "WELCOME BACK!",
              style: TextStyle(
                color: Colors.black,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "Log in your existant account og Q Allune",
              style: TextStyle(
                color: Colors.black,
                //fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Column(
              children: [
                TextField(
                  onTap: () {
                    setState(() {
                      isTap = true;
                    });
                  },
                  keyboardType: TextInputType.text,
                  obscureText: true,
                  obscuringCharacter: "*",
                  // maxLines: 4,
                  decoration: InputDecoration(
                    // icon: Icon(Icons.person),
                    hintText: "sujjj@guhjnj",
                    hintStyle: TextStyle(color: Colors.grey),

                    enabledBorder: OutlineInputBorder(
                        // borderSide: BorderSide.none
                        borderSide: BorderSide(color: Colors.blue, width: 2),
                        borderRadius: BorderRadius.circular(40)),
                    focusedBorder: OutlineInputBorder(
                        // borderSide: BorderSide.none
                        borderSide: BorderSide(color: Colors.blue, width: 2),
                        borderRadius: BorderRadius.circular(40)),
                    filled: true,
                    fillColor: Colors.white,
                    prefixIcon: Icon(Icons.person),
                    //suffixIcon: Icon(Icons.search)
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                TextField(
                  onTap: () {
                    setState(() {
                      isTap = true;
                    });
                  },
                  keyboardType: TextInputType.text,
                  obscureText: true,
                  obscuringCharacter: "*",
                  // maxLines: 4,
                  decoration: InputDecoration(
                    // icon: Icon(Icons.person),
                    hintText: "password",
                    hintStyle: TextStyle(color: Colors.grey),

                    enabledBorder: OutlineInputBorder(
                        // borderSide: BorderSide.none
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(40)),
                    focusedBorder: OutlineInputBorder(
                        // borderSide: BorderSide.none
                        borderSide: BorderSide(color: Colors.blue, width: 2),
                        borderRadius: BorderRadius.circular(40)),
                    filled: true,
                    fillColor: Colors.white,
                    prefixIcon: Icon(Icons.lock),
                    //suffixIcon: Icon(Icons.search)
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      child: TextButton(
                          onPressed: () {},
                          child: Text(
                            "Forgot Password",
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          )),
                    ),
                  ],
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    "LOG In",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
