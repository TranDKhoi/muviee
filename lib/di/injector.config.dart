// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:muviee/features/actor/data/repositories/actor_repository_impl.dart'
    as _i4;
import 'package:muviee/features/actor/domain/repositories/actor_repository.dart'
    as _i3;
import 'package:muviee/features/actor/domain/use_cases/actor_usecase.dart'
    as _i5;
import 'package:muviee/features/actor/presentation/actor.dart' as _i28;
import 'package:muviee/features/auth/bio/presentation/bio.dart' as _i6;
import 'package:muviee/features/auth/change_pass/presentation/change_pass.dart'
    as _i7;
import 'package:muviee/features/auth/forgot_pass/presentation/forgot_pass.dart'
    as _i8;
import 'package:muviee/features/auth/login/data/repositories/login_repository_impl.dart'
    as _i13;
import 'package:muviee/features/auth/login/domain/repositories/login_repository.dart'
    as _i12;
import 'package:muviee/features/auth/login/domain/use_cases/login_usecase.dart'
    as _i14;
import 'package:muviee/features/auth/login/presentation/login.dart' as _i30;
import 'package:muviee/features/auth/sign_up/presentation/signup.dart' as _i24;
import 'package:muviee/features/auth/verify_forgot/presentation/verify_forgot.dart'
    as _i25;
import 'package:muviee/features/auth/verify_signup/presentation/verify_signup.dart'
    as _i26;
import 'package:muviee/features/home/data/repositories/home_repository_impl.dart'
    as _i10;
import 'package:muviee/features/home/domain/repositories/home_repository.dart'
    as _i9;
import 'package:muviee/features/home/domain/use_cases/home_usecase.dart'
    as _i11;
import 'package:muviee/features/home/presentation/home.dart' as _i29;
import 'package:muviee/features/movie_detail/data/repositories/movie_detail_repository_impl.dart'
    as _i16;
import 'package:muviee/features/movie_detail/domain/repositories/movie_detail_repository.dart'
    as _i15;
import 'package:muviee/features/movie_detail/domain/use_cases/movie_detail_usecase.dart'
    as _i17;
import 'package:muviee/features/movie_detail/presentation/movie_detail.dart'
    as _i31;
import 'package:muviee/features/profile/data/repository/profile_repository_impl.dart'
    as _i19;
import 'package:muviee/features/profile/domain/repository/profile_repository.dart'
    as _i18;
import 'package:muviee/features/profile/domain/usecase/profile_usecase.dart'
    as _i20;
import 'package:muviee/features/profile/presentation/profile.dart' as _i32;
import 'package:muviee/features/search/data/repository/search_repository_impl.dart'
    as _i22;
import 'package:muviee/features/search/domain/repository/search_repository.dart'
    as _i21;
import 'package:muviee/features/search/domain/usecase/search_usecase.dart'
    as _i23;
import 'package:muviee/features/search/presentation/search.dart' as _i33;
import 'package:muviee/features/watching/watching.dart'
    as _i27; // ignore_for_file: unnecessary_lambdas

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
    gh.factory<_i3.ActorRepository>(() => _i4.ActorRepositoryImpl());
    gh.factory<_i5.ActorUseCase>(
        () => _i5.ActorUseCaseImpl(gh<_i3.ActorRepository>()));
    gh.factory<_i6.BioCubit>(() => _i6.BioCubit());
    gh.factory<_i7.ChangePassCubit>(() => _i7.ChangePassCubit());
    gh.factory<_i8.ForgotPassCubit>(() => _i8.ForgotPassCubit());
    gh.factory<_i9.HomeRepository>(() => _i10.HomeRepositoryImpl());
    gh.factory<_i11.HomeUseCase>(
        () => _i11.HomeUseCaseImpl(gh<_i9.HomeRepository>()));
    gh.lazySingleton<_i12.LoginRepository>(() => _i13.LoginRepositoryImpl());
    gh.lazySingleton<_i14.LoginUseCase>(
        () => _i14.LoginUseCaseImpl(gh<_i12.LoginRepository>()));
    gh.factory<_i15.MovieDetailRepository>(
        () => _i16.MovieDetailRepositoryImpl());
    gh.factory<_i17.MovieDetailUseCase>(
        () => _i17.MovieDetailUseCaseImpl(gh<_i15.MovieDetailRepository>()));
    gh.factory<_i18.ProfileRepository>(() => _i19.ProfileRepositoryImpl());
    gh.factory<_i20.ProfileUseCase>(
        () => _i20.ProfileUseCaseImpl(gh<_i18.ProfileRepository>()));
    gh.factory<_i21.SearchRepository>(() => _i22.SearchRepositoryImpl());
    gh.factory<_i23.SearchUseCase>(
        () => _i23.SearchUseCaseImpl(gh<_i21.SearchRepository>()));
    gh.factory<_i24.SignupBloc>(() => _i24.SignupBloc());
    gh.factory<_i25.VerifyForgotCubit>(() => _i25.VerifyForgotCubit());
    gh.factory<_i26.VerifySignupCubit>(() => _i26.VerifySignupCubit());
    gh.factory<_i27.WatchingCubit>(() => _i27.WatchingCubit());
    gh.factory<_i28.ActorCubit>(() => _i28.ActorCubit(gh<_i5.ActorUseCase>()));
    gh.factory<_i29.HomeBloc>(() => _i29.HomeBloc(gh<_i11.HomeUseCase>()));
    gh.factory<_i30.LoginBloc>(() => _i30.LoginBloc(gh<_i14.LoginUseCase>()));
    gh.factory<_i31.MovieDetailBloc>(
        () => _i31.MovieDetailBloc(gh<_i17.MovieDetailUseCase>()));
    gh.singleton<_i32.ProfileCubit>(
        _i32.ProfileCubit(gh<_i20.ProfileUseCase>()));
    gh.factory<_i33.SearchBloc>(
        () => _i33.SearchBloc(gh<_i23.SearchUseCase>()));
    return this;
  }
}
