import 'dart:io';

bool ActiveConnection = false;

Future CheckUserConnection() async {
  try {
    final result = await InternetAddress.lookup('google.com');
    if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
      ActiveConnection = true;
    }
  } on SocketException catch (_) {
    ActiveConnection = false;
  }
}
