

part of 'login_bloc.dart';

abstract class LoginEvent extends Equatable{
}

class NextPage extends LoginEvent{
  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();

  String emailId;
  BuildContext context;
  NextPage({required this.emailId , required this.context});

}