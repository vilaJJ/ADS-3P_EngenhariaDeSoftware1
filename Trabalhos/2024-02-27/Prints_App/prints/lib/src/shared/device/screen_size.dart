import 'package:flutter/material.dart';

class ScreenSize {
  late BuildContext _context;

  ScreenSize(BuildContext context) {
    _context = context;
  }

  double height({double percentual = 1}) =>
      MediaQuery.of(_context).size.height * percentual;

  double width({double percentual = 1}) =>
      MediaQuery.of(_context).size.width * percentual;
}
