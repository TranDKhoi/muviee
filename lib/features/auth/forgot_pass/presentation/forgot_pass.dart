library forgot_pass;

import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
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
import '../../verify_forgot/presentation/verify_forgot.dart';
import '../domain/use_cases/forgot_pass_usecase.dart';

part 'cubit/forgot_pass_cubit.dart';
part 'cubit/forgot_pass_state.dart';
part 'pages/forgot_pass_page.dart';
