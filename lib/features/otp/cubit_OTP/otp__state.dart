part of 'otp__cubit.dart';

@immutable
abstract class OtpState {}

class OtpInitial extends OtpState {}
class OtpCountDown extends OtpState {}

