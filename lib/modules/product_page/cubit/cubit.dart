import 'package:bloc/bloc.dart';
import 'package:ease_mall/models/product_model.dart';
import 'package:ease_mall/models/variables.dart';
import 'package:ease_mall/modules/cafe_screen/cubit/state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../models/productResponse.dart';
import '../../../shared/dio_helper.dart';

class Productcubit extends Cubit<ProductsSates> {
  Productcubit() : super(ProductsIntialStates());
  static Productcubit get(context) => BlocProvider.of(context);
  // ProductModel?productModel;
  //void getProducts(){
  // emit(ProductsGetProductLoadingStates());
  // if(productModel==0){
  // DioHelper.FindByIdCategory(
  //  url:'/Inside​/FindByIdCategory',
  // query: {
  //  "idcategory":productModel!.IdCategory,
  // }.then((value){
  //productResponse = ProductResponse.fromJson(value.data);
  // emit(ProductsGetProductSuccesssStates());
  // }).catchError((error){
  //  print(error.toString());
  //  emit(ProductsGetProductErorrStates(error.toString()));
  // }), productModel: productModel;
  // }
  //  else{
  //  emit(ProductsGetProductSuccesssStates());
//    }

//  }
}
