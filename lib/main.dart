import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.black,
      ),
      home: MyHomePage(),
      routes: {
        '/home': (context) => SecondPage(),
      },
    );
  }
}


class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
        body: Stack(
          children: [
            Container(
              color: Color(0xFFD44E36),
            ),
            Positioned(
              left: 20.0,
              top: 50.0,
              child: Container(
                width: 100.0,
                height: 100.0,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                ),
              ),
            ),
            Positioned(
              left: 20,
              top: 170.0,
              right: 0,
              child: Center(
                child: Text(
                  'Food for Everyone',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 60.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Positioned(
              left: 0,
              top: 300.0,
              right: 0,
              child: Image.network(
                'https://cdn.discordapp.com/attachments/1144320039579816068/1155621555615825950/Captura_de_tela_2023-09-24_183237-removebg-preview.png',
                width: 200,
                height: 400,
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              left: 20.0,
              bottom: 20.0,
              child: Container(
                width: MediaQuery
                    .of(context)
                    .size
                    .width * 0.9,
                height: MediaQuery
                    .of(context)
                    .size
                    .height * 0.12,
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 20.0),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed('/home');
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                            40.0), // Define o borderRadius como 40 pixels
                      ),
                    ),
                    child: Text(
                      'Get Started',
                      style: TextStyle(
                          color: Color(0xFFD44E36),
                          fontSize: 19
                      ),
                    ),
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







class QuintaPagina extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: Container(
        color: Colors.white,
        child: Stack(
          children: [
            Positioned(
              left: 16.0, // Posição à esquerda
              top: 40.0, // Posição superior
              child: IconButton(
                icon: Icon(
                  Icons.arrow_back, // Ícone de voltar
                  size: 30, // Tamanho do ícone
                  color: Colors.grey, // Cor do ícone
                ),
                onPressed: () {
                  Navigator.of(context).pushNamed('/home'); // Navegar para a rota "/home"
                },
              ),
            ),

            Positioned(
              top: 80.0, // Mova o texto para mais acima
              left: 16.0, // Define a posição à esquerda do Card
              right: 16.0, // Define a posição à direita do Card
              child: Text(
                'Cart',
                textAlign: TextAlign.center, // Centralize o texto
                style: TextStyle(
                  fontSize: 25, // Tamanho da fonte em 40px
                  fontWeight: FontWeight.bold, // Negrito
                ),
              ),
            ),


            Positioned(
              top: 150.0, // Define a posição superior do Card
              left: 16.0, // Define a posição à esquerda do Card
              right: 10.0, // Define a posição à direita do Card
              child: Container(
                height: 150, // Altura desejada do Card
                child: Card(
                  clipBehavior: Clip.antiAlias,
                  elevation: 4.0, // Elevação do Card
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40.0), // Borda arredondada
                    side: BorderSide(
                      color: Colors.grey.shade300, // Cor da borda cinza
                      width: 1.0, // Largura da borda de 1 pixel
                    ),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.fromLTRB(10, 10.0, 0.0, 10.0), // Adicione o padding para mover a imagem para baixo
                        child: AspectRatio(
                          aspectRatio: 1.0 / 1.0,
                          child: Image.network(
                            'https://cdn.discordapp.com/attachments/1144320039579816068/1155649798079262821/images-removebg-preview.png',
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(10, 50.0, 16.0, 0.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const <Widget>[
                              Text(
                                'Veggie tomato mix',
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold, // Deixe apenas o título em negrito
                                ),
                              ),
                              SizedBox(height: 8.0),
                              Text(
                                'N1,900',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFFD44E36),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),


            Positioned(
              top: 310.0, // Define a posição superior do Card
              left: 16.0, // Define a posição à esquerda do Card
              right: 10.0, // Define a posição à direita do Card
              child: Container(
                height: 150, // Altura desejada do Card
                child: Card(
                  clipBehavior: Clip.antiAlias,
                  elevation: 4.0, // Elevação do Card
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40.0), // Borda arredondada
                    side: BorderSide(
                      color: Colors.grey.shade300, // Cor da borda cinza
                      width: 1.0, // Largura da borda de 1 pixel
                    ),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.fromLTRB(10, 10.0, 0.0, 10.0), // Adicione o padding para mover a imagem para baixo
                        child: AspectRatio(
                          aspectRatio: 1.0 / 1.0,
                          child: Image.network(
                            'https://cdn.discordapp.com/attachments/1144320039579816068/1155649798079262821/images-removebg-preview.png',
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(10, 50.0, 16.0, 0.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const <Widget>[
                              Text(
                                'Veggie tomato mix',
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold, // Deixe apenas o título em negrito
                                ),
                              ),
                              SizedBox(height: 8.0),
                              Text(
                                'N1,900',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFFD44E36),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),



            Positioned(
              left: 20.0,
              bottom: 20.0,
              child: Container(
                width: MediaQuery
                    .of(context)
                    .size
                    .width * 0.9,
                height: MediaQuery
                    .of(context)
                    .size
                    .height * 0.12,
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 20.0),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed('/home');
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xFFD44E36),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                            40.0), // Define o borderRadius como 40 pixels
                      ),
                    ),
                    child: Text(
                      'Complete Order',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 19
                      ),
                    ),
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











class QuartaPagina extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: Container(
        color: Colors.white,
        child: Stack(
          children: [

            Positioned(
              left: 5.0, // Posição à esquerda
              top: 40.0, // Posição superior
              child: IconButton(
                icon: Icon(
                  Icons.arrow_back, // Ícone de voltar
                  size: 30, // Tamanho do ícone
                  color: Colors.grey, // Cor do ícone
                ),
                onPressed: () {
                  Navigator.of(context).pushNamed('/home'); // Navegar para a rota "/home"
                },
              ),
            ),

            Positioned(
              right: 16.0,
              top: 45.0,
              child: Container(
                width: MediaQuery.of(context).size.width * 0.8,
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Search',
                          prefixIcon: Icon(
                            Icons.search,
                            size: 30,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.search,
                        size: 30,
                        color: Colors.transparent,
                      ),
                      onPressed: () {
                        // Implemente a ação da pesquisa aqui
                      },
                    ),
                  ],
                ),
              ),
            ),



            Positioned(
              top: 110.0, // Mova o texto para mais acima
              left: 16.0, // Define a posição à esquerda do Card
              right: 16.0, // Define a posição à direita do Card
              child: Text(
                'Found 6 results',
                textAlign: TextAlign.center, // Centralize o texto
                style: TextStyle(
                  fontSize: 25, // Tamanho da fonte em 40px
                  fontWeight: FontWeight.bold, // Negrito
                ),
              ),
            ),


            Positioned(
              top: 150.0, // Define a posição superior do Card
              left: 16.0, // Define a posição à esquerda do Card
              right: 205.0, // Define a posição à direita do Card
              child: Container(
                height: 250, // Altura desejada do Card
                child: Card(
                  clipBehavior: Clip.antiAlias,
                  elevation: 4.0, // Elevação do Card
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40.0), // Borda arredondada
                    side: BorderSide(
                      color: Colors.grey.shade300, // Cor da borda cinza
                      width: 1.0, // Largura da borda de 1 pixel
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.fromLTRB(16.0, 20.0, 16.0, 0.0), // Adicione o padding para mover a imagem para baixo
                        child: AspectRatio(
                          aspectRatio: 40.0 / 40.0,
                          child: Image.network(
                            'https://cdn.discordapp.com/attachments/1144320039579816068/1155649798079262821/images-removebg-preview.png',
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 0.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: const <Widget>[
                            Text(
                              'Veggie tomato mix',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold, // Deixe apenas o título em negrito
                              ),
                            ),
                            SizedBox(height: 8.0),
                            Text(
                              'N1,900',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFFD44E36),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            Positioned(
              top: 150.0, // Define a posição superior do Card
              left: 200.0, // Define a posição à esquerda do Card
              right: 20.0, // Define a posição à direita do Card
              child: Container(
                height: 250, // Altura desejada do Card
                child: Card(
                  clipBehavior: Clip.antiAlias,
                  elevation: 4.0, // Elevação do Card
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40.0), // Borda arredondada
                    side: BorderSide(
                      color: Colors.grey.shade300, // Cor da borda cinza
                      width: 1.0, // Largura da borda de 1 pixel
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.fromLTRB(16.0, 20.0, 16.0, 0.0), // Adicione o padding para mover a imagem para baixo
                        child: AspectRatio(
                          aspectRatio: 40.0 / 40.0,
                          child: Image.network(
                            'https://cdn.discordapp.com/attachments/1144320039579816068/1155649798079262821/images-removebg-preview.png',
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 0.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: const <Widget>[
                            Text(
                              'Veggie tomato mix',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold, // Deixe apenas o título em negrito
                              ),
                            ),
                            SizedBox(height: 8.0),
                            Text(
                              'N1,900',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFFD44E36),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),


            Positioned(
              top: 415.0, // Define a posição superior do Card
              left: 200.0, // Define a posição à esquerda do Card
              right: 20.0, // Define a posição à direita do Card
              child: Container(
                height: 250, // Altura desejada do Card
                child: Card(
                  clipBehavior: Clip.antiAlias,
                  elevation: 4.0, // Elevação do Card
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40.0), // Borda arredondada
                    side: BorderSide(
                      color: Colors.grey.shade300, // Cor da borda cinza
                      width: 1.0, // Largura da borda de 1 pixel
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.fromLTRB(16.0, 20.0, 16.0, 0.0), // Adicione o padding para mover a imagem para baixo
                        child: AspectRatio(
                          aspectRatio: 40.0 / 40.0,
                          child: Image.network(
                            'https://cdn.discordapp.com/attachments/1144320039579816068/1155649798079262821/images-removebg-preview.png',
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 0.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: const <Widget>[
                            Text(
                              'Veggie tomato mix',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold, // Deixe apenas o título em negrito
                              ),
                            ),
                            SizedBox(height: 8.0),
                            Text(
                              'N1,900',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFFD44E36),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            Positioned(
              top: 415.0, // Define a posição superior do Card
              left: 16.0, // Define a posição à esquerda do Card
              right: 205.0, // Define a posição à direita do Card
              child: Container(
                height: 250, // Altura desejada do Card
                child: Card(
                  clipBehavior: Clip.antiAlias,
                  elevation: 4.0, // Elevação do Card
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40.0), // Borda arredondada
                    side: BorderSide(
                      color: Colors.grey.shade300, // Cor da borda cinza
                      width: 1.0, // Largura da borda de 1 pixel
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.fromLTRB(16.0, 20.0, 16.0, 0.0), // Adicione o padding para mover a imagem para baixo
                        child: AspectRatio(
                          aspectRatio: 40.0 / 40.0,
                          child: Image.network(
                            'https://cdn.discordapp.com/attachments/1144320039579816068/1155649798079262821/images-removebg-preview.png',
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 0.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: const <Widget>[
                            Text(
                              'Veggie tomato mix',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold, // Deixe apenas o título em negrito
                              ),
                            ),
                            SizedBox(height: 8.0),
                            Text(
                              'N1,900',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFFD44E36),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),


            Positioned(
              top: 680.0, // Define a posição superior do Card
              left: 16.0, // Define a posição à esquerda do Card
              right: 205.0, // Define a posição à direita do Card
              child: Container(
                height: 250, // Altura desejada do Card
                child: Card(
                  clipBehavior: Clip.antiAlias,
                  elevation: 4.0, // Elevação do Card
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40.0), // Borda arredondada
                    side: BorderSide(
                      color: Colors.grey.shade300, // Cor da borda cinza
                      width: 1.0, // Largura da borda de 1 pixel
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.fromLTRB(16.0, 20.0, 16.0, 0.0), // Adicione o padding para mover a imagem para baixo
                        child: AspectRatio(
                          aspectRatio: 40.0 / 40.0,
                          child: Image.network(
                            'https://cdn.discordapp.com/attachments/1144320039579816068/1155649798079262821/images-removebg-preview.png',
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 0.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: const <Widget>[
                            Text(
                              'Veggie tomato mix',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold, // Deixe apenas o título em negrito
                              ),
                            ),
                            SizedBox(height: 8.0),
                            Text(
                              'N1,900',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFFD44E36),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),


            Positioned(
              top: 680.0, // Define a posição superior do Card
              left: 200.0, // Define a posição à esquerda do Card
              right: 20.0, // Define a posição à direita do Card
              child: Container(
                height: 250, // Altura desejada do Card
                child: Card(
                  clipBehavior: Clip.antiAlias,
                  elevation: 4.0, // Elevação do Card
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40.0), // Borda arredondada
                    side: BorderSide(
                      color: Colors.grey.shade300, // Cor da borda cinza
                      width: 1.0, // Largura da borda de 1 pixel
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.fromLTRB(16.0, 20.0, 16.0, 0.0), // Adicione o padding para mover a imagem para baixo
                        child: AspectRatio(
                          aspectRatio: 40.0 / 40.0,
                          child: Image.network(
                            'https://cdn.discordapp.com/attachments/1144320039579816068/1155649798079262821/images-removebg-preview.png',
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 0.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: const <Widget>[
                            Text(
                              'Veggie tomato mix',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold, // Deixe apenas o título em negrito
                              ),
                            ),
                            SizedBox(height: 8.0),
                            Text(
                              'N1,900',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFFD44E36),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
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





class ThirdPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      backgroundColor: Colors.white, // Defina o fundo como branco
      body: Stack(
        children: [
          Positioned(
            top: 50, // Posição no topo
            left: 0, // Posição à esquerda
            right: 0, // Posição à direita
            child: Image.network(
              'https://cdn.discordapp.com/attachments/1144320039579816068/1155649798079262821/images-removebg-preview.png',
              fit: BoxFit.contain,
              height: 300,
              width: 300,// Ajusta a imagem ao espaço disponível
            ),
          ),
          Center(
            child: Container(
              padding: EdgeInsets.only(top: 0), // Ajuste o valor conforme necessário
              child: Text(
                'Veggie tomato mix',
                style: TextStyle(
                  fontSize: 30.0,// Define o tamanho da fonte como 40 pixels
                  fontWeight: FontWeight.bold, // Define o texto como negrito
                ),
              ),
            ),
          ),

          Center(
            child: Container(
              padding: EdgeInsets.only(top: 100.0), // Ajuste o valor conforme necessário
              child: Text(
                'N1,900',
                style: TextStyle(
                  fontSize: 25.0,// Define o tamanho da fonte como 40 pixels
                  fontWeight: FontWeight.bold, // Define o texto como negrito
                  color: Color(0xFFD44E36),
                ),
              ),
            ),
          ),

          Positioned(
            left: 30.0, // Posição à esquerda
            bottom: 270.0, // Posição superior
            right: 80,
            child: Text(
              'Delivery info',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),


          Positioned(
            left: 30.0, // Posição à esquerda
            bottom: 170.0, // Posição superior
            right: 5,
            child: Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed vestibulum justo eu fermentum.consectetur adipiscing elit. Sed vestibulum justo eu fermentum.Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
              style: TextStyle(
                fontSize: 16.0,
              ),
            ),
          ),




          Positioned(
            left: 20.0,
            bottom: 20.0,
            child: Container(
              width: MediaQuery
                  .of(context)
                  .size
                  .width * 0.9,
              height: MediaQuery
                  .of(context)
                  .size
                  .height * 0.12,
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 20.0),
                child: ElevatedButton(
                  onPressed: () {
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xFFD44E36),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                          40.0), // Define o borderRadius como 40 pixels
                    ),
                  ),
                  child: Text(
                    'Add to cart',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 19
                    ),
                  ),
                ),
              ),
            ),
          ),


          Positioned(
            left: 16.0, // Posição à esquerda
            top: 40.0, // Posição superior
            child: IconButton(
              icon: Icon(
                Icons.arrow_back, // Ícone de voltar
                size: 30, // Tamanho do ícone
                color: Colors.grey, // Cor do ícone
              ),
              onPressed: () {
                Navigator.of(context).pushNamed('/home'); // Navegar para a rota "/home"
              },
            ),
          ),


        ],
      ),
    );
  }
}




class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      resizeToAvoidBottomInset: false,  // Define a barra de navegação como nula (removida)
      body: Stack(
        children: [
          Container(
            color: Colors.white, // Define a cor de fundo como branca
          ),
          Positioned(
            left: 16.0, // Posição à esquerda
            top: 110.0, // Posição superior
            right: 80,
            child: Text(
              'Delicious food for you',
              style: TextStyle(
                fontSize: 40.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Positioned(
            left: 16.0, // Posição à esquerda
            top: 40.0, // Posição superior
            child: IconButton(
              icon: Icon(
                Icons.search,
                size: 30, // Define o tamanho do ícone como 20 pixels
                color: Colors.grey,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => QuartaPagina()),
                );
              },
            ),
          ),
          Positioned(
            right: 16.0, // Posição à direita
            top: 250.0, // Posição inferior
            child: Container(
              width: MediaQuery.of(context).size.width * 0.8, // Largura da barra de pesquisa
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Search',
                        prefixIcon: Icon(
                          Icons.search,
                          size: 30,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.search,
                      size: 30,
                      color: Colors.transparent,
                    ),
                    onPressed: () {
                      // Implemente a ação da pesquisa aqui
                    },
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            right: 16.0, // Posição à esquerda
            top: 40.0, // Posição superior
            child: IconButton(
              icon: Icon(
                Icons.shopping_cart,
                size: 30, // Define o tamanho do ícone como 30 pixels
                color: Colors.grey, // Define a cor do ícone como cinza
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => QuintaPagina()),
                );
              },
            ),
          ),


          Positioned(
            left: 100.0, // Posição à direita
            bottom: 25.0, // Posição inferior
            child: IconButton(
              icon: Icon(
                Icons.home,
                size: 30,
                color: Colors.grey,
              ),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => MyHomePage(),

                ));
              },
            ),
          ),


          Positioned(
            left: 150.0, // Posição à esquerda
            bottom: 25.0, // Posição inferior
            child: IconButton(
              icon: Icon(
                Icons.favorite,
                size: 30,
                color: Colors.grey,
              ),
              onPressed: () {
                // Implemente a ação do ícone "heart" aqui
              },
            ),
          ),


          Positioned(
            left: 200.0, // Posição à esquerda
            bottom: 25.0, // Posição inferior
            child: IconButton(
              icon: Icon(
                Icons.account_circle,
                size: 30,
                color: Colors.grey,
              ),
              onPressed: () {
                // Implemente a ação do ícone "account" aqui
              },
            ),
          ),




          Positioned(
            left: 250, // Posição à direita
            bottom: 25.0, // Posição inferior
            child: IconButton(
              icon: Icon(
                Icons.history,
                size: 30,
                color: Colors.grey,
              ),
              onPressed: () {
                // Implemente a ação do ícone "history" aqui
              },
            ),
          ),




          Positioned(
            top: 310,
            left: 50,
            child: ElevatedButton(
              onPressed: () {
                // Ação a ser realizada quando o botão for pressionado
              },

              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                elevation: MaterialStateProperty.all<double>(0),
                foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
                textStyle: MaterialStateProperty.all<TextStyle>(
                  TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold,), // Define o tamanho da fonte como 20 pixels
                ),
              ),

              child: Text('Foods',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFFD44E36),
                ),
            ),
          ),
          ),






          Positioned(
            top: 310,
            left: 150,
            child: ElevatedButton(
              onPressed: () {
                // Ação a ser realizada quando o botão for pressionado
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                elevation: MaterialStateProperty.all<double>(0),
                foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
                textStyle: MaterialStateProperty.all<TextStyle>(
                  TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              child: Text(
                'Drinks',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),




          Positioned(
            top: 310,
            left: 250,
            child: ElevatedButton(
              onPressed: () {
                // Ação a ser realizada quando o botão for pressionado
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                elevation: MaterialStateProperty.all<double>(0),
                foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
                textStyle: MaterialStateProperty.all<TextStyle>(
                  TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              child: Text(
                'Snacks',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),



          Positioned(
            left: 0, // Posição à esquerda
            bottom: 120.0, // Posição no canto inferior
            right: 16.0, // Posição à direita
            child: CarouselSlider(
              items: [
                // Adicione os itens do seu carousel aqui

                Container(
                  width: 350.0, // Largura desejada
                  height: 350.0, // Altura desejada
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(40.0), // Border-radius de 40 pixels
                    border: Border.all(
                      color: Colors.grey.shade300, // Cor da borda cinza
                      width: 1.0, // Largura da borda de 1 pixel
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.network(
                        'https://cdn.discordapp.com/attachments/1144320039579816068/1155649798079262821/images-removebg-preview.png',
                        fit: BoxFit.contain,
                        height: 150,
                        width: 150, // Ajustar a imagem ao container
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => ThirdPage(),

                          ));
                        },
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                          elevation: MaterialStateProperty.all<double>(0),
                          foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
                          textStyle: MaterialStateProperty.all<TextStyle>(
                            TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold,), // Define o tamanho da fonte como 20 pixels
                          ),
                        ),
                        child: Text('Veggie tomato mix', textAlign: TextAlign.center),

                      ),
                      Text('N1,900',
                          textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFFD44E36),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 350.0, // Largura desejada
                  height: 350.0, // Altura desejada
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(40.0), // Border-radius de 40 pixels
                    border: Border.all(
                      color: Colors.grey.shade300, // Cor da borda cinza
                      width: 1.0, // Largura da borda de 1 pixel
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.network(
                        'https://cdn.discordapp.com/attachments/1144320039579816068/1155649798079262821/images-removebg-preview.png',
                        fit: BoxFit.contain,
                        height: 150,
                        width: 150, // Ajustar a imagem ao container
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => ThirdPage(),

                          ));
                        },
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                          elevation: MaterialStateProperty.all<double>(0),
                          foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
                          textStyle: MaterialStateProperty.all<TextStyle>(
                            TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold,), // Define o tamanho da fonte como 20 pixels
                          ),
                        ),
                        child: Text('Veggie tomato mix', textAlign: TextAlign.center),

                      ),
                      Text('N1,900',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFFD44E36),
                        ),
                      ),
                    ],
                  ),
                ),

              ],
              options: CarouselOptions(
                height: 280.0,// Altura do carousel
                aspectRatio: 16 / 9, // Proporção de aspecto dos itens
                viewportFraction: 0.5, // Fração de visualização dos itens
                initialPage: 0, // Página inicial
                enableInfiniteScroll: false, // Rolagem infinita
                reverse: true, // Rolagem reversa
                autoPlay: false, // Reprodução automática
                autoPlayInterval: Duration(seconds: 3), // Intervalo de reprodução automática
                autoPlayAnimationDuration: Duration(milliseconds: 800), // Duração da animação de reprodução automática
                autoPlayCurve: Curves.fastOutSlowIn, // Curva de animação de reprodução automática
                enlargeCenterPage: true, // Ampliar a página central
                scrollDirection: Axis.horizontal, // Direção de rolagem (horizontal)
              ),
            ),
          ),
      ]
      ),
    );
  }
}