
import 'package:flutter/material.dart';
import '../Screens/ResponsiveUI.dart';
import 'StoreBtn.dart';

class FeedScreen extends StatelessWidget {
  const FeedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Housie',
                style: TextStyle(
                  fontSize: ResponsiveUI.isLessThan1250(context) ? 50 : 60,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,

                ),
              ),
              SizedBox(height: 40),
              Container(
                width: ResponsiveUI.isLessThan900(context)
                    ? double.infinity
                    : ResponsiveUI.isLessThan1250(context)
                        ? 500
                        : 600,
                child: Text(
                    "Uma plataforma de serviços domésticos on-line para ajudar os proprietários a reservar serviços domésticos confiáveis e de alta qualidade, como encanamento, conserto de ar condicionado, controle de pragas e muito mais. ministrados por profissionais competentes e treinados. Nós nos esforçamos para tornar o processo de encontrar e contratar provedores de serviços domésticos fácil, conveniente e agradável para todos.",
                      style: TextStyle(
                    fontSize: ResponsiveUI.isLessThan1250(context) ? 14 : 17,
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(height:80),
               Row(
                children: [

                  StoreBtn(
                    image: 'assets/playStore.png',
                    text: 'Google Play',
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
