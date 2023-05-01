library review;

import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:injectable/injectable.dart';
import 'package:muviee/common/entity/my_review/my_review_entity.dart';
import 'package:muviee/common/global_data.dart';
import 'package:muviee/common/widgets/app_scaffold.dart';
import 'package:muviee/common/widgets/m_review_field.dart';
import 'package:muviee/config/dimens.dart';
import 'package:muviee/config/styles.dart';
import 'package:muviee/di/injector.dart';
import 'package:muviee/features/my_review/presentation/widgets/delete_review_dialog.dart';
import 'package:muviee/utils/alert_util.dart';
import 'package:muviee/utils/exception_util.dart';
import 'package:muviee/utils/extensions/date_time_extension.dart';
import 'package:muviee/utils/extensions/translate_extension.dart';
import 'package:muviee/utils/global_keys.dart';
import 'package:muviee/utils/language_util.dart';

import '../../../common/entity/movie_video_entity.dart';
import '../../../common/entity/my_review/my_review_search_entity.dart';
import '../../../common/widgets/m_text_field.dart';
import '../../../config/langs/r.dart';
import 'package:timeago/timeago.dart' as timeago;

import '../../../utils/navigation_util.dart';
import '../../bottom_bar/cubit/bottombar_cubit.dart';
import '../domain/use_cases/review_usecase.dart';
import 'package:muviee/utils/extensions/context_extension.dart';

part 'bloc/review_bloc.dart';

part 'bloc/review_event.dart';

part 'bloc/review_state.dart';

part 'pages/review_page.dart';

part 'widgets/user_review.dart';
