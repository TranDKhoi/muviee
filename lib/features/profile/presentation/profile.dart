library profile;

import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:muviee/common/global_data.dart';
import 'package:muviee/config/dimens.dart';
import 'package:muviee/config/styles.dart';
import 'package:muviee/di/injector.dart';
import 'package:muviee/features/auth/login/presentation/login.dart';
import 'package:muviee/features/bottom_bar/cubit/bottombar_cubit.dart';
import 'package:muviee/features/profile/domain/usecase/profile_usecase.dart';
import 'package:muviee/features/profile/presentation/widgets/change_pass_dialog.dart';
import 'package:muviee/services/shared_service.dart';
import 'package:muviee/utils/exception_util.dart';
import 'package:muviee/utils/extensions/context_extension.dart';
import 'package:muviee/utils/extensions/translate_extension.dart';

import '../../../common/entity/movie_search_entity.dart';
import '../../../common/entity/my_review/my_review_search_entity.dart';
import '../../../common/models/movie_search_model.dart';
import '../../../common/models/my_review/my_review_search_model.dart';
import '../../../config/langs/r.dart';
import '../../../utils/alert_util.dart';
import '../../../utils/navigation_util.dart';
import '../../my_favorite/presentation/favorite.dart';
import '../../my_history/presentation/history.dart';
import '../../my_review/presentation/review.dart';
import '../../setting/setting.dart';

part '../presentation/cubit/profile_cubit.dart';

part '../presentation/cubit/profile_state.dart';

part '../presentation/page/profile_page.dart';

part '../presentation/widgets/setting_item.dart';
