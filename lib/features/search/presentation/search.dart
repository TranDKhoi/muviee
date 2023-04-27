library search;

import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:muviee/config/dimens.dart';
import 'package:muviee/config/font_size.dart';
import 'package:muviee/di/injector.dart';
import 'package:muviee/features/search/data/model/actor_search_model.dart';
import 'package:muviee/features/search/domain/entity/movie_search_entity.dart';
import 'package:muviee/features/search/presentation/page/filter_page.dart';
import 'package:muviee/utils/alert_util.dart';
import 'package:muviee/utils/extensions/translate_extension.dart';

import '../../../common/entity/actor/actor_entity.dart';
import '../../../common/entity/movie_entity.dart';
import '../../../config/langs/r.dart';
import '../../../utils/navigation_util.dart';
import '../domain/usecase/search_usecase.dart';

part 'widget/search_app_bar.dart';
part 'page/search_page.dart';
part 'bloc/search_bloc.dart';
part 'bloc/search_state.dart';
part 'bloc/search_event.dart';
