import 'package:dio/dio.dart';
import 'package:yes_no_app_angela_maldonado/domain/entities/message.dart';

class GetYesNoAnswer {

  // Se crea la instancia (objeto, referencia a) de la clase Dio
  // Para manejar las peticiones de https
  final _dio = Dio();

  // Obtener la respuesta
  Future<Message> getAnswer() async {

  // Almacenar la petición tipo get en una variable
  final response = await _dio.get('https://yesno.wtf/api');

  // Generar el error
  throw UnimplementedError(); //error no implementado
  

       }
   }