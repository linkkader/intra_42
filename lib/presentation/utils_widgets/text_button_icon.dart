// Created by linkkader on 24/10/2022

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../core/params/colors.dart';
import '../../main.dart';

class TextButtonIcon extends StatelessWidget {
  final Function()? onTap;
  final String text;
  const TextButtonIcon({Key? key, this.onTap, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
          padding: const EdgeInsets.only(left: 8),
          child: Row(
            children: [
              Text(
                  text,
                  style: GoogleFonts.inter(color: TextColorConstants.kTitleSecondaryColor, fontWeight: FontWeight.w500, fontSize: 12)
              ),
              const SizedBox(
                width: 25,
                child: Icon(
                  Icons.navigate_next,
                  color: TextColorConstants.kTitleSecondaryColor, size: 28,
                ),
              )
            ],
          )
      ),
    );
  }
}
