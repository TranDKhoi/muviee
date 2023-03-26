// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:muviee/features/auth/bio/presentation/bio.dart' as _i3;
import 'package:muviee/features/auth/change_pass/presentation/change_pass.dart'
    as _i4;
import 'package:muviee/features/auth/forgot_pass/presentation/forgot_pass.dart'
    as _i5;
import 'package:muviee/features/auth/login/data/models/user_data_mapper.dart'
    as _i7;
import 'package:muviee/features/auth/login/data/repositories/login_repository_impl.dart'
    as _i11;
import 'package:muviee/features/auth/login/domain/repositories/login_repository.dart'
    as _i10;
import 'package:muviee/features/auth/login/domain/use_cases/login_usecase.dart'
    as _i12;
import 'package:muviee/features/auth/login/presentation/login.dart' as _i13;
import 'package:muviee/features/auth/sign_up/presentation/signup.dart' as _i6;
import 'package:muviee/features/auth/verify_forgot/presentation/verify_forgot.dart'
    as _i8;
import 'package:muviee/features/auth/verify_signup/presentation/verify_signup.dart'
    as _i9; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
extension GetItInjectableX on _i1.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.factory<_i3.BioCubit>(() => _i3.BioCubit());
    gh.factory<_i4.ChangePassCubit>(() => _i4.ChangePassCubit());
    gh.factory<_i5.ForgotPassCubit>(() => _i5.ForgotPassCubit());
    gh.factory<_i6.SignupBloc>(() => _i6.SignupBloc());
    gh.lazySingleton<_i7.UserDataMapper>(() => _i7.UserDataMapper());
    gh.factory<_i8.VerifyForgotCubit>(() => _i8.VerifyForgotCubit());
    gh.factory<_i9.VerifySignupCubit>(() => _i9.VerifySignupCubit());
    gh.lazySingleton<_i10.LoginRepository>(
        () => _i11.LoginRepositoryImpl(gh<_i7.UserDataMapper>()));
    gh.lazySingleton<_i12.LoginUseCase>(
        () => _i12.LoginUseCaseImpl(gh<_i10.LoginRepository>()));
    gh.factory<_i13.LoginBloc>(() => _i13.LoginBloc(gh<_i12.LoginUseCase>()));
    return this;
  }
}
