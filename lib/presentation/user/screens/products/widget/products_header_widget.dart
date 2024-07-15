import 'package:flutter/material.dart';
import 'package:route_tech_task/app/dependencies_injection.dart';
import 'package:route_tech_task/app/l10n/generated/l10n.dart';
import 'package:route_tech_task/app/managers/theme_manager.dart';
import 'package:route_tech_task/app/managers/values_manager.dart';

class ProductsHeaderWidget extends StatelessWidget {
  const ProductsHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top:  8.0, bottom: 16.0),
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsetsDirectional.only(end: 24.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: S.current.search_hint,
                  prefixIcon: const Padding(
                    padding: EdgeInsetsDirectional.only(start: 16.0),
                    child: Icon(
                      Icons.search,
                      size: AppSize.s28,
                    ),
                  ),
                  prefixIconConstraints: const BoxConstraints(
                    minWidth: AppSize.s45,
                  ),
                  // enabled border style
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: instance<ThemeManager>().color.primary, width: AppSize.s1),
                    borderRadius: const BorderRadius.all(Radius.circular(AppSize.s32)),
                  ),

                  // focused border style
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: instance<ThemeManager>().color.primary, width: AppSize.s1),
                    borderRadius: const BorderRadius.all(Radius.circular(AppSize.s32)),
                  ),

                  // error border style
                  errorBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: instance<ThemeManager>().color.error, width: AppSize.s1),
                    borderRadius: const BorderRadius.all(Radius.circular(AppSize.s32)),
                  ),
                  // focused border style
                  focusedErrorBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: instance<ThemeManager>().color.primary, width: AppSize.s1),
                    borderRadius: const BorderRadius.all(Radius.circular(AppSize.s32))
                  ),
                  
                ),
              ),
            ),
          ),
      
          Icon(
            Icons.shopping_cart_outlined,
            color: instance<ThemeManager>().color.primary,
            size: 24,
          )
        ],
      ),
    );
  }
}