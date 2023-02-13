import 'package:flutter/material.dart';

class CustomFloatingActionButton extends StatelessWidget {
  const CustomFloatingActionButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        useMaterial3: true,
        highlightColor: Colors.black,
      ),
      child: Transform.rotate(
        angle: 22 / 28,
        child: SizedBox(
          width: 60,
          height: 60,
          child: FloatingActionButton(
            heroTag: 'FAB',
            clipBehavior: Clip.antiAlias,
            splashColor: Colors.transparent,
            highlightElevation: 0,
            elevation: 0,
            backgroundColor: Colors.red,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(16.0),
              ),
            ),
            onPressed: () {
              showModalBottomSheet(
                elevation: 0,
                enableDrag: false,
                backgroundColor: Colors.orange,
                barrierColor: Colors.purple,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(24),
                    topRight: Radius.circular(24),
                  ),
                ),
                context: context,
                builder: (context) {
                  return Container(
                    height: 200,
                    child: Text('I am bottom sheet'),
                  );
                },
              );
            },
            child: Transform.rotate(
              angle: 22 / 28,
              child: const Icon(
                Icons.add,
              ),
            ),
          ),
        ),
      ),
    );
  }
}