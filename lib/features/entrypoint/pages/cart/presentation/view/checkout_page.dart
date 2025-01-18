import 'package:commerce/core/constants/constants.dart';
import 'package:commerce/core/routes/routes.dart';
import 'package:commerce/core/utils/validators.dart';
import 'package:commerce/core/widgets/back_btn.dart';
import 'package:commerce/features/entrypoint/pages/cart/presentation/widgets/checkout_address_selector.dart';
import 'package:commerce/features/entrypoint/pages/cart/presentation/widgets/checkout_card_details.dart';
import 'package:commerce/features/entrypoint/pages/cart/presentation/widgets/checkout_payment_systems.dart';
import 'package:commerce/features/entrypoint/pages/menu/presentation/provider/product_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CheckoutPage extends StatelessWidget {
  const CheckoutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackBtn(),
        title: const Text('Checkout'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const AddressSelector(),
            const PaymentSystem(),
            const CardDetails(),
            Consumer<ProductProvider>(builder: (context, provider, child) {
              return Column(
                children: [
                  UserDetails(
                    provider: provider,
                  ),
                  PayNowButton(
                    provider: provider,
                  ),
                ],
              );
            }),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}

class UserDetails extends StatelessWidget {
  const UserDetails({
    super.key,
    required this.provider,
  });
  final ProductProvider provider;
  @override
  Widget build(BuildContext context) {
    return Form(
        key: provider.formKey,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
          child: Column(spacing: 15, children: [
            Text("User Details",
                style: Theme.of(context).textTheme.headlineSmall),
            TextFormField(
              controller: provider.firstNameController,
              validator: Validators.requiredWithFieldName('First Name').call,
              textInputAction: TextInputAction.next,
              decoration: const InputDecoration(
                label: Text('First Name'),
              ),
            ),
            TextFormField(
              controller: provider.lastNameController,
              validator: Validators.requiredWithFieldName('Last Name').call,
              textInputAction: TextInputAction.next,
              decoration: const InputDecoration(
                label: Text('Last Name'),
              ),
            ),
            TextFormField(
              controller: provider.countryController,
              validator: Validators.requiredWithFieldName('Country').call,
              textInputAction: TextInputAction.next,
              decoration: const InputDecoration(
                label: Text('Country'),
              ),
            ),
            TextFormField(
              controller: provider.addressController,
              validator: Validators.requiredWithFieldName('Address').call,
              textInputAction: TextInputAction.next,
              decoration: const InputDecoration(
                label: Text('Address'),
              ),
            ),
            TextFormField(
              decoration: const InputDecoration(
                label: Text('Apartment'),
              ),
              controller: provider.apartmentController,
              validator: Validators.requiredWithFieldName('Apartment').call,
              textInputAction: TextInputAction.next,
            ),
            TextFormField(
              decoration: const InputDecoration(
                label: Text('Phone'),
              ),
              controller: provider.phoneController,
              validator: Validators.requiredWithFieldName('Phone').call,
              textInputAction: TextInputAction.next,
            ),
            TextFormField(
              decoration: const InputDecoration(
                label: Text('Email'),
              ),
              controller: provider.emailController,
              validator: Validators.requiredWithFieldName('Email').call,
              textInputAction: TextInputAction.next,
            ),
          ]),
        ));
  }
}

class PayNowButton extends StatelessWidget {
  const PayNowButton({
    super.key,
    required this.provider,
  });
  final ProductProvider provider;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.all(CoreDefaults.padding),
        child: ElevatedButton(
          onPressed: () {
            if (provider.formKey.currentState!.validate()) {
              Navigator.pushNamed(context, RoutesName.orderSuccessfull);
            }
          },
          child: const Text('Pay Now'),
        ),
      ),
    );
  }
}
