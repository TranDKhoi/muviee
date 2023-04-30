library signup;

import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:muviee/features/auth/sign_up/domain/entities/signup_entity.dart';
import 'package:muviee/utils/alert_util.dart';
import 'package:muviee/utils/exception_util.dart';
import 'package:muviee/utils/extensions/context_extension.dart';
import 'package:muviee/utils/extensions/translate_extension.dart';

import '../../../../common/widgets/m_text_field.dart';
import '../../../../config/dimens.dart';
import '../../../../config/langs/r.dart';
import '../../../../config/styles.dart';
import '../../../../di/injector.dart';
import '../../../../utils/navigation_util.dart';
import '../../verify_signup/presentation/verify_signup.dart';
import '../domain/use_cases/signup_usecase.dart';

part 'bloc/signup_bloc.dart';
part 'bloc/signup_event.dart';
part 'bloc/signup_state.dart';
part 'pages/sign_up_page.dart';
