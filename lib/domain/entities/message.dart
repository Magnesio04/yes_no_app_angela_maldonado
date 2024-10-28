// Identidad atómica: la unidad más pequeña de un sistema #pregunta extamen
// Utilizaremos como gestor de estados el provider

enum FromWho {me, him }
class Message {
  final String text;
  final String? imageURL;
  final FromWho fromWho;

  Message({required this.text, this.imageURL, required this.fromWho});
}