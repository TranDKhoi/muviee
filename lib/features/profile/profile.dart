library profile;

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:muviee/common/global_data.dart';
import 'package:muviee/config/dimens.dart';
import 'package:muviee/config/styles.dart';
import 'package:muviee/features/auth/login/presentation/login.dart';
import 'package:muviee/services/shared_service.dart';
import 'package:muviee/utils/extensions/context_extension.dart';
import 'package:muviee/utils/extensions/translate_extension.dart';

import '../../config/langs/r.dart';
import '../../utils/navigation_util.dart';
import '../setting/setting.dart';

part 'page/profile_page.dart';
part 'widgets/setting_item.dart';
part 'cubit/profile_cubit.dart';
part 'cubit/profile_state.dart';
