// import 'dart:ui';
// import 'package:flutter/material.dart';
// import 'package:tyrads_sdk/src/acmo/modules/in_app_notification/widgets/notification_card.dart';

// class RewardCardWidget extends StatelessWidget {
//   final String headerText;
//   final String? headerIconPath;
//   final String coinImagePath;
//   final String? bonusText;
//   final String descriptionText;
//   final String buttonText;
//   final VoidCallback? onButtonPressed;

//   const RewardCardWidget({
//     super.key,
//     required this.headerText,
//     this.headerIconPath,
//     required this.coinImagePath,
//     this.bonusText,
//     required this.descriptionText,
//     this.buttonText = 'Keep Playing',
//     this.onButtonPressed,
//   });

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
//             child: Stack(
//               clipBehavior: Clip.none,
//               children: [
//                 ClipRRect(
//                   borderRadius: BorderRadius.circular(16),
//                   child: NotificationCard(
//                     width: 328,
//                     height: 368,
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.center,
//                       children: [
//                         const SizedBox(height: 8),
//                         // Header Title with Icon
//                         Row(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           children: [
//                             Text(
//                               headerText,
//                               style: const TextStyle(
//                                 color: Color(0xFF1E2020),
//                                 fontSize: 24,
//                                 fontWeight: FontWeight.w900,
//                                 height: 1.2,
//                               ),
//                               textAlign: TextAlign.center,
//                             ),
//                             if (headerIconPath != null) ...[
//                               const SizedBox(width: 8),
//                               Image.asset(
//                                 headerIconPath!,
//                                 package: 'tyrads_sdk',
//                                 width: 24,
//                                 height: 24,
//                                 fit: BoxFit.contain,
//                               ),
//                             ],
//                           ],
//                         ),
//                         const SizedBox(height: 16),
//                         // Divider
//                         Container(
//                           width: 296,
//                           height: 1,
//                           color: const Color(0xFFE0E2E7),
//                         ),
//                         const SizedBox(height: 16),
//                         // Content Area
//                         Expanded(
//                           child: Center(
//                             child: Column(
//                               mainAxisAlignment: MainAxisAlignment.center,
//                               children: [
//                                 // Coin Image with Bonus Text overlay
//                                 SizedBox(
//                                   width: 120,
//                                   height: 103.48,
//                                   child: Stack(
//                                     clipBehavior: Clip.none,
//                                     alignment: Alignment.center,
//                                     children: [
//                                       Image.asset(
//                                         coinImagePath,
//                                         package: 'tyrads_sdk',
//                                         width: 97.94,
//                                         height: 103.48,
//                                         fit: BoxFit.contain,
//                                       ),
//                                       if (bonusText != null)
//                                         Positioned(
//                                           top: 55,
//                                           left: 60,
//                                           child: Text(
//                                             bonusText!,
//                                             style: const TextStyle(
//                                               color: Colors.white,
//                                               fontSize: 32,
//                                               fontWeight: FontWeight.bold,
//                                               shadows: [
//                                                 Shadow(
//                                                   color: Color(0x40000000),
//                                                   blurRadius: 4,
//                                                   offset: Offset(0, 2),
//                                                 ),
//                                               ],
//                                             ),
//                                           ),
//                                         ),
//                                     ],
//                                   ),
//                                 ),
//                                 const SizedBox(height: 24),
//                                 Padding(
//                                   padding: const EdgeInsets.symmetric(
//                                       horizontal: 16),
//                                   child: Text(
//                                     descriptionText,
//                                     style: const TextStyle(
//                                       color: Color(0xFF1E2020),
//                                       fontSize: 14,
//                                       fontWeight: FontWeight.bold,
//                                       height: 1.4,
//                                     ),
//                                     textAlign: TextAlign.center,
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ),
//                         // Action Button
//                         SizedBox(
//                           width: 296,
//                           height: 42,
//                           child: OutlinedButton(
//                             onPressed: onButtonPressed ??
//                                 () => Navigator.of(context).pop(),
//                             style: OutlinedButton.styleFrom(
//                               backgroundColor: const Color(0xFFFFFFFF),
//                               side: const BorderSide(
//                                 color: Color(0xFF02B5BE),
//                                 width: 2,
//                               ),
//                               shape: RoundedRectangleBorder(
//                                 borderRadius: BorderRadius.circular(
//                                     999), // infinity radius
//                               ),
//                               padding: const EdgeInsets.symmetric(
//                                 horizontal: 24,
//                                 vertical: 12,
//                               ),
//                             ),
//                             child: Text(
//                               buttonText,
//                               style: const TextStyle(
//                                 color: Color(0xFF02B5BE),
//                                 fontSize: 16,
//                                 fontWeight: FontWeight.w600,
//                               ),
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//                 // Close Button - positioned at top right corner with 8px margin
//                 Positioned(
//                   top: 12,
//                   right: 12,
//                   child: GestureDetector(
//                     onTap: () => Navigator.of(context).pop(),
//                     child: Container(
//                       width: 28,
//                       height: 28,
//                       decoration: const BoxDecoration(
//                         color: Color(0xFF1E2020),
//                         shape: BoxShape.circle,
//                       ),
//                       child: const Icon(
//                         Icons.close,
//                         color: Colors.white,
//                         size: 16,
//                       ),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
