library movie_detail;

import 'dart:async';
import 'dart:ui';

import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:muviee/common/models/movie_entity.dart';
import 'package:muviee/common/widgets/app_scaffold.dart';
import 'package:muviee/common/widgets/review_item.dart';
import 'package:muviee/di/injector.dart';
import 'package:muviee/features/movie_detail/domain/entities/actor/actor_entity.dart';
import 'package:muviee/features/movie_detail/domain/entities/gallery/gallery_entity.dart';
import 'package:muviee/features/movie_detail/domain/entities/gallery/image_info_entity.dart';
import 'package:muviee/features/movie_detail/domain/entities/review/review_search_entity.dart';
import 'package:muviee/utils/exception_util.dart';
import 'package:muviee/utils/extensions/context_extension.dart';
import 'package:muviee/utils/extensions/translate_extension.dart';
import 'package:readmore/readmore.dart';

import '../../../common/widgets/cast_item.dart';
import '../../../config/colors.dart';
import '../../../config/dimens.dart';
import '../../../config/langs/r.dart';
import '../../../config/styles.dart';
import '../domain/entities/review/review_entity.dart';
import '../domain/use_cases/movie_detail_usecase.dart';

part 'bloc/movie_detail_bloc.dart';
part 'bloc/movie_detail_event.dart';
part 'bloc/movie_detail_state.dart';
part 'pages/movie_detail_page.dart';
part 'widgets/big_banner_2.dart';
part 'widgets/cast_widget.dart';
part 'widgets/gallery_widget.dart';
part 'widgets/review_widget.dart';
part 'widgets/story_text.dart';
