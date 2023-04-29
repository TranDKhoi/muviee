library actor;

import 'dart:ui';

import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:muviee/common/entity/actor/person_entity.dart';
import 'package:muviee/common/widgets/horizontal_movie_item.dart';
import 'package:muviee/config/dimens.dart';
import 'package:muviee/config/styles.dart';
import 'package:muviee/di/injector.dart';
import 'package:muviee/utils/exception_util.dart';
import 'package:muviee/utils/extensions/context_extension.dart';
import 'package:muviee/utils/extensions/translate_extension.dart';
import 'package:readmore/readmore.dart';

import '../../../common/entity/actor/actor_entity.dart';
import '../../../common/entity/movie_entity.dart';
import '../../../common/widgets/app_scaffold.dart';
import '../../../config/langs/r.dart';
import '../../../utils/format_util.dart';
import '../domain/use_cases/actor_usecase.dart';

part 'pages/actor_detail_page.dart';

part 'widgets/actor_banner.dart';
part 'widgets/actor_des.dart';
part 'widgets/actor_in_movie.dart';
part 'bloc/actor_cubit.dart';
part 'bloc/actor_state.dart';
