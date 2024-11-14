// Identidad atómica: la unidad más pequeña de un sistema #pregunta extamen
// Utilizaremos como gestor de estados el provider
import 'package:intl/intl.dart';

enum FromWho {me, him }
class Message {
  final String text; //Contenido del mensaje
  final String? imagenUrl;
  final FromWho
      fromWho; // enum que identifica si el mensaje es enviado por el usuario o por otro
  final DateTime timestamp; // Hora y fecha de envio del mensaje
 
  
    Message({
    required this.text,
    this.imagenUrl,
    required this.fromWho,
    required this.timestamp, // Marca de tiempo, obligatoria para cada mensaje
  });
  //Metodo para obtener la hora formateada
  String get formattedTimestamp {
    return DateFormat('hh:mm a').format(timestamp); //3:00
  }
}