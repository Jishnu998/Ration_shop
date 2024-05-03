import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ration_shop/presentation/owner/qr%20scanner.dart';
import 'package:ration_shop/presentation/user/id verification.dart';
import '../../core/constants/color.dart';
import '../../core/controller/controller.dart';

class user_owner_selection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double size = constantsize(context);
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: size * 350,
            ),
            Container(
              height: size * 50,
              width: size * 200,
              child: ElevatedButton(
                onPressed: () {
                  final provider =
                      Provider.of<tile_controller>(context, listen: false);
                  provider.clearCollectionIfNew();
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => id_verification()));
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: ColorTheme.maincolor,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
                child: Text(
                  "USER",
                  style: TextStyle(
                      color: ColorTheme.primarycolor, fontSize: size * 20),
                ),
              ),
            ),
            SizedBox(
              height: size * 50,
            ),
            Container(
              height: size * 50,
              width: size * 200,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => ScannerScreen()));
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: ColorTheme.maincolor,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(size * 10))),
                child: Text(
                  "OWNER",
                  style: TextStyle(
                      color: ColorTheme.primarycolor, fontSize: size * 20),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
