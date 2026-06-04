// import 'package:flutter/material.dart';

// class BonusGameList extends StatefulWidget {
//   const BonusGameList({super.key});

//   @override
//   State<BonusGameList> createState() => _BonusGameListState();
// }

// class _BonusGameListState extends State<BonusGameList> {
//   int? expandedIndex;

//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       width: 296,
//       height: 238,
//       child: ListView(
//         padding: EdgeInsets.zero,
//         children: [
//           _buildGameCard(
//             index: 0,
//             gameIcon: 'assets/icons/logo.png',
//             gameName: 'Lords Mobile: Kingdom War',
//             purchaseCount: 2,
//           ),
//           const SizedBox(height: 12),
//           _buildGameCard(
//             index: 1,
//             gameIcon: 'assets/icons/logo.png',
//             gameName: 'Dice Dreams',
//             purchaseCount: 2,
//           ),
//         ],
//       ),
//     );
//   }

//   Widget _buildGameCard({
//     required int index,
//     required String gameIcon,
//     required String gameName,
//     required int purchaseCount,
//   }) {
//     final isExpanded = expandedIndex == index;

//     return Column(
//       children: [
//         // Game Header
//         GestureDetector(
//           onTap: () {
//             setState(() {
//               expandedIndex = isExpanded ? null : index;
//             });
//           },
//           child: Container(
//             width: 284,
//             height: 48,
//             padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
//             decoration: BoxDecoration(
//               gradient: const LinearGradient(
//                 begin: Alignment.bottomCenter,
//                 end: Alignment.topCenter,
//                 stops: [0.0, 0.25],
//                 colors: [
//                   Color(0xFF80D9E0),
//                   Color(0xFFFFFFFF),
//                 ],
//               ),
//               borderRadius: BorderRadius.circular(4),
//               boxShadow: const [
//                 BoxShadow(
//                   color: Color(0x1F000000),
//                   offset: Offset(0, 1),
//                   blurRadius: 3,
//                   spreadRadius: 0,
//                 ),
//                 BoxShadow(
//                   color: Color(0x3D000000),
//                   offset: Offset(0, 4),
//                   blurRadius: 8,
//                   spreadRadius: 0,
//                 ),
//               ],
//             ),
//             child: Row(
//               children: [
//                 // Game Icon
//                 Container(
//                   width: 32,
//                   height: 32,
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(4),
//                     image: DecorationImage(
//                       image: AssetImage(
//                         gameIcon,
//                         package: 'tyrads_sdk',
//                       ),
//                       fit: BoxFit.cover,
//                     ),
//                   ),
//                 ),
//                 const SizedBox(width: 8),
//                 // Game Name
//                 Expanded(
//                   child: SizedBox(
//                     height: 16,
//                     child: Text(
//                       gameName,
//                       maxLines: 1,
//                       overflow: TextOverflow.ellipsis,
//                       style: const TextStyle(
//                         color: Color(0xFF1E2020),
//                         fontSize: 12,
//                         fontWeight: FontWeight.w700,
//                         height: 1.0,
//                       ),
//                     ),
//                   ),
//                 ),
//                 // Expand/Collapse Icon
//                 Icon(
//                     isExpanded
//                         ? Icons.keyboard_arrow_up
//                         : Icons.keyboard_arrow_down,
//                     color: const Color(0xFF1E2020),
//                     size: 16),
//               ],
//             ),
//           ),
//         ),
//         // Purchase Options (when expanded)
//         if (isExpanded)
//           Container(
//             width: 284,
//             padding: const EdgeInsets.all(16),
//             decoration: BoxDecoration(
//               gradient: const LinearGradient(
//                 begin: Alignment.topCenter,
//                 end: Alignment.bottomCenter,
//                 stops: [-1.0278, 0.376],
//                 colors: [
//                   Color(0xFFB3E5EC),
//                   Color(0xFFFFFFFF),
//                 ],
//               ),
//               borderRadius: const BorderRadius.only(
//                 bottomLeft: Radius.circular(12),
//                 bottomRight: Radius.circular(12),
//               ),
//               border: Border.all(
//                 color: const Color(0xFFE5E5E5),
//                 width: 1,
//               ),
//             ),
//             child: Column(
//               children: List.generate(
//                 purchaseCount,
//                 (i) => Padding(
//                   padding:
//                       EdgeInsets.only(bottom: i < purchaseCount - 1 ? 12 : 0),
//                   child: _buildPurchaseOption(),
//                 ),
//               ),
//             ),
//           ),
//       ],
//     );
//   }

//   Widget _buildPurchaseOption() {
//     return SizedBox(
//       width: 252,
//       height: 32,
//       child: Row(
//         children: [
//           // Purchase Description
//           SizedBox(
//             width: 146,
//             height: 32,
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 // Text
//                 const SizedBox(
//                   width: 146,
//                   height: 16,
//                   child: Text(
//                     'Make in-app purchase',
//                     style: TextStyle(
//                       color: Color(0xFF1E2020),
//                       fontSize: 12,
//                       fontWeight: FontWeight.w500,
//                       height: 1.0,
//                     ),
//                   ),
//                 ),
//                 // Coin Icon + Amount
//                 SizedBox(
//                   width: 47,
//                   height: 16,
//                   child: Row(
//                     mainAxisSize: MainAxisSize.min,
//                     children: [
//                       // Coin Icon
//                       Container(
//                         width: 12,
//                         height: 12,
//                         decoration: const BoxDecoration(
//                           shape: BoxShape.circle,
//                           color: Color(0xFFFFD700),
//                         ),
//                         child: const Center(
//                           child: Text(
//                             '💰',
//                             style: TextStyle(fontSize: 8),
//                           ),
//                         ),
//                       ),
//                       const SizedBox(width: 4),
//                       const Text(
//                         '200K',
//                         style: TextStyle(
//                           color: Color(0xFF1E2020),
//                           fontSize: 12,
//                           fontWeight: FontWeight.bold,
//                           height: 1.0,
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           const SizedBox(width: 12),
//           // Purchase Button
//           Container(
//             width: 90,
//             height: 32,
//             padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
//             decoration: BoxDecoration(
//               color: const Color(0xFF02B5BE),
//               borderRadius: BorderRadius.circular(4),
//             ),
//             child: const Center(
//               child: SizedBox(
//                 width: 58,
//                 height: 16,
//                 child: Text(
//                   'Purchase',
//                   textAlign: TextAlign.center,
//                   style: TextStyle(
//                     color: Colors.white,
//                     fontSize: 12,
//                     fontWeight: FontWeight.bold,
//                     height: 1.0,
//                   ),
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
