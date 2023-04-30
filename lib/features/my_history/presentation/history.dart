library history;

import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:muviee/common/widgets/app_scaffold.dart';
import 'package:muviee/common/widgets/horizontal_movie_item.dart';
import 'package:muviee/config/dimens.dart';
import 'package:muviee/di/injector.dart';
import 'package:muviee/utils/extensions/translate_extension.dart';

import '../../../common/entity/movie_entity.dart';
import '../../../config/langs/r.dart';
import '../../../utils/exception_util.dart';
import '../domain/use_cases/history_usecase.dart';

part 'pages/history_page.dart';
part 'cubit/history_cubit.dart';
part 'cubit/history_state.dart';
