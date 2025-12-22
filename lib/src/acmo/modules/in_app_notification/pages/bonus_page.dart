// import 'dart:ui';
// import 'package:flutter/material.dart';
// import 'package:tyrads_sdk/src/acmo/modules/in_app_notification/widgets/notification_card.dart';
// import 'package:tyrads_sdk/src/acmo/modules/in_app_notification/widgets/bonus_game_list.dart';

// class BonusPage extends StatelessWidget {
//   const BonusPage({super.key});

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
//           child: const Center(
//             child: NotificationCard(
//               height: 426,
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.start,
//                 children: [
//                   // BonusHeader(
//                   //   title: 'Purchase Bonus',
//                   //   coinAssetPath: 'assets/icons/coin_top_bonus.png',
//                   //   description: 'Make a purchase in any activated game and get\n1M points instantly!',
//                   // ),
//                   SizedBox(height: 12),
//                   BonusGameList(),
//                   SizedBox(height: 12),
//                   // Purchase Limit
//                   SizedBox(
//                     width: 296,
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.end,
//                       children: [
//                         Text(
//                           'Purchase limit: ',
//                           style: TextStyle(
//                             color: Color(0xFF1E2020),
//                             fontSize: 12,
//                             fontWeight: FontWeight.w500,
//                           ),
//                         ),
//                         Text(
//                           '0/5',
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
