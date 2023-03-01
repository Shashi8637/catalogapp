import 'package:catalogapp/utills/routs.dart';
import 'package:flutter/material.dart';


class login_page extends StatefulWidget {
  const login_page({Key? key}) : super(key: key);

  @override
  State<login_page> createState() => _login_pageState();
}

class _login_pageState extends State<login_page> {
  String name = " ";
  bool ChangeButton=false;
  final _formkey =GlobalKey<FormState>();

  movetohome(BuildContext context)async{
    if (_formkey.currentState!.validate()) {
      setState(() {
        ChangeButton = true;
      });
      await Future.delayed(Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRoutes.homeRoutes);
      setState(() {
        ChangeButton = false;
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Form(
          key: _formkey,
          child: Column(
            children: [
              Image(
                image: AssetImage("image/login_image.png",),
                  fit:BoxFit.cover,
              ),
              SizedBox(
                height: 30,
              ),
              Text("welcome $name",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
             Padding(
               padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 32,),
               child: Column(
                 children: [
                   TextFormField(
                     decoration: InputDecoration(
                       hintText: "ENTER USER NAME",
                       labelText: "USER NAME",
                     ),
                     validator: (value){
                       if(value!.isEmpty){
                         return "USER NAME CAN NOT BE EMPTY";
                       }
                       return null;
                     },
                     onChanged: (value){
                       name = value;
                       setState(() {});
                     },
                   ),TextFormField(
                     obscureText: true,
                     decoration: InputDecoration(
                       hintText: "ENTER PASSWORD",
                       labelText: "PASSWORD",
                     ),
                     validator: (value){
                       if(value!.isEmpty){
                         return "PASSWORD CAN NOT BE EMPTY";
                       }
                       else if(value.length<6){
                         return "password length should be atleast 6";
                       }
                     },
                   ),
                   SizedBox(
                     height: 40,
                   ),
                  InkWell(
                    onTap: () =>movetohome(context) ,
                    child: AnimatedContainer(
                      duration: Duration(seconds: 1),
                      width: ChangeButton?50: 150,
                      height: 50,
                      alignment: Alignment.center,

                      child:ChangeButton?Icon(Icons.done ,color: Colors.white,):
                      Text("LOGIN",
                        style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.bold,


                        ),

                      ),
                      decoration: BoxDecoration(
                        color:Colors.green ,
                      shape: ChangeButton
                          ?BoxShape.circle
                          :BoxShape.rectangle,

                      //  borderRadius: BorderRadius.circular(ChangeButton?50:150)
                      ),
                    ),
                  ),
                  // ElevatedButton(
                    // child: Text("LOGIN"),
                     //style: TextButton.styleFrom(minimumSize:Size( 100, 40)),
                     //onPressed: (){

                       //},
                  // ),
                 ],
               ),
             ),
            ],
          ),
        ),
      ),
    );
  }
}
