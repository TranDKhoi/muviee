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
import 'package:muviee/features/actor/presentation/actor.dart' as _i38;
import 'package:muviee/features/auth/bio/presentation/bio.dart' as _i6;
import 'package:muviee/features/auth/change_pass/data/repositories/change_pass_repository_impl.dart'
    as _i8;
import 'package:muviee/features/auth/change_pass/domain/repositories/change_pass_repository.dart'
    as _i7;
import 'package:muviee/features/auth/change_pass/domain/use_cases/change_pass_usecase.dart'
    as _i9;
import 'package:muviee/features/auth/change_pass/presentation/change_pass.dart'
    as _i39;
import 'package:muviee/features/auth/forgot_pass/data/repositories/forgot_pass_repository_impl.dart'
    as _i11;
import 'package:muviee/features/auth/forgot_pass/domain/repositories/forgot_pass_repository.dart'
    as _i10;
import 'package:muviee/features/auth/forgot_pass/domain/use_cases/forgot_pass_usecase.dart'
    as _i12;
import 'package:muviee/features/auth/forgot_pass/presentation/forgot_pass.dart'
    as _i40;
import 'package:muviee/features/auth/login/data/repositories/login_repository_impl.dart'
    as _i17;
import 'package:muviee/features/auth/login/domain/repositories/login_repository.dart'
    as _i16;
import 'package:muviee/features/auth/login/domain/use_cases/login_usecase.dart'
    as _i18;
import 'package:muviee/features/auth/login/presentation/login.dart' as _i42;
import 'package:muviee/features/auth/sign_up/data/repositories/signup_repository_impl.dart'
    as _i29;
import 'package:muviee/features/auth/sign_up/domain/repositories/signup_repository.dart'
    as _i28;
import 'package:muviee/features/auth/sign_up/domain/use_cases/signup_usecase.dart'
    as _i30;
import 'package:muviee/features/auth/sign_up/presentation/signup.dart' as _i46;
import 'package:muviee/features/auth/verify_forgot/data/repositories/verify_forgot_repository_impl.dart'
    as _i32;
import 'package:muviee/features/auth/verify_forgot/domain/repositories/verify_forgot_repository.dart'
    as _i31;
import 'package:muviee/features/auth/verify_forgot/domain/use_cases/verify_forgot_usecase.dart'
    as _i33;
import 'package:muviee/features/auth/verify_forgot/presentation/verify_forgot.dart'
    as _i47;
import 'package:muviee/features/auth/verify_signup/data/repositories/verify_signup_repository_impl.dart'
    as _i35;
import 'package:muviee/features/auth/verify_signup/domain/repositories/verify_sinup_repository.dart'
    as _i34;
import 'package:muviee/features/auth/verify_signup/domain/use_cases/verify_signup_usecase.dart'
    as _i36;
import 'package:muviee/features/auth/verify_signup/presentation/verify_signup.dart'
    as _i48;
import 'package:muviee/features/home/data/repositories/home_repository_impl.dart'
    as _i14;
import 'package:muviee/features/home/domain/repositories/home_repository.dart'
    as _i13;
import 'package:muviee/features/home/domain/use_cases/home_usecase.dart'
    as _i15;
import 'package:muviee/features/home/presentation/home.dart' as _i41;
import 'package:muviee/features/movie_detail/data/repositories/movie_detail_repository_impl.dart'
    as _i20;
import 'package:muviee/features/movie_detail/domain/repositories/movie_detail_repository.dart'
    as _i19;
import 'package:muviee/features/movie_detail/domain/use_cases/movie_detail_usecase.dart'
    as _i21;
import 'package:muviee/features/movie_detail/presentation/movie_detail.dart'
    as _i43;
import 'package:muviee/features/profile/data/repository/profile_repository_impl.dart'
    as _i23;
import 'package:muviee/features/profile/domain/repository/profile_repository.dart'
    as _i22;
import 'package:muviee/features/profile/domain/usecase/profile_usecase.dart'
    as _i24;
import 'package:muviee/features/profile/presentation/profile.dart' as _i44;
import 'package:muviee/features/search/data/repository/search_repository_impl.dart'
    as _i26;
import 'package:muviee/features/search/domain/repository/search_repository.dart'
    as _i25;
import 'package:muviee/features/search/domain/usecase/search_usecase.dart'
    as _i27;
