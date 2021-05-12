import 'package:flutter/material.dart';
import 'package:flutter_dsctask/restaurantMenu.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}
class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
bool visability = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: true,
        
        appBar: AppBar(
          centerTitle: true,
        backgroundColor: Colors.blue,
        title: Text("DSC Al-Azhar",style: TextStyle(fontSize: 30, )),
      ),
      body:Center(

        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text("Sign Up" ,style: TextStyle(fontSize: 30, color: Colors.blue),),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    prefixIcon: Icon(Icons.account_circle),
                    labelText: 'User Name',
                    hintText: 'Enter Your Name',
                    helperText:"Required ",helperStyle:   TextStyle(color: Colors.black87,),
                  ),
                ),
              ),
              //Text("Required", textAlign: TextAlign.start,),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: TextField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    labelText: "Email",
                    hintText: "Enter your Email",
                    helperText:"Required ",helperStyle:   TextStyle(color: Colors.black87,),

                    prefixIcon: Icon(Icons.email),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: TextField(
                  obscureText: visability,
                  keyboardType: TextInputType.visiblePassword,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    labelText: "Password",
                    hintText: "Enter Your Password",
                    helperText:"Required ",helperStyle:   TextStyle(color: Colors.black87,),
                    prefixIcon: Icon(Icons.lock_sharp),
                    suffixIcon: IconButton(
                      icon: Icon(visability?Icons.visibility_off:Icons.visibility),
                      onPressed: (){
                        setState(() {
                          visability =!visability;
                        });
                      },
                  ),
                ),
              )),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: RaisedButton(
                    padding: EdgeInsets.all(20.0),
                    color: Colors.blue,
                    shape:  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(35.0),
                    ),
                    child: Text("Create Account", style: TextStyle(color: Colors.white),),
                    onPressed: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => restaurant()),
                      );
                    }),
              ),
            ],
          ),
        ),
      )
    );
  }
}

