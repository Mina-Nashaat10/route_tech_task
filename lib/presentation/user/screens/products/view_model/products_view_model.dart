
import 'package:route_tech_task/app/dependencies_injection.dart';
import 'package:route_tech_task/app/state_manager/data_bloc.dart';
import 'package:route_tech_task/domain/models/products_data.dart';
import 'package:route_tech_task/domain/usecase/products_use_case.dart';
import 'package:route_tech_task/presentation/common/view_model_interface.dart';

class ProductsViewModel extends ViewModelInterface {

  late final DataBloc<ProductsData> productsBloc;

  @override
  void initialize() {
    final productsUseCase = ProductsUseCase(instance());
    productsBloc = DataBloc<ProductsData>(useCase: productsUseCase)..index();
  }

  @override
  void dispose() {
    
  }
}