import 'dart:io';
import 'dart:async';
import 'dart:math';

Future<void> main() async {
  final address = InternetAddress.loopbackIPv4;
  const port = 4040;

  try {
    final socket = await Socket.connect(address, port);
    print('Conectado ao servidor!');

    final random = Random();

    Timer.periodic(Duration(seconds: 10), (timer) {
      double temperature = 20 + random.nextDouble() * 15; // 20°C a 35°C
      String message = temperature.toStringAsFixed(2);

      socket.write(message + '\n');
      print('Temperatura enviada: $message °C');
    });

    socket.done.then((_) {
      print('Conexão encerrada.');
      socket.destroy();
    });
  } catch (e) {
    print('Erro ao conectar: $e');
  }
}