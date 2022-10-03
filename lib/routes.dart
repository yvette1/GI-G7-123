import 'package:flutter/material.dart';

import 'confirmation.dart';

Route routeBuilder(Widget Function() builder) {
  return PageRouteBuilder(
    // Builds the content of the new page.
    pageBuilder: (context, animation, secondaryAnimation) => builder(),
    // Builds the animation to transition between pages.
    // `child` is the newly built page from `pageBuilder`.
    transitionsBuilder: (context, animation, secondaryAnimation, child) =>
    child,
  );
}

//
// Route confirmationBuilder() {
//   return routeBuilder(() => const confirmationPage());
// }