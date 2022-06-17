import 'package:ease_mall/modules/product_page/cubit/state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ease_mall/models/productResponse.dart';
import 'package:ease_mall/shared/dio_helper.dart';

class Productcubit extends Cubit<ProductsSates> {
  Productcubit() : super(ProductsIntialStates());

  static Productcubit get(context) => BlocProvider.of(context);

  ProductResponse? productResponse;

  void getProducts() {
    emit(ProductsGetProductLoadingStates());

    DioHelper.FindByIdCategory('​/Inside​/FindByIdCategory',
            id: productResponse!.id)
        .then((value) {
      productResponse = ProductResponse.fromJson(value!.data);
      emit(ProductsGetProductSuccesssStates());
    }).catchError((error) {
      print(error.toString());
      emit(ProductsGetProductErorrStates(error.toString()));
    });
  }
}
