
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_appchotastock/screens/second_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'login_event.dart';
part 'login_state.dart';


class LoginBloc extends Bloc<LoginEvent, LoginState>{
  LoginBloc(): super(InitialState())
  {
    on(_event);
  }

 // LoginBloc get initialState => InitialState();

  _event(LoginEvent event, Emitter<LoginState> emit)async{
    if(event is NextPage){
      Navigator.push(event.context, MaterialPageRoute(builder: (context) => SecondScreen(name: event.emailId)));
    }
  }

}