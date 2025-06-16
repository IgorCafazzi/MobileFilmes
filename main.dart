import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: TelaInicial());
  }
}

class TelaInicial extends StatelessWidget {
  const TelaInicial({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'imagens/premium_photo-1701590725721-add548ecdf61.jpeg',
            ),
            fit: BoxFit.cover,
          ),
        ),
        width: double.infinity,
        height: double.infinity,
        child: Stack(
          children: [
            // Toy Story
            Align(
              alignment: const Alignment(-0.72, -0.7),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => const ToyStoryScreen()),
                  );
                },
                child: Image.asset(
                  'imagens/Toy_Story_1995.jpg',
                  width: 330,
                  height: 330,
                ),
              ),
            ),
            Align(
              alignment: const Alignment(-0.55, -0.05),
              child: Text(
                'Toy Story',
                style: GoogleFonts.montserrat(
                  fontSize: 30,
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                ),
              ),
            ),

            // Flow
            Align(
              alignment: const Alignment(0.7, -0.7),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => const FlowScreen()),
                  );
                },
                child: Image.asset(
                  'imagens/flow-md-web.jpg',
                  width: 330,
                  height: 330,
                ),
              ),
            ),
            Align(
              alignment: const Alignment(0.5, -0.05),
              child: Text(
                'Flow',
                style: GoogleFonts.montserrat(
                  fontSize: 30,
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                ),
              ),
            ),

            // Extraordinário
            Align(
              alignment: const Alignment(-0.7, 0.65),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const ExtraordinarioScreen(),
                    ),
                  );
                },
                child: Image.asset(
                  'imagens/extraordinario.jpg',
                  width: 320,
                  height: 320,
                ),
              ),
            ),
            Align(
              alignment: const Alignment(-0.59, 0.85),
              child: Text(
                'Extraordinário',
                style: GoogleFonts.montserrat(
                  fontSize: 30,
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                ),
              ),
            ),

            // Sonhos Roubados
            Align(
              alignment: const Alignment(0.7, 0.66),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const SonhosRoubadosScreen(),
                    ),
                  );
                },
                child: Image.asset(
                  'imagens/sonhosroubados.jpg',
                  width: 330,
                  height: 330,
                ),
              ),
            ),
            Align(
              alignment: const Alignment(0.65, 0.85),
              child: Text(
                'Sonhos Roubados',
                style: GoogleFonts.montserrat(
                  fontSize: 30,
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                ),
              ),
            ),

            // Título
            Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Text(
                  "FILMES MOSTRA",
                  style: GoogleFonts.montserrat(
                    fontSize: 30,
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
                  ),
                ),
              ),
            ),

            // Créditos
            Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Text(
                  'Feito por Igor Cafazzi e Igor Michelini',
                  style: GoogleFonts.montserrat(
                    fontSize: 12,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// TELAS SECUNDÁRIAS

class ToyStoryScreen extends StatelessWidget {
  const ToyStoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Toy Story')),
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'imagens/premium_photo-1701590725721-add548ecdf61.jpeg', // fundo
              fit: BoxFit.cover,
            ),
          ),
          SingleChildScrollView(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  'imagens/Toy_Story_1995.jpg',
                  width: 350,
                  height: 350,
                ),
                const SizedBox(height: 16),
                RichText(
                  textAlign: TextAlign.left,
                  text: TextSpan(
                    style: GoogleFonts.montserrat(
                      fontSize: 14,
                      color: Colors.black,
                    ),
                    children: const [
                      TextSpan(
                        text:
                            'Andy ganha um novo brinquedo: Buzz Lightyear, e Woody, seu brinquedo favorito, passa a ser ignorado. Com ciúmes, Woody tenta ensiná-lo uma lição, mas Buzz acaba caindo pela janela. Começa então uma aventura para recuperar o amigo e limpar seu nome.\n\n',
                      ),
                      TextSpan(
                        text: 'Direção: ',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(text: 'John Lasseter\n\n'),
                      TextSpan(
                        text: 'Produção: ',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                        text:
                            'Pixar Animation Studios em colaboração com Walt Disney Pictures\n\n',
                      ),
                      TextSpan(
                        text: 'Empresa/Studio: ',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(text: 'Pixar Animation Studios\n\n'),
                      TextSpan(
                        text: 'Gênero: ',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                        text: 'Animação, aventura e comédia fantasiosa\n\n',
                      ),
                      TextSpan(
                        text: 'Dados de lançamento: ',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                        text:
                            'Foi lançado em 22 de novembro de 1995 (EUA) e 12 de janeiro de 1996 (Brasil).\n\n',
                      ),
                      TextSpan(
                        text:
                            'Teve um orçamento de 30 milhões e arrecadou mais de 400 milhões, sendo um sucesso de bilheteria.\n\n',
                      ),
                      TextSpan(
                        text: 'Elenco: ',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                        text:
                            'Tom Hanks, Tim Allen, Don Rickles, Jim Varney, Wallace Shawn, John Ratzenberger, Annie Potts, R. Lee Ermey, John Morris, Erik von Detten, Laurie Metcalf, Sarah Freeman, Penn Jillette.\n\n',
                      ),
                      TextSpan(
                        text: 'Links: ',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                        text:
                            'https://toystory.disney.com/\nhttps://www.pixar.com/toy-story\nTrailer: https://youtu.be/v-PjgYDrg70?si=jJLTgTJt6thdYX4P',
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 24),
                Center(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const GaleriaToyStoryScreen(),
                        ),
                      );
                    },
                    child: const Text('Ver Galeria de Imagens'),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// Tela da galeria no mesmo arquivo
class GaleriaToyStoryScreen extends StatelessWidget {
  const GaleriaToyStoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Galeria - Toy Story')),
      body: GridView.count(
        crossAxisCount: 2,
        padding: const EdgeInsets.all(16),
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
        children: const [
          ImageTile('imagens/toy-story-pictures-luyv190vgd0lhjtl.webp'),
          ImageTile('imagens/toy-story-pictures-gzaecbl8o7hakfl3.webp'),
          ImageTile('imagens/toy-story-pictures-e0qxqtumtqn9m412.webp'),
          ImageTile('imagens/toy-story-pictures-sa0ti4o9n5ushc8n.webp'),
        ],
      ),
    );
  }
}

class ImageTile extends StatelessWidget {
  final String imagePath;
  const ImageTile(this.imagePath, {super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: Image.asset(imagePath, fit: BoxFit.cover),
    );
  }
}

class FlowScreen extends StatelessWidget {
  const FlowScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Flow')),
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'imagens/premium_photo-1701590725721-add548ecdf61.jpeg', // fundo Flow
              fit: BoxFit.cover,
            ),
          ),
          SingleChildScrollView(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset('imagens/flow-md-web.jpg', width: 350, height: 350),
                const SizedBox(height: 16),
                RichText(
                  textAlign: TextAlign.left,
                  text: TextSpan(
                    style: GoogleFonts.montserrat(
                      fontSize: 14,
                      color: Colors.black,
                    ),
                    children: const [
                      TextSpan(
                        text:
                            'Gato é um animal solitário, mas quando seu lar é devastado por uma grande inundação, ele encontra refúgio em um barco povoado por várias espécies e tem que se unir a elas apesar de suas diferenças.\n\n',
                      ),
                      TextSpan(
                        text: 'Direção: ',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(text: 'Gints Zilbalodis\n\n'),
                      TextSpan(
                        text: 'Produção: ',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                        text:
                            'Matīss Kaža, Gregory Zalcman, Gints Zilbalodis, Olivier Père\n\n',
                      ),
                      TextSpan(
                        text: 'Empresa/Studio: ',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                        text:
                            'Dream Well Studio, Sacrebleu Productions, Take Five\n\n',
                      ),
                      TextSpan(
                        text: 'Gênero: ',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(text: 'Animação, aventura\n\n'),
                      TextSpan(
                        text: 'Dados de lançamento: ',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                        text:
                            'Filme da Letônia lançado em 2024 e no Brasil em fevereiro de 2025.\n\n',
                      ),
                      TextSpan(
                        text:
                            'Ganhou o Oscar de Melhor Animação e o Globo de Ouro na mesma categoria.\n\n',
                      ),
                      TextSpan(
                        text: 'Elenco: ',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                        text:
                            'Gato, cachorro, lêmure, capivara, ave e baleia (não possui atores)\n\n',
                      ),
                      TextSpan(
                        text: 'Links: ',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                        text:
                            'https://flowthemovie.com/\nTrailer: https://youtu.be/82WW9dVbglI?si=AzrXClL8QXOLzthT',
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 24),
                Center(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const GaleriaFlowScreen(),
                        ),
                      );
                    },
                    child: const Text('Ver Galeria de Imagens'),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ExtraordinarioScreen extends StatelessWidget {
  const ExtraordinarioScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Extraordinário')),
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'imagens/premium_photo-1701590725721-add548ecdf61.jpeg', // fundo Extraordinário
              fit: BoxFit.cover,
            ),
          ),
          SingleChildScrollView(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  'imagens/extraordinario.jpg',
                  width: 350,
                  height: 350,
                ),
                const SizedBox(height: 16),
                RichText(
                  textAlign: TextAlign.left,
                  text: TextSpan(
                    style: GoogleFonts.montserrat(
                      fontSize: 14,
                      color: Colors.black,
                    ),
                    children: const [
                      TextSpan(
                        text:
                            'Auggie Pullman é um garoto que nasceu com uma deformidade facial e precisou passar por 27 cirurgias plásticas. Agora precisa se esforçar para conseguir se encaixar em sua nova realidade.\n\n',
                      ),
                      TextSpan(
                        text: 'Direção: ',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(text: 'Stephen Chbosky\n\n'),
                      TextSpan(
                        text: 'Produção: ',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(text: 'David Hoberman e Todd Lieberman\n\n'),
                      TextSpan(
                        text: 'Empresas: ',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                        text:
                            'Lionsgate, Mandeville Films, Participant Media, Walden Media\n\n',
                      ),
                      TextSpan(
                        text: 'Gênero: ',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(text: 'Drama, Comédia\n\n'),
                      TextSpan(
                        text: 'Dados de lançamento: ',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                        text: 'Estreia mundial em 14 de novembro de 2017.\n\n',
                      ),
                      TextSpan(
                        text:
                            'Custou aproximadamente 20 milhões de dólares e arrecadou cerca de 300 milhões de dólares.\n\n',
                      ),
                      TextSpan(
                        text:
                            'Indicado ao Oscar e BAFTA de Melhor Maquiagem e Cabelo.\n\n',
                      ),
                      TextSpan(
                        text: 'Elenco: ',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                        text:
                            'Jacob Tremblay, Julia Roberts, Owen Wilson, Noah Jupe, Daveed Diggs, Sônia Braga, Izabela Vidovic.\n\n',
                      ),
                      TextSpan(
                        text: 'Links: ',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(text: 'Trailer: https://youtu.be/7lyJtY_TPvk\n'),
                      TextSpan(
                        text: 'Site: https://www.lionsgate.com/movies/wonder',
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 24),
                Center(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              const GaleriaExtraordinarioScreen(),
                        ),
                      );
                    },
                    child: const Text('Ver Galeria de Imagens'),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class SonhosRoubadosScreen extends StatelessWidget {
  const SonhosRoubadosScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Sonhos Roubados')),
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'imagens/premium_photo-1701590725721-add548ecdf61.jpeg', // fundo Sonhos Roubados
              fit: BoxFit.cover,
            ),
          ),
          SingleChildScrollView(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  'imagens/sonhosroubados.jpg',
                  width: 350,
                  height: 350,
                ),
                const SizedBox(height: 16),
                RichText(
                  textAlign: TextAlign.left,
                  text: TextSpan(
                    style: GoogleFonts.montserrat(
                      fontSize: 14,
                      color: Colors.black,
                    ),

                    children: const [
                      TextSpan(
                        text:
                            'O difícil cotidiano de três amigas de uma comunidade carioca, que acabam se prostituindo para conseguir dinheiro e realizar seus sonhos.\n\n',
                      ),
                      TextSpan(
                        text: 'Direção: ',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(text: 'Sandra Werneck\n\n'),
                      TextSpan(
                        text: 'Produção: ',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(text: 'Cineluz\n\n'),
                      TextSpan(
                        text: 'Empresa: ',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                        text:
                            'Cineluz, Estúdios Mega, Labo Cine do Brasil Ltda., Europa Filmes\n\n',
                      ),
                      TextSpan(
                        text: 'Gênero: ',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(text: 'Drama\n\n'),
                      TextSpan(
                        text: 'Dados de lançamento: ',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                        text:
                            'Lançado mundialmente em 25 de setembro de 2009.\n\n',
                      ),
                      TextSpan(
                        text: 'Orçamento estimado em 4 milhões de reais.\n\n',
                      ),
                      TextSpan(
                        text: 'Elenco: ',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                        text:
                            'Nanda Costa, Kika Farias, Marieta Severo, Nelson Xavier, Ângelo Antônio, Guilherme Duarte, Amanda Diniz.\n\n',
                      ),
                      TextSpan(
                        text: 'Links: ',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                        text:
                            'Trailer: https://youtu.be/wdVzWEgbbl8?si=0hSt9kXTPtiwVGYI',
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 24),
                Center(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              const GaleriaSonhosRoubadosScreen(),
                        ),
                      );
                    },
                    child: const Text('Ver Galeria de Imagens'),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// Galerias dos filmes

class GaleriaFlowScreen extends StatelessWidget {
  const GaleriaFlowScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Galeria - Flow')),
      body: GridView.count(
        crossAxisCount: 2,
        padding: const EdgeInsets.all(16),
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
        children: const [
          ImageTile('imagens/flow1.jpg'),
          ImageTile('imagens/flow2.jpg'),
          ImageTile('imagens/flow3.jpg'),
          ImageTile('imagens/flow4.jpg'),
        ],
      ),
    );
  }
}

class GaleriaExtraordinarioScreen extends StatelessWidget {
  const GaleriaExtraordinarioScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Galeria - Extraordinário')),
      body: GridView.count(
        crossAxisCount: 2,
        padding: const EdgeInsets.all(16),
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
        children: const [
          ImageTile('imagens/extra1.webp'),
          ImageTile('imagens/extra2.webp'),
          ImageTile('imagens/extra3.webp'),
          ImageTile('imagens/extra4.jpg'),
        ],
      ),
    );
  }
}

class GaleriaSonhosRoubadosScreen extends StatelessWidget {
  const GaleriaSonhosRoubadosScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Galeria - Sonhos Roubados')),
      body: GridView.count(
        crossAxisCount: 2,
        padding: const EdgeInsets.all(16),
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
        children: const [
          ImageTile('imagens/sonhos1.jpg'),
          ImageTile('imagens/sonhos2.webp'),
          ImageTile('imagens/sonhos3.webp'),
          ImageTile('imagens/sonhos4.jpg'),
        ],
      ),
    );
  }
}
