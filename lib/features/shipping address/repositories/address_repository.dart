import 'package:ecommerce_app/features/shipping%20address/models/address.dart';

class AddressRepository {
  List<Address> getAddresses() {
    return const [
      Address(
        id: '1',
        label: 'Home',
        fullAddress: '123 Main Street, Apt 48',
        city: 'Ng',
        state: 'ENU',
        zipCode: '400401',
        isDelfault: true,
        type: AddressType.home,
      ),
      Address(
        id: '2',
        label: 'office',
        fullAddress: '234 Main Street, Apt 48',
        city: 'Ng',
        state: 'ENU',
        zipCode: '400401',
        isDelfault: true,
        type: AddressType.office,
      ),
    ];
  }

  Address? getDefaultAddress() {
    return getAddresses().firstWhere(
      (address) => address.isDelfault,
      orElse: () => getAddresses().first,
    );
  }
}
