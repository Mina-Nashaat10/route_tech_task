
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:route_tech_task/app/extensions.dart';
import 'package:route_tech_task/app/state_manager/data_state.dart';
import 'package:route_tech_task/domain/models/products_data.dart';
import 'package:route_tech_task/presentation/user/screens/products/widget/products_content_widget.dart';
import 'package:route_tech_task/presentation/user/screens/products/view_model/products_view_model.dart';
import 'package:route_tech_task/presentation/user/screens/products/widget/products_app_bar.dart';

class ProductsScreen extends StatefulWidget {

  static const String path = '/products';

  const ProductsScreen({super.key});

  @override
  State<ProductsScreen> createState() => _ProductsScreenState();
}

class _ProductsScreenState extends State<ProductsScreen> {

  late final ProductsViewModel productsViewModel;

  @override
  void initState() {
    super.initState();

    productsViewModel = ProductsViewModel()..initialize();
  }

  @override
  void dispose() {
    productsViewModel.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: productsAppBar(context),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0),
        child: BlocBuilder(
          bloc: productsViewModel.productsBloc,
          builder: (context, state) {
            if (state is DataProgressState) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else if (state is DataErrorState) {
              return Center(
                child: Text(
                  state.error.responseMessage,
                  style: context.titleL,
                ),
              );
            } else if (state is DataLoadedState<ProductsData>) {
              return ProductsContentWidget(productsData: state.data!);
            }
            return const SizedBox();
          },
        ),
      )
    );
  }
}