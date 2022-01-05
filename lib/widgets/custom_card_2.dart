import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class CustomCard2 extends StatelessWidget {
  const CustomCard2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
      elevation: 10,
      shadowColor: AppTheme.primary.withOpacity(0.1),
      child: Column(
        children: [
          const FadeInImage(
            image: NetworkImage(
                'https://i.pinimg.com/564x/37/2d/b8/372db8613a08165de34deba50105ff84.jpg'),
            placeholder: AssetImage('assets/jar-loading.gif'),
            width: double.infinity,
            height: 230,
            fit: BoxFit.cover,
            fadeInDuration: Duration(
              milliseconds: 300,
            ),
          ),
          Container(
              alignment: AlignmentDirectional.centerEnd,
              padding: const EdgeInsets.only(right: 20, top: 10, bottom: 10),
              child: Text('Un hermoso paisaje'))
        ],
      ),
    );
  }
}
