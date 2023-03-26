library verify_forgot;

import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:muviee/utils/extensions/context_extension.dart';
import 'package:muviee/utils/extensions/translate_extension.dart';

import '../../../../common/widgets/m_code_field.dart';
import '../../../../config/dimens.dart';
import '../../../../config/langs/r.dart';
import '../../../../config/styles.dart';
import '../../../../di/injector.dart';
import '../../../../utils/navigation_util.dart';
import '../../change_pass/presentation/change_pass.dart';

part 'cubit/verify_forgot_cubit.dart';
part 'cubit/verify_forgot_state.dart';
part 'pages/verify_forgot_page.dart';
