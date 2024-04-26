// import 'package:flutter/material.dart';

// class PaletteCustom extends StatefulWidget {
//   PaletteCustom({
//     super.key,
//     required this.colorsList,
//     required this.selectedColor,
//   });

//   final List<Color> colorsList;

//   Color selectedColor;

//   @override
//   State<PaletteCustom> createState() => _PaletteCustomState();
// }

// class _PaletteCustomState extends State<PaletteCustom> {
//   @override
//   Widget build(BuildContext context) {
//     return Dialog(
//       backgroundColor: Colors.grey,
//       clipBehavior: Clip.hardEdge,
//       insetPadding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.03),
//       shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.circular(2),
//       ),
//       child: Container(
//         padding: const EdgeInsets.all(8),
//         child: GridView.builder(
//           gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//             crossAxisCount: 3,
//           ),
//           itemCount: widget.colorsList.length,
//           itemBuilder: (context, index) {
//             return GestureDetector(
//               onTap: () {
//                 setState(() {
//                   widget.selectedColor = widget.colorsList[index];
//                 });
//               },
//               child: Container(
//                 color: widget.colorsList[index],
//               ),
//             );
//           },
//         ),
//       ),
//     );
//   }
// }
