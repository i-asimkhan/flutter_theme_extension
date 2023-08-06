import 'package:flutter/material.dart';

class AccountAssetsWidget extends StatelessWidget {
  const AccountAssetsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () async {
        return Future.value();
      },
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        // child: AssetListView(
        //   // walletAssets: state.walletAssets,
        // ),
      ),
    );
  }
}
