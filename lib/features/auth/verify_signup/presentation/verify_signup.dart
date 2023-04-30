library verify_signup;

import 'dart:ffi';

import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:muviee/common/global_data.dart';
import 'package:muviee/common/widgets/m_code_field.dart';
import 'package:muviee/features/auth/bio/presentation/bio.dart';
import 'package:muviee/utils/alert_util.dart';
import 'package:muviee/utils/exception_util.dart';
import 'package:muviee/utils/extensions/context_extension.dart';
import 'package:muviee/utils/extensions/translate_extension.dart';

import '../../../../config/dimens.dart';
import '../../../../config/langs/r.dart';
import '../../../../config/styles.dart';
import '../../../../di/injector.dart';
import '../../../../utils/navigation_util.dart';
import '../../../success/success_page.dart';
import '../domain/use_cases/verify_signup_usecase.dart';

part 'cubit/verify_signup_cubit.dart';
part 'cubit/verify_signup_state.dart';
part 'pages/verify_signup_page.dart';
