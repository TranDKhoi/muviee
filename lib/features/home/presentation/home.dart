library home;

import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:muviee/common/widgets/m_icon_button.dart';
import 'package:muviee/common/widgets/vertical_movie_item.dart';
import 'package:muviee/config/colors.dart';
import 'package:muviee/config/dimens.dart';
import 'package:muviee/config/styles.dart';
import 'package:muviee/di/injector.dart';
import 'package:muviee/features/movie_detail/presentation/movie_detail.dart';
import 'package:muviee/utils/alert_util.dart';
import 'package:muviee/utils/exception_util.dart';
import 'package:muviee/utils/extensions/context_extension.dart';
import 'package:muviee/utils/extensions/translate_extension.dart';
import 'package:muviee/utils/navigation_util.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../common/entity/movie_entity.dart';
import '../../../config/langs/r.dart';
import '../domain/use_cases/home_usecase.dart';

part 'pages/home_page.dart';
part 'widgets/big_banner.dart';
part 'widgets/latest_movie.dart';
part 'widgets/popular_movie.dart';
part 'widgets/top_movie.dart';
part 'bloc/home_bloc.dart';
part 'bloc/home_event.dart';
part 'bloc/home_state.dart';
