library review;

import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:muviee/common/entity/review/review_search_entity.dart';
import 'package:muviee/common/widgets/app_scaffold.dart';
import 'package:muviee/common/widgets/review_item.dart';
import 'package:muviee/config/dimens.dart';
import 'package:muviee/di/injector.dart';
import 'package:muviee/utils/exception_util.dart';

import '../../../config/langs/r.dart';
import '../domain/use_cases/review_usecase.dart';

part 'pages/review_page.dart';
part 'bloc/review_bloc.dart';
part 'bloc/review_state.dart';
part 'bloc/review_event.dart';
