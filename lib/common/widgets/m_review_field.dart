import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:muviee/utils/extensions/translate_extension.dart';

import '../../config/dimens.dart';
import '../../config/langs/r.dart';
import '../../config/styles.dart';
import 'm_text_field.dart';

class MReviewField extends StatelessWidget {
  const MReviewField(
      {required this.onRatingChanged, required this.cmtCtr, required this.onSubmit, Key? key})
      : super(key: key);

  final Function(double) onRatingChanged;
  final TextEditingController cmtCtr;
  final VoidCallback onSubmit;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        //options
        Row(
          children: [
            Text(
              R.placeAComment.translate,
              style: AppStyle.mediumTitleTextStyle,
              textAlign: TextAlign.start,
            ),
            const Spacer(),
            RatingBar.builder(
              initialRating: 0,
              direction: Axis.horizontal,
              allowHalfRating: true,
              itemCount: 5,
              itemSize: 20,
              itemBuilder: (context, _) => const Icon(
                Icons.star,
                color: Colors.yellow,
              ),
              onRatingUpdate: onRatingChanged,
            ),
          ],
        ),
        const SizedBox(height: AppDimens.SPACING),
        MTextField(
          maxLines: 4,
          controller: cmtCtr,
          hintText: "${R.yourComment.translate}...",
        ),
        const SizedBox(height: AppDimens.SPACING),
        FilledButton(onPressed: onSubmit, child: Text(R.submit.translate))
      ],
    );
  }
}
