// import 'dart:ui';
// import 'package:flutter/material.dart';
// import 'package:tyrads_sdk/src/acmo/modules/in_app_notification/widgets/notification_card.dart';
// import 'package:tyrads_sdk/src/acmo/modules/in_app_notification/widgets/activation_game_card.dart';

// class ActivationBonusPage extends StatelessWidget {
//   const ActivationBonusPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.transparent,
//       body: BackdropFilter(
//         filter: ImageFilter.blur(sigmaX: 4, sigmaY: 4),
//         child: Container(
//           width: double.infinity,
//           height: double.infinity,
//           color: const Color(0x80000000), // #00000080
//           child: Center(
//             child: NotificationCard(
//               width: 328,
//               height: 364,
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.start,
//                 children: [
//                   // const BonusHeader(
//                   //   title: 'Activation Bonus',
//                   //   coinAssetPath: 'assets/icons/coin_download.png',
//                   //   description: 'Activate your first game and get 1M points\ninstantly!',
//                   // ),
//                   const SizedBox(height: 16),
//                   // Game Card
//                   ActivationGameCard(
//                     gameIcon: 'assets/icons/logo.png',
//                     gameName: 'Lords Mobile:Kingdom War',
//                     onPlayNow: () {
//                       // Handle play now action
//                       print('Play Now tapped');
//                     },
//                   ),
//                   const SizedBox(height: 14),
//                   ActivationGameCard(
//                     gameIcon: 'assets/icons/logo_2.png',
//                     gameName: 'Raid: Shadow Legends',
//                     onPlayNow: () {
//                       // Handle play now action
//                       print('Play Now tapped');
//                     },
//                   ),
//                   const SizedBox(height: 14),
//                   ActivationGameCard(
//                     gameIcon: 'assets/icons/logo_3.png',
//                     gameName: 'Dice Dreams',
//                     onPlayNow: () {
//                       // Handle play now action
//                       print('Play Now tapped');
//                     },
//                   ),
//                   const SizedBox(height: 16),
//                   // Activation Limit
//                   const SizedBox(
//                     width: 296,
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.end,
//                       children: [
//                         Text(
//                           'Activation limit: ',
//                           style: TextStyle(
//                             color: Color(0xFF1E2020),
//                             fontSize: 12,
//                             fontWeight: FontWeight.w500,
//                           ),
//                         ),
//                         Text(
//                           '0/1',
//                           style: TextStyle(
//                             color: Color(0xFF1E2020),
//                             fontSize: 12,
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
