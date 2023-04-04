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
import 'package:muviee/features/auth/login/data/repositories/login_repository_impl.dart'
    as _i10;
import 'package:muviee/features/auth/login/domain/repositories/login_repository.dart'
    as _i9;
import 'package:muviee/features/auth/login/domain/use_cases/login_usecase.dart'
    as _i11;
import 'package:muviee/features/auth/login/presentation/login.dart' as _i19;
import 'package:muviee/features/auth/sign_up/presentation/signup.dart' as _i15;
import 'package:muviee/features/auth/verify_forgot/presentation/verify_forgot.dart'
    as _i16;
import 'package:muviee/features/auth/verify_signup/presentation/verify_signup.dart'
    as _i17;
import 'package:muviee/features/home/data/repositories/home_repository_impl.dart'
    as _i7;
import 'package:muviee/features/home/domain/repositories/home_repository.dart'
    as _i6;
import 'package:muviee/features/home/domain/use_cases/home_usecase.dart' as _i8;
import 'package:muviee/features/home/presentation/home.dart' as _i18;
import 'package:muviee/features/movie_detail/data/repositories/movie_detail_repository_impl.dart'
    as _i13;
import 'package:muviee/features/movie_detail/domain/repositories/movie_detail_repository.dart'
    as _i12;
import 'package:muviee/features/movie_detail/domain/use_cases/movie_detail_usecase.dart'
    as _i14;
import 'package:muviee/features/movie_detail/presentation/movie_detail.dart'
    as _i20; // ignore_for_file: unnecessary_lambdas

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
    gh.factory<_i6.HomeRepository>(() => _i7.HomeRepositoryImpl());
    gh.factory<_i8.HomeUseCase>(
        () => _i8.HomeUseCaseImpl(gh<_i6.HomeRepository>()));
    gh.lazySingleton<_i9.LoginRepository>(() => _i10.LoginRepositoryImpl());
    gh.lazySingleton<_i11.LoginUseCase>(
        () => _i11.LoginUseCaseImpl(gh<_i9.LoginRepository>()));
    gh.factory<_i12.MovieDetailRepository>(
        () => _i13.MovieDetailRepositoryImpl());
    gh.factory<_i14.MovieDetailUseCase>(
        () => _i14.MovieDetailUseCaseImpl(gh<_i12.MovieDetailRepository>()));
    gh.factory<_i15.SignupBloc>(() => _i15.SignupBloc());
    gh.factory<_i16.VerifyForgotCubit>(() => _i16.VerifyForgotCubit());
    gh.factory<_i17.VerifySignupCubit>(() => _i17.VerifySignupCubit());
    gh.factory<_i18.HomeBloc>(() => _i18.HomeBloc(gh<_i8.HomeUseCase>()));
    gh.factory<_i19.LoginBloc>(() => _i19.LoginBloc(gh<_i11.LoginUseCase>()));
    gh.factory<_i20.MovieDetailBloc>(
        () => _i20.MovieDetailBloc(gh<_i14.MovieDetailUseCase>()));
    return this;
  }
}
