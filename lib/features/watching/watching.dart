library watching;

import 'dart:async';

import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:external_path/external_path.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:injectable/injectable.dart';
import 'package:muviee/common/global_data.dart';
import 'package:muviee/common/widgets/m_review_field.dart';
import 'package:muviee/config/dimens.dart';
import 'package:muviee/config/styles.dart';
import 'package:muviee/di/injector.dart';
import 'package:muviee/features/bottom_bar/cubit/bottombar_cubit.dart';
import 'package:muviee/features/movie_detail/domain/use_cases/movie_detail_usecase.dart';
import 'package:muviee/features/profile/presentation/profile.dart';
import 'package:muviee/features/watching/page/empty_page.dart';
import 'package:muviee/features/watching/widgets/option_item.dart';
import 'package:muviee/utils/download_util.dart';
import 'package:muviee/utils/exception_util.dart';
import 'package:muviee/utils/extensions/context_extension.dart';
import 'package:muviee/utils/extensions/duration_extension.dart';
import 'package:muviee/utils/extensions/translate_extension.dart';
import 'package:muviee/utils/navigation_util.dart';
import 'package:video_player/video_player.dart';

import '../../common/entity/movie_video_entity.dart';
import '../../config/langs/r.dart';
import 'package:visibility_detector/visibility_detector.dart';

import '../../utils/alert_util.dart';
part 'cubit/watching_cubit.dart';
part 'cubit/watching_state.dart';
part 'page/watching_page.dart';
part 'widgets/control_button.dart';
part 'widgets/seek_bar.dart';
part 'widgets/volume_bar.dart';
part 'widgets/watching_field.dart';
