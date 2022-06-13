import 'package:conditional_builder_rec/conditional_builder_rec.dart';
import 'package:ease_mall/models/gategoryidresponse.dart';
import 'package:ease_mall/models/productResponse.dart';
import 'package:ease_mall/modules/product_page/cubit/cubit.dart';
import 'package:ease_mall/modules/product_page/cubit/state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../models/productResponse.dart';

// class ProductScreen extends StatefulWidget {
//   @override
//   State<ProductScreen> createState() => _CafeScreenState();
// }

// class _CafeScreenState extends State<ProductScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Products'),
//         centerTitle: true,
//         backgroundColor: Colors.blueGrey,
//       ),
//       body: BlocProvider(
//           create: (BuildContext context) => Productcubit(),
//           child: BlocConsumer<Productcubit, ProductsSates>(
//               listener: (context, state) {},
//               builder: (context, state) {
//                 return ConditionalBuilderRec(
//                     condition:
//                         Productcubit.get(context).productResponse != null,
//                     builder: (context) => builderWidget(
//                       Productcubit.get(context).productResponse, context),
//                     fallback: (context) =>
//                         Center(child: CircularProgressIndicator()));
//               })),
//     );
//   }

//   Widget builderWidget(GategoryIdResponse? model, context) =>
//       SingleChildScrollView(
//         physics: BouncingScrollPhysics(),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Container(
//               color: Colors.grey[300],
//               child: GridView.count(
//                 shrinkWrap: true,
//                 physics: NeverScrollableScrollPhysics(),
//                 crossAxisCount: 2,
//                 mainAxisSpacing: 1.0,
//                 crossAxisSpacing: 1.0,
//                 childAspectRatio: 1 / 1.58,
//                 children: List.generate(
//                   model!.id!,
//                   (index) => buildGridProduct(model, context),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       );

//   Widget buildGridProduct(GategoryIdResponse? modelxx, context) => Container(
//         color: Colors.white,
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Stack(
//               alignment: AlignmentDirectional.bottomStart,
//               children: [
//                 Image(
//                   image: NetworkImage(modelxx!.image.toString()),
//                   width: double.infinity,
//                   height: 200.0,
//                 ),
//                 if (modelxx.discount != 0)
//                   Container(
//                     color: Colors.red,
//                     padding: EdgeInsets.symmetric(
//                       horizontal: 5.0,
//                     ),
//                     child: Text(
//                       'DISCOUNT',
//                       style: TextStyle(
//                         fontSize: 8.0,
//                         color: Colors.white,
//                       ),
//                     ),
//                   ),
//               ],
//             ),
//             Padding(
//               padding: const EdgeInsets.all(12.0),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                     modelxx.name.toString(),
//                     maxLines: 2,
//                     overflow: TextOverflow.ellipsis,
//                     style: TextStyle(
//                       fontSize: 14.0,
//                       height: 1.3,
//                     ),
//                   ),
//                   Row(
//                     children: [
//                       Text(
//                         modelxx.cost.toString(),
//                         style: TextStyle(
//                           fontSize: 12.0,
//                           color: Colors.blue,
//                         ),
//                       ),
//                       SizedBox(
//                         width: 5.0,
//                       ),
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       );
// }