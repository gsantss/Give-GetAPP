import 'package:flutter/material.dart';
import 'package:give_get/shared/colors.dart';

class NoteWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: size.width * .87,
      height: size.width * .46,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.black26),
          borderRadius: BorderRadius.circular(size.width * .05)),
      child: Row(
        children: [
          Container(
            height: double.maxFinite,
            width: size.width * .27,
            decoration: BoxDecoration(
                color: AppColors.blueGive,
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(20),
                    bottomLeft: Radius.circular(20))),
            child: Center(child: Image.asset("assets/images/hand_shake.png")),
          ),
          Container(
            height: double.maxFinite,
            width: size.width * .676,
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                    bottomRight: Radius.circular(20))),
            child: Stack(children: [
              Positioned(
                  top: size.width * .05,
                  left: size.width * .08,
                  child: Text(
                    "DOE E GANHE",
                    style: TextStyle(
                        color: AppColors.blue,
                        fontSize: size.width * .042,
                        fontWeight: FontWeight.bold),
                  )),
              Positioned(
                  top: size.width * .13,
                  left: size.width * .13,
                  child: Container(
                    constraints: BoxConstraints(maxWidth: size.width * .39),
                    child: Text(
                      "Ao doar um artigo eletrônico, você acúmula pontos e pode trocar por benefícios, cursos, entre outros.",
                      style: TextStyle(
                        color: AppColors.blueGive,
                        fontSize: size.width * .034,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )),
            ]),
          ),
        ],
      ),
    );
  }
}
