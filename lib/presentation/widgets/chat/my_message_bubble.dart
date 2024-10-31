import 'package:flutter/material.dart';

class MyMessageBubble extends StatelessWidget {
  const MyMessageBubble({super.key});

  @override
  Widget build(BuildContext context) {
    
    final colors = Theme.of(context).colorScheme;

    return Column(

      // Alinear mis mensajes a la derecha
      crossAxisAlignment: CrossAxisAlignment.end,

      children: [
        
        // Fondo de los mensajes
        Container(
          decoration: BoxDecoration(
            color: colors.primary,

          // Hacer redondos los mensajes
          borderRadius: BorderRadius.circular(20)
          ),

          // Separación (más bien ajuste de posición) de los mensajes
          child:const  Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),

            // Texto de los mensajes
            child: Text('Hola Taylor',style: TextStyle(color: Colors.black),),
          ),
        ),

        // Separación de mensajes
        const SizedBox(height: 10,)

        //Métodos de http:
// Metodo get: obtener algo del servidor (para que el servidor diga algo)
// Metodo post: envio algo a un sistema para que haga algo
      ],
    );
  }
}