import 'package:muviee/features/search/presentation/search.dart' as _i45;
import 'package:muviee/features/watching/watching.dart'
    as _i37; // ignore_for_file: unnecessary_lambdas

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
    gh.factory<_i7.ChangePassRepository>(() => _i8.ChangePassRepositoryImpl());
    gh.factory<_i9.ChangePassUseCase>(
        () => _i9.ChangePassUseCaseImpl(gh<_i7.ChangePassRepository>()));
    gh.factory<_i10.ForgotPassRepository>(
        () => _i11.ForgotPassRepositoryImpl());
    gh.factory<_i12.ForgotPassUseCase>(
        () => _i12.ForgotPassUseCaseImpl(gh<_i10.ForgotPassRepository>()));
    gh.factory<_i13.HomeRepository>(() => _i14.HomeRepositoryImpl());
    gh.factory<_i15.HomeUseCase>(
        () => _i15.HomeUseCaseImpl(gh<_i13.HomeRepository>()));
    gh.lazySingleton<_i16.LoginRepository>(() => _i17.LoginRepositoryImpl());
    gh.lazySingleton<_i18.LoginUseCase>(
        () => _i18.LoginUseCaseImpl(gh<_i16.LoginRepository>()));
    gh.factory<_i19.MovieDetailRepository>(
        () => _i20.MovieDetailRepositoryImpl());
    gh.factory<_i21.MovieDetailUseCase>(
        () => _i21.MovieDetailUseCaseImpl(gh<_i19.MovieDetailRepository>()));
    gh.factory<_i22.ProfileRepository>(() => _i23.ProfileRepositoryImpl());
    gh.factory<_i24.ProfileUseCase>(
        () => _i24.ProfileUseCaseImpl(gh<_i22.ProfileRepository>()));
    gh.factory<_i25.SearchRepository>(() => _i26.SearchRepositoryImpl());
    gh.factory<_i27.SearchUseCase>(
        () => _i27.SearchUseCaseImpl(gh<_i25.SearchRepository>()));
    gh.factory<_i28.SignupRepository>(() => _i29.SignupRepositoryImpl());
    gh.factory<_i30.SignupUseCase>(
        () => _i30.SignupUseCaseImpl(gh<_i28.SignupRepository>()));
    gh.factory<_i31.VerifyForgotRepository>(
        () => _i32.VerifyForgotRepositoryImpl());
    gh.factory<_i33.VerifyForgotUseCase>(
        () => _i33.VerifyForgotUseCaseImpl(gh<_i31.VerifyForgotRepository>()));
    gh.factory<_i34.VerifySignupRepository>(
        () => _i35.VerifySignupRepositoryImpl());
    gh.factory<_i36.VerifySignupUseCase>(
        () => _i36.VerifySignupUseCaseImpl(gh<_i34.VerifySignupRepository>()));
    gh.factory<_i37.WatchingCubit>(() => _i37.WatchingCubit());
    gh.factory<_i38.ActorCubit>(() => _i38.ActorCubit(gh<_i5.ActorUseCase>()));
    gh.factory<_i39.ChangePassCubit>(
        () => _i39.ChangePassCubit(gh<_i9.ChangePassUseCase>()));
    gh.factory<_i40.ForgotPassCubit>(
        () => _i40.ForgotPassCubit(gh<_i12.ForgotPassUseCase>()));
    gh.factory<_i41.HomeBloc>(() => _i41.HomeBloc(gh<_i15.HomeUseCase>()));
    gh.factory<_i42.LoginBloc>(() => _i42.LoginBloc(gh<_i18.LoginUseCase>()));
    gh.factory<_i43.MovieDetailBloc>(
        () => _i43.MovieDetailBloc(gh<_i21.MovieDetailUseCase>()));
    gh.singleton<_i44.ProfileCubit>(
        _i44.ProfileCubit(gh<_i24.ProfileUseCase>()));
    gh.factory<_i45.SearchBloc>(
        () => _i45.SearchBloc(gh<_i27.SearchUseCase>()));
    gh.factory<_i46.SignupBloc>(
        () => _i46.SignupBloc(gh<_i30.SignupUseCase>()));
    gh.factory<_i47.VerifyForgotCubit>(
        () => _i47.VerifyForgotCubit(gh<_i33.VerifyForgotUseCase>()));
    gh.factory<_i48.VerifySignupCubit>(
        () => _i48.VerifySignupCubit(gh<_i36.VerifySignupUseCase>()));
    return this;
  }
}
