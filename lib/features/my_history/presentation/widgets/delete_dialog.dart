import 'package:flutter/material.dart';
import 'package:muviee/utils/extensions/translate_extension.dart';
import 'package:muviee/utils/navigation_util.dart';

import '../../../../config/langs/r.dart';

class DeleteMovieDialog extends StatelessWidget {
  const DeleteMovieDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(R.warning.translate),
      content: Text(R.areyousurewanttodeletethismovie.translate),
      actions: <Widget>[
        TextButton(
          child: Text(R.no.translate),
          onPressed: () {
            NavigationUtil.pop(result: false);
          },
        ),
        TextButton(
          child: Text(R.yes.translate),
          onPressed: () {
            NavigationUtil.pop(result: true);
          },
        ),
      ],
    );
  }
}
