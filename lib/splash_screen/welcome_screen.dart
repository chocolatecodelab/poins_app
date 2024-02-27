// import 'package:flutter/material.dart';
// import 'package:poins/bottombar/bottombar.dart';

// class WelcomeScreen extends StatelessWidget {
//   const WelcomeScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         backgroundColor: const Color.fromARGB(0, 116, 206, 164),
//         body: Container(
//           padding: const EdgeInsets.symmetric(horizontal: 30),
//           child: Center(
//             child: Column(
//               mainAxisSize: MainAxisSize.max,
//               children: [
//                 const Spacer(),
//                 icon(),
//                 const SizedBox(
//                   height: 20,
//                 ),
//                 welcomeTextWidget(),
//                 const SizedBox(
//                   height: 10,
//                 ),
//                 sloganText(),
//                 const SizedBox(
//                   height: 40,
//                 ),
//                 getButton(context),
//                 const SizedBox(
//                   height: 40,
//                 )
//               ],
//             ),
//           ),
//         ));
//   }

//   Widget icon() {
//     String iconPath = "assets/images/logo_welcome_screen.png";
//     return Image.asset(
//       iconPath,
//       width: 250,
//       height: 250,
//     );
//   }

//   Widget welcomeTextWidget() {
//     return const Column(
//       children: [
//         SizedBox(
//           height: 20,
//         ),
//         Text(
//           "WELCOME TO",
//           style: TextStyle(
//               fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
//         ),
//         Text(
//           "POINS",
//           style: TextStyle(
//               fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
//         )
//       ],
//     );
//   }

//   Widget sloganText() {
//     return Text(
//       "PORT INTEGRATED SYSTEM",
//       style: TextStyle(
//           fontSize: 18,
//           fontWeight: FontWeight.w400,
//           color: Colors.white.withOpacity(0.9)),
//     );
//   }

//   Widget getButton(BuildContext context) {
//     return ElevatedButton(
//       onPressed: () {
//         Navigator.push(context,
//             MaterialPageRoute(builder: (context) => const BottomBar()));
//       },
//       style: ElevatedButton.styleFrom(
//         visualDensity: VisualDensity.compact,
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(18),
//         ),
//         elevation: 0,
//         // backgroundColor: const Color(0xFF408840),
//         textStyle: TextStyle(
//           color: Colors.white,
//           fontFamily: Theme.of(context).textTheme.bodyText1?.fontFamily,
//           fontWeight: FontWeight.bold,
//         ),
//         padding: const EdgeInsets.symmetric(vertical: 24),
//         minimumSize: const Size.fromHeight(50),
//       ),
//       child: const Stack(
//         fit: StackFit.passthrough,
//         children: <Widget>[
//           Center(
//             child: Text(
//               "Get Started",
//               textAlign: TextAlign.center,
//               style: TextStyle(
//                 fontSize: 18,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
