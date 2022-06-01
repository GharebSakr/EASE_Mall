import 'package:ease_mall/models/product_model.dart';
import 'package:ease_mall/modules/cafe_screen/cubit/cubit.dart';
import 'package:ease_mall/modules/cafe_screen/cubit/state.dart';
import 'package:ease_mall/modules/food_screen/food_screen.dart';
import 'package:ease_mall/modules/information_screen/information_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../shared/components/components.dart';
import '../../shared/dio_helper.dart';

class CafeScreen extends StatefulWidget {
  @override
  State<CafeScreen> createState() => _CafeScreenState();
}

class _CafeScreenState extends State<CafeScreen> {
  Color _iconColor = Colors.grey;

  IconData _iconShape = Icons.favorite_border;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Cafes'),
          centerTitle: true,
          backgroundColor: Colors.blueGrey,
        ),
        body: BlocProvider(
          create: (BuildContext context) => Productcubit(),
          child: BlocConsumer<Productcubit, ProductsSates>(
              listener: (context, index) {},
              builder: (context, index) {
                ProductModel productModel = ProductModel();
                productModel.id;
                var list =
                    DioHelper.FindByIdCategory(productModel: productModel);
                return articalBuilder(list, context);
              }),
        ));
  }
}
