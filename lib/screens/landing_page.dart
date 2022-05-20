import 'package:flutter/material.dart';
import 'package:flutter_appchotastock/bloc/login_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LandingScreen extends StatefulWidget {
  const LandingScreen({Key? key}) : super(key: key);

  @override
  _LandingScreenState createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {
  String? emailId;
  LoginBloc ? _bloc;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [

              SizedBox(
                  height: 50,
                  width: 200,
                  child: TextField(
                   onChanged: (String value){
                     emailId=value;
                   },
                  )),

              InkWell(
                onTap: (){
                  BlocProvider.of<LoginBloc>(context).add(NextPage(emailId: emailId!, context: context));
                },
                child:const  SizedBox(
                  height: 50,
                  width: 150,
                  child: Center(
                    child: Text('Next Page'),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
