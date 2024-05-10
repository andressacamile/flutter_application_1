import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: true,
      builder: (context) => RockInRio(),
    ),
  );
}


class RockInRio extends StatelessWidget {
  const RockInRio({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rock in Rio',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 230, 4, 211)),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Atrações'),
       
      ),
      body: ListView.builder(
        itemCount: listaAtracoes.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(listaAtracoes[index].nome),
            subtitle: Wrap(spacing: 8, 
            runSpacing: 4,
            children: listaAtracoes[index]
            .tags.map((tag) => Chip(label: Text('#$tag')))
            .toList(),
            ),
            leading: CircleAvatar(child: Text('${listaAtracoes[index]}'),
            ),
            trailing: IconButton(
              onPressed: () {},
              icon: Icon(Icons.favorite)
            ),
          );
        },
      ),
    );
  }
}


class Atracao {
  final String nome;
  final int dia;
  final List<String> tags;

  const Atracao(this.nome, this.dia, this.tags);
}

const listaAtracoes = [
Atracao("Cazuza", 2, ["Espetaculo", "Fas", "Exagerado"]),
  Atracao("Chris Brown", 2, ["influente", "top", "Exclusive"]),
  Atracao("Justin Bieber", 2, ["topCharts", "hits", "principe do pop"]),
  Atracao("Pablo", 2, ["arrocha", "Fas", "rei da sofrencia"]),
  Atracao("Gilsons", 2, ["Espetaculo", "Fas", "Varias queixas"]),
  Atracao("Rihanna", 2, ["Espetaculo", "Fas", "Umbrella"]),
  Atracao("Arianna Grande", 2, ["Espetaculo", "Fas", "thank you"]),
  Atracao("Alicia Keys", 2, ["Espetaculo", "Fas", "Girl on fire"]),
  Atracao("Adele", 2, ["Espetaculo", "Fas", "Skyfall"]),
  Atracao("Ana Vitoria", 2, ["Espetaculo", "Fas", "Pupila"]),
  Atracao("Bruno Mars", 2, ["Espetaculo", "Fas", "versace on the floor"]),
  Atracao("Marilia Mendonça", 2, ["ao vivo", "Fas", "Por todos os cantos"]),
  Atracao("Luan Santana ", 2, ["ao vivo", "Fas", "acustico"]),
  Atracao("turma do pagode ", 2, ["Espetaculo",]),
];