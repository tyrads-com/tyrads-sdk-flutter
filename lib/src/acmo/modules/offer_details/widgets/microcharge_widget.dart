// import 'package:cached_network_image/cached_network_image.dart';
// import 'package:flutter/material.dart';
// import 'package:numeral/numeral.dart';
// import 'package:timelines_plus/timelines_plus.dart';
// import 'package:tyrads_sdk/src/acmo/modules/offer_details/controller.dart';
// import 'package:tyrads_sdk/src/gen/assets.gen.dart';
//
// class MicroChargeWidget extends StatelessWidget {
//   const MicroChargeWidget({
//     super.key,
//     required AcmoOffersDetailsController controller,
//   }) : _controller = controller;
//
//   final AcmoOffersDetailsController _controller;
//
//   @override
//   Widget build(BuildContext context) {
//     final processes = [
//       'Level 0\n10%',
//       'Level 1\n100%',
//       'Level 2\n125%',
//       'Level 3\n150%',
//       'Level 4\n175%',
//       'Level 5\n200%',
//     ];
//     return Container(
//       color: Colors.white,
//       padding: const EdgeInsets.all(16),
//       child: Container(
//         decoration: BoxDecoration(
//           color: Colors.white,
//           borderRadius: BorderRadius.circular(10),
//           boxShadow: [
//             BoxShadow(
//               color: Colors.black.withOpacity(0.25),
//               blurRadius: 6,
//               offset: const Offset(0, 1),
//             ),
//           ],
//         ),
//         child: Column(
//           children: [
//             Stack(
//               alignment: Alignment.bottomCenter,
//               children: [
//                 Container(
//                   decoration: BoxDecoration(
//                     color: Colors.white,
//                     borderRadius: BorderRadius.circular(10),
//                     boxShadow: [
//                       BoxShadow(
//                         color: Colors.black.withOpacity(0.25),
//                         blurRadius: 2,
//                         offset: const Offset(0, 2),
//                       ),
//                     ],
//                   ),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Padding(
//                         padding: const EdgeInsets.all(14.0),
//                         child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             const Text(
//                               "MICRO CHARGE",
//                               style: TextStyle(
//                                 fontWeight: FontWeight.w800,
//                                 fontSize: 18,
//                               ),
//                             ),
//                             Text(
//                               "Get up to ${_controller.microCharge.totalReward}%",
//                               style: const TextStyle(
//                                 fontWeight: FontWeight.w800,
//                                 fontSize: 18,
//                                 color: Color(0xFF26A1C8),
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                       Container(
//                         height: 40,
//                         width: double.maxFinite,
//                         decoration: const BoxDecoration(
//                           color: Color(0xFF26A1C8),
//                           borderRadius: BorderRadius.only(
//                             bottomLeft: Radius.circular(10),
//                             bottomRight: Radius.circular(10),
//                           ),
//                         ),
//                         padding: const EdgeInsets.all(10),
//                         child: Text(
//                           "${_controller.microCharge.currentEarnedReward}% Bonus Rewards",
//                           style: const TextStyle(
//                             color: Colors.white,
//                             fontWeight: FontWeight.w700,
//                           ),
//                         ),
//                       )
//                     ],
//                   ),
//                 ),
//                 Positioned(
//                   bottom: 15,
//                   right: 30,
//                   child: Stack(
//                     children: [
//                       Assets.images.chargeCan.image(
//                         height: 83,
//                       ),
//                       // Transform(
//                       //   transform: Matrix4.rotationZ(0.3),
//                       //   child: Container(
//                       //     color: const Color(0xFF26A1C8),
//                       //     child: Text("data"),
//                       //   ),
//                       // )
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//             const SizedBox(
//               height: 16,
//             ),
//             SizedBox(
//               height: 75,
//               child: Timeline.tileBuilder(
//                 padding: const EdgeInsets.symmetric(
//                   vertical: 2,
//                 ),
//                 theme: TimelineThemeData(
//                   direction: Axis.horizontal,
//                   nodePosition: 0,
//                   connectorTheme: const ConnectorThemeData(
//                     thickness: 3.5,
//                     color: Color(0xFFD9D9D9),
//                   ),
//                   indicatorTheme: const IndicatorThemeData(
//                     size: 23.0,
//                     color: Color(0xFFD9D9D9),
//                   ),
//                 ),
//                 builder: TimelineTileBuilder.connected(
//                   connectionDirection: ConnectionDirection.before,
//                   firstConnectorBuilder: (context) => const SolidLineConnector(
//                     color: Color(0xFF26A1C8),
//                   ),
//                   lastConnectorBuilder: (context) => const SolidLineConnector(),
//                   itemCount: processes.length,
//                   itemExtentBuilder: (context, __) =>
//                   (MediaQuery.of(context).size.width - 32) /
//                       _controller.microCharge.levels.length,
//                   contentsBuilder: (context, index) {
//                     return Padding(
//                       padding: const EdgeInsets.only(top: 8.0),
//                       child: Text(
//                         "${_controller.microCharge.levels[index].rewardPercentage}%\nLevel $index",
//                         textAlign: TextAlign.center,
//                         style: TextStyle(
//                           fontWeight: FontWeight.bold,
//                           color:
//                           _controller.microCharge.levels[index].isCompleted
//                               ? const Color(0xFF26A1C8)
//                               : const Color(0xFF888888),
//                           fontSize: 10,
//                         ),
//                       ),
//                     );
//                   },
//                   connectorBuilder: (_, index, type) {
//                     if (_controller.microCharge.levels[index].isCompleted) {
//                       return const SolidLineConnector(
//                         color: Color(0xFF26A1C8),
//                       );
//                     }
//                     return const DecoratedLineConnector();
//                   },
//                   indicatorBuilder: (_, index) {
//                     return Stack(
//                       alignment: Alignment.center,
//                       children: [
//                         DotIndicator(
//                           color:
//                           _controller.microCharge.levels[index].isCompleted
//                               ? const Color(0xFF26A1C8)
//                               : null,
//                         ),
//                         _controller.microCharge.levels[index].isCompleted
//                             ? Assets.images.flashGolden.image(height: 28)
//                             : Assets.images.flashSliver.image(height: 28)
//                       ],
//                     );
//                   },
//                 ),
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.all(16.0),
//               child: Column(
//                 children: [
//                   Container(
//                     decoration: BoxDecoration(
//                       color: const Color(0xFFEAF8F4),
//                       border: Border.all(
//                         color: const Color(0xFF2CB388),
//                         width: 1,
//                       ),
//                       borderRadius: BorderRadius.circular(35),
//                       boxShadow: [
//                         BoxShadow(
//                           color: Colors.black.withOpacity(0.25),
//                           blurRadius: 2,
//                           offset: const Offset(0, 3),
//                         ),
//                       ],
//                     ),
//                     padding: const EdgeInsets.symmetric(
//                       horizontal: 16,
//                       vertical: 10,
//                     ),
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         Assets.images.boostBlub.image(
//                           height: 20,
//                         ),
//                         const SizedBox(
//                           width: 10,
//                         ),
//                         const Text(
//                           "How to Boost?",
//                           style: TextStyle(
//                             color: Color(0xFF2CB388),
//                             fontWeight: FontWeight.w600,
//                             fontSize: 14,
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                   const SizedBox(
//                     height: 16,
//                   ),
//                   Row(
//                     children: [
//                       Stack(
//                         alignment: Alignment.topCenter,
//                         children: [
//                           Assets.images.dartboard.image(width: 22),
//                           Assets.images.flashGolden.image(
//                             height: 18,
//                           )
//                         ],
//                       ),
//                       const SizedBox(
//                         width: 5,
//                       ),
//                       const Text(
//                         "Tasks",
//                         style: TextStyle(
//                           fontWeight: FontWeight.w600,
//                           fontSize: 15,
//                         ),
//                       ),
//                     ],
//                   ),
//                   const SizedBox(
//                     height: 12,
//                   ),
//                   ...List.generate(
//                     _controller.microCharge.tasks.length,
//                         (index) => Container(
//                       margin: const EdgeInsets.only(bottom: 18),
//                       decoration: BoxDecoration(
//                         color: Colors.white,
//                         borderRadius: BorderRadius.circular(10),
//                         boxShadow: [
//                           BoxShadow(
//                             color: Colors.black.withOpacity(0.25),
//                             blurRadius: 4,
//                             offset: const Offset(0, 1),
//                           )
//                         ],
//                       ),
//                       child: Column(
//                         children: [
//                           ListTile(
//                             leading: Stack(
//                               alignment: Alignment.topCenter,
//                               children: [
//                                 Assets.images.trophy.image(height: 35),
//                                 Assets.images.flashSliver.image(
//                                   height: 20,
//                                 )
//                               ],
//                             ),
//                             title: Text(
//                               _controller.microCharge.tasks[index].title,
//                               style: const TextStyle(
//                                 fontWeight: FontWeight.w500,
//                                 fontSize: 13,
//                               ),
//                             ),
//                             trailing: Row(
//                               mainAxisSize: MainAxisSize.min,
//                               children: [
//                                 CachedNetworkImage(
//                                   imageUrl: _controller
//                                       .item.currency.adUnitCurrencyIcon,
//                                   width: 13,
//                                   height: 13,
//                                 ),
//                                 const SizedBox(
//                                   width: 5,
//                                 ),
//                                 Text(
//                                   "${_controller.microCharge.tasks[index].totalYouCanEarn.numeral(digits: 2)} ${_controller.microCharge.tasks[index].currencyName}",
//                                   style: const TextStyle(
//                                     fontWeight: FontWeight.w500,
//                                     fontSize: 12,
//                                     color: Colors.black87,
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                           Container(
//                             height: 19,
//                             decoration: const BoxDecoration(
//                               color: Color(0xFFE4E4E4),
//                               borderRadius: BorderRadius.only(
//                                 bottomLeft: Radius.circular(10),
//                                 bottomRight: Radius.circular(10),
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//
//                   //daily tasks
//                   ...List.generate(
//                     _controller.microCharge.dailyTasks.length,
//                         (index) => Column(
//                       children: [
//                         Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           children: [
//                             Text(
//                               _controller.microCharge.dailyTasks[index].name,
//                               style: const TextStyle(
//                                 fontWeight: FontWeight.w600,
//                               ),
//                             ),
//                             Column(
//                               crossAxisAlignment: CrossAxisAlignment.end,
//                               children: [
//                                 Row(
//                                   mainAxisSize: MainAxisSize.min,
//                                   children: [
//                                     CachedNetworkImage(
//                                       imageUrl: _controller
//                                           .item.currency.adUnitCurrencyIcon,
//                                       width: 13,
//                                       height: 13,
//                                     ),
//                                     const SizedBox(
//                                       width: 5,
//                                     ),
//                                     Text(
//                                       "${_controller.item.campaignPayout.totalPayoutConverted.numeral(digits: 2)} ${_controller.item.currency.adUnitCurrencyName}",
//                                       style: const TextStyle(
//                                         fontWeight: FontWeight.w500,
//                                         fontSize: 12,
//                                         color: Colors.black87,
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                                 Text(
//                                   "+200K ${_controller.item.currency.adUnitCurrencyName}",
//                                   style: const TextStyle(
//                                     fontWeight: FontWeight.w500,
//                                     fontSize: 12,
//                                     color: Color(0xFF2CB388),
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ],
//                         ),
//                         Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           children: [
//                             Text(
//                               _controller
//                                   .microCharge.dailyTasks[index].taskEvent,
//                               style: const TextStyle(
//                                 color: Color(0xFF888888),
//                               ),
//                             ),
//                             Text(
//                               "${_controller.microCharge.dailyTasks[index].dailyCompletedTasks}/${_controller.microCharge.dailyTasks[index].dailyTotalTasks}",
//                               style: const TextStyle(
//                                 color: Color(0xFF888888),
//                               ),
//                             ),
//                           ],
//                         ),
//                         const SizedBox(
//                           height: 5,
//                         ),
//                         SizedBox(
//                           height: 30,
//                           child: Column(
//                             children: [
//                               Container(
//                                 height: 15,
//                                 width: double.maxFinite,
//                                 decoration: const BoxDecoration(
//                                   color: Color(0xFF5D5D5D),
//                                   borderRadius: BorderRadius.only(
//                                     topLeft: Radius.circular(5),
//                                     topRight: Radius.circular(5),
//                                   ),
//                                 ),
//                                 child: Align(
//                                   alignment: Alignment.centerLeft,
//                                   child: Assets.images.flashGolden.image(
//                                     height: 16,
//                                   ),
//                                 ),
//                               ),
//                               Container(
//                                 height: 15,
//                                 width: double.maxFinite,
//                                 padding: const EdgeInsets.only(right: 6),
//                                 decoration: const BoxDecoration(
//                                   color: Color(0xFFE4E4E4),
//                                   borderRadius: BorderRadius.only(
//                                     bottomLeft: Radius.circular(5),
//                                     bottomRight: Radius.circular(5),
//                                   ),
//                                 ),
//                                 child: Align(
//                                   alignment: Alignment.centerRight,
//                                   child: Text(
//                                     "Total Limit: ${_controller.microCharge.dailyTasks[index].totalCompletedTasks}/${_controller.microCharge.dailyTasks[index].totalLimit}",
//                                     style: const TextStyle(
//                                       fontSize: 10,
//                                       color: Color(0xFF5D5D5D),
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                         const SizedBox(
//                           height: 18,
//                         )
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
