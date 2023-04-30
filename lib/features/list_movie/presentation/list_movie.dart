library list_movie;

import 'dart:async';
import 'dart:io';

import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:loadmore_listview/loadmore_listview.dart';
import 'package:muviee/common/entity/movie_entity.dart';
import 'package:muviee/common/entity/movie_search_entity.dart';
import 'package:muviee/common/widgets/app_scaffold.dart';
import 'package:muviee/config/dimens.dart';
import 'package:muviee/config/enums.dart';
import 'package:muviee/utils/exception_util.dart';
import 'package:muviee/utils/extensions/translate_extension.dart';

import '../../../common/widgets/horizontal_movie_item.dart';
import '../../../config/langs/r.dart';
import '../../../di/injector.dart';
import '../domain/use_cases/list_movie_usecase.dart';

part 'pages/list_movie_page.dart';
part 'bloc/list_movie_bloc.dart';
part 'bloc/list_movie_state.dart';
part 'bloc/list_movie_event.dart';
