import 'package:app_fast_dish/app/utils/custom_colors.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class IntroPage extends StatefulWidget {
  @override
  _IntroPageState createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  final introKey = GlobalKey<IntroductionScreenState>();

  void _onIntroEnd(context) {
    Navigator.pushReplacementNamed(context, '/login');
  }

  Widget _buildImage(String assetName) {
    return Align(
      child: Image.asset('assets/images/$assetName.png', width: 350.0),
      alignment: Alignment.bottomCenter,
    );
  }

  @override
  Widget build(BuildContext context) {
    const bodyStyle = TextStyle(fontSize: 19.0);
    const pageDecoration = const PageDecoration(
      titleTextStyle: TextStyle(fontSize: 28.0, fontWeight: FontWeight.w700),
      bodyTextStyle: bodyStyle,
      descriptionPadding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
      pageColor: Colors.white,
      imagePadding: EdgeInsets.zero,
    );
    return IntroductionScreen(
      pages: [
        PageViewModel(
          title: "Pediu, Chegou!",
          body:
              "Faça seus pedidos nos melhores restaurantes locais com entrega fácil e sob demanda.",
          image: _buildImage('intro_one'),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Ofertas de entrega grátis",
          body:
              "Entrega gratuita para novos clientes, e com cupons diario de desconto.",
          image: _buildImage('intro_two'),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Aqui você mata sua fome",
          body:
              "Mais de 500 estabelecimentos cadastrados em nossa plataforma. Tem pra todos gostos.",
          image: _buildImage('intro_three'),
          decoration: pageDecoration,
        ),
      ],
      onDone: () => _onIntroEnd(context),
      showSkipButton: true,
      skipFlex: 0,
      nextFlex: 0,
      skip: const Text('Pular'),
      next: const Icon(Icons.arrow_forward),
      done: const Text(
        'Pronto',
        style: TextStyle(fontWeight: FontWeight.w600),
      ),
      dotsDecorator: DotsDecorator(
        size: Size(10.0, 10.0),
        color: CustomColors.alizarinCrimson,
        activeColor: CustomColors.pomegranate,
        activeSize: Size(44.0, 10.0),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(25.0)),
        ),
      ),
    );
  }
}
