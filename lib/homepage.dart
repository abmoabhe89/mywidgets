// import 'package:flutter/material.dart';

// class Homepage extends StatefulWidget {
//   const Homepage({super.key});

//   @override
//   State<Homepage> createState() => _HomepageState();
// }

// class _HomepageState extends State<Homepage> with TickerProviderStateMixin {
//   Set<String> selected = {'day'};

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
//       Center(
//           child: SegmentedButton(
//         selected: selected,
//         onSelectionChanged: (newselected) {
//           setState(() {
//             selected = newselected;
//           });
//         },
//         segments: [
//           ButtonSegment(
//               value: 'day',
//               label: Text('day'),
//               icon: Icon(Icons.calendar_view_day)
//               ),
//           ButtonSegment(
//               value: 'week',
//               label: Text('week'),
//               icon: Icon(Icons.calendar_view_week)),
//           ButtonSegment(
//               value: 'month',
//               label: Text('month'),
//               icon: Icon(Icons.calendar_view_month))
//         ],
//       ))
//     ]));
//   }
// }

// import 'package:flutter/material.dart';

// class Homepage extends StatefulWidget {
//   const Homepage({super.key});

//   @override
//   State<Homepage> createState() => _HomepageState();
// }

// class _HomepageState extends State<Homepage> {
//   Set selected = {'red'};
//   OverlayEntry? overlayEntry;
//   OverlayEntry? createoverlay() {
//     return OverlayEntry(
//       builder: (context) {
//         return Center(
//           child: Positioned(height: 200,width: 200,
//             child: Material(
//               child: Container(
//                 height: 200,
//                 width: 200,
//                 color: Colors.red,
//                 child: Center(
//                   child: InkWell(
//                       onTap: () {
//                         if (overlayEntry != null) {
//                           overlayEntry!.remove();
//                           overlayEntry = null;
//                         }
//                       },
//                       child: const Icon(Icons.wrong_location_rounded,size: 100,)),
//                 ),
//               ),
//             ),
//           ),
//         );
//       },
//     );
//   }

//   void showoverlay() {
//     if (overlayEntry != null) return;
//     overlayEntry = createoverlay();
//     Overlay.of(context).insert(overlayEntry!);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.blue,
//       ),
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           const Text("select the suitable color"),
//           Center(
//             child: SegmentedButton(
//                 onSelectionChanged: (newselected) {
//                   setState(() {
//                     selected = newselected;
//                   });
//                 },
//                 segments: const[
//                   ButtonSegment(value: 'red', label: Text('red')),
//                   ButtonSegment(value: 'black', label: Text("black")),
//                   ButtonSegment(value: 'yellow', label: Text('yellow')),
//                   ButtonSegment(value: 'green', label: Text('green'))
//                 ],
//                 selected: selected),
//           ),
//           const SizedBox(
//             height: 40,
//           ),
//           const DropdownMenu(
//             dropdownMenuEntries: [
//               DropdownMenuEntry(value: Colors.red, label: 'red'),
//               DropdownMenuEntry(value: Colors.green, label: 'green'),
//               DropdownMenuEntry(value: Colors.yellow, label: 'yellow'),
//               DropdownMenuEntry(value: Colors.black, label: 'black')
//             ],
//             label: Text('select the suitable color'),
//             helperText: 'select the suitable color',
//             width: 300,
//           ),
//           ElevatedButton(
//             onPressed: () {
//               showoverlay();
//             },
//             child: const Text('show overlay'),
//           )
//         ],
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';

// class Homepage extends StatefulWidget {
//   const Homepage({super.key});

//   @override
//   State<Homepage> createState() => _HomepageState();
// }

// class _HomepageState extends State<Homepage> {
//   OverlayEntry? overlayEntry;
//   OverlayEntry? createoverlayentery() {
//     return OverlayEntry(
//         builder: (context) => Center(
//           child: Positioned(height: 100,width: 100,
//                   child: Material(
//                 child: Container(
//                   height: 200,
//                   width: 200,
//                   color: Colors.blue,
//                   child: InkWell(
//                       onTap: () {
//                         if (overlayEntry != null) {
//                           overlayEntry!.remove();
//                           overlayEntry = null;
//                         }
//                       },
//                       child: Icon(Icons.star,size: 50,)),
//                 ),
//               )),
//         ));
//   }

//   void showoverlay() {
//     if (overlayEntry != null) return;
//     overlayEntry = createoverlayentery();
//     Overlay.of(context).insert(overlayEntry!);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Text('data'),
           
//           Center(
//             child: ElevatedButton(
//               child: Text('overlay'),
//               onPressed: () {
//                 showoverlay();
//               },
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }



 
//  import 'package:fl_chart/fl_chart.dart';
// import 'package:flutter/material.dart';

// class Homepage extends StatefulWidget {
//   const Homepage({super.key});

//   @override
//   State<Homepage> createState() => _HomepageState();
// }

// class _HomepageState extends State<Homepage> {
//   getsectiondata(){ 
//     return [
//     PieChartSectionData(value: 10,title: '10%',color: Colors.orange,radius: 160),
//       PieChartSectionData(value: 20,title: '20%',color: Colors.red,radius: 160),
//     PieChartSectionData(value: 30,title: '30%',radius: 160,color: Colors.green),
//     PieChartSectionData(radius: 160,color: Colors.blue,title: '40%',value: 40),
//     ];
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold( 
//       body: Center(child: PieChart(PieChartData(sections: getsectiondata(),centerSpaceRadius: 10,
//       ), ),),
//     );
//   }
// }