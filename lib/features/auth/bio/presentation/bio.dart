library bio;

import 'package:autocomplete_textfield_ns/autocomplete_textfield_ns.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:muviee/common/widgets/m_text_field.dart';
import 'package:muviee/features/bottom_bar/bottom_bar_page.dart';
import 'package:muviee/utils/extensions/context_extension.dart';
import 'package:muviee/utils/extensions/translate_extension.dart';
import 'package:muviee/utils/global_keys.dart';

import '../../../../config/dimens.dart';
import '../../../../config/langs/r.dart';
import '../../../../config/styles.dart';
import '../../../../di/injector.dart';
import '../../../../utils/navigation_util.dart';

part 'cubit/bio_cubit.dart';
part 'cubit/bio_state.dart';
part 'pages/bio_page.dart';
