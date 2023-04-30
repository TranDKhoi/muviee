library login;

import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:muviee/common/global_data.dart';
import 'package:muviee/common/widgets/m_text_field.dart';
import 'package:muviee/config/dimens.dart';
import 'package:muviee/config/styles.dart';
import 'package:muviee/features/auth/verify_signup/presentation/verify_signup.dart';
import 'package:muviee/features/bottom_bar/bottom_bar_page.dart';
import 'package:muviee/features/success/success_page.dart';
import 'package:muviee/utils/extensions/context_extension.dart';
import 'package:muviee/utils/extensions/translate_extension.dart';
import 'package:muviee/utils/navigation_util.dart';

import '../../../../config/langs/r.dart';
import '../../../../di/injector.dart';
import '../../../../utils/alert_util.dart';
import '../../../../utils/exception_util.dart';
import '../../forgot_pass/presentation/forgot_pass.dart';
import '../../sign_up/presentation/signup.dart';
import '../domain/use_cases/login_usecase.dart';

part 'bloc/login_bloc.dart';
part 'bloc/login_event.dart';
part 'bloc/login_state.dart';
part 'login_page.dart';
