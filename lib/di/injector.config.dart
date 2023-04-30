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
import 'package:muviee/features/actor/presentation/actor.dart' as _i47;
import 'package:muviee/features/auth/bio/presentation/bio.dart' as _i6;
import 'package:muviee/features/auth/change_pass/data/repositories/change_pass_repository_impl.dart'
    as _i8;
import 'package:muviee/features/auth/change_pass/domain/repositories/change_pass_repository.dart'
    as _i7;
import 'package:muviee/features/auth/change_pass/domain/use_cases/change_pass_usecase.dart'
    as _i9;
import 'package:muviee/features/auth/change_pass/presentation/change_pass.dart'
    as _i48;
import 'package:muviee/features/auth/forgot_pass/data/repositories/forgot_pass_repository_impl.dart'
    as _i11;
import 'package:muviee/features/auth/forgot_pass/domain/repositories/forgot_pass_repository.dart'
    as _i10;
import 'package:muviee/features/auth/forgot_pass/domain/use_cases/forgot_pass_usecase.dart'
    as _i12;
import 'package:muviee/features/auth/forgot_pass/presentation/forgot_pass.dart'
    as _i49;
import 'package:muviee/features/auth/login/data/repositories/login_repository_impl.dart'
    as _i23;
import 'package:muviee/features/auth/login/domain/repositories/login_repository.dart'
    as _i22;
import 'package:muviee/features/auth/login/domain/use_cases/login_usecase.dart'
    as _i24;
import 'package:muviee/features/auth/login/presentation/login.dart' as _i53;
import 'package:muviee/features/auth/sign_up/data/repositories/signup_repository_impl.dart'
    as _i38;
import 'package:muviee/features/auth/sign_up/domain/repositories/signup_repository.dart'
    as _i37;
import 'package:muviee/features/auth/sign_up/domain/use_cases/signup_usecase.dart'
    as _i39;
import 'package:muviee/features/auth/sign_up/presentation/signup.dart' as _i58;
import 'package:muviee/features/auth/verify_forgot/data/repositories/verify_forgot_repository_impl.dart'
    as _i41;
import 'package:muviee/features/auth/verify_forgot/domain/repositories/verify_forgot_repository.dart'
    as _i40;
import 'package:muviee/features/auth/verify_forgot/domain/use_cases/verify_forgot_usecase.dart'
    as _i42;
import 'package:muviee/features/auth/verify_forgot/presentation/verify_forgot.dart'
    as _i59;
import 'package:muviee/features/auth/verify_signup/data/repositories/verify_signup_repository_impl.dart'
    as _i44;
import 'package:muviee/features/auth/verify_signup/domain/repositories/verify_sinup_repository.dart'
    as _i43;
import 'package:muviee/features/auth/verify_signup/domain/use_cases/verify_signup_usecase.dart'
    as _i45;
import 'package:muviee/features/auth/verify_signup/presentation/verify_signup.dart'
    as _i60;
import 'package:muviee/features/home/data/repositories/home_repository_impl.dart'
    as _i17;
import 'package:muviee/features/home/domain/repositories/home_repository.dart'
    as _i16;
import 'package:muviee/features/home/domain/use_cases/home_usecase.dart'
    as _i18;
import 'package:muviee/features/home/presentation/home.dart' as _i51;
import 'package:muviee/features/list_movie/data/repositories/list_movie_repository_impl.dart'
    as _i20;
import 'package:muviee/features/list_movie/domain/repositories/list_movie_repository.dart'
    as _i19;
import 'package:muviee/features/list_movie/domain/use_cases/list_movie_usecase.dart'
    as _i21;
import 'package:muviee/features/list_movie/presentation/list_movie.dart'
    as _i52;
import 'package:muviee/features/movie_detail/data/repositories/movie_detail_repository_impl.dart'
    as _i26;
import 'package:muviee/features/movie_detail/domain/repositories/movie_detail_repository.dart'
    as _i25;
import 'package:muviee/features/movie_detail/domain/use_cases/movie_detail_usecase.dart'
    as _i27;
import 'package:muviee/features/movie_detail/presentation/movie_detail.dart'
    as _i54;
import 'package:muviee/features/my_history/data/repositories/history_repository_impl.dart'
    as _i14;
import 'package:muviee/features/my_history/domain/repositories/hisory_repository.dart'
    as _i13;
import 'package:muviee/features/my_history/domain/use_cases/history_usecase.dart'
    as _i15;
import 'package:muviee/features/my_history/presentation/history.dart' as _i50;
import 'package:muviee/features/my_review/data/repositories/review_repository_impl.dart'
    as _i32;
import 'package:muviee/features/my_review/domain/repositories/review_repository.dart'
    as _i31;
import 'package:muviee/features/my_review/domain/use_cases/review_usecase.dart'
    as _i33;
import 'package:muviee/features/my_review/presentation/review.dart' as _i56;
import 'package:muviee/features/profile/data/repository/profile_repository_impl.dart'
    as _i29;
import 'package:muviee/features/profile/domain/repository/profile_repository.dart'
    as _i28;
import 'package:muviee/features/profile/domain/usecase/profile_usecase.dart'
    as _i30;
import 'package:muviee/features/profile/presentation/profile.dart' as _i55;
import 'package:muviee/features/search/data/repository/search_repository_impl.dart'
    as _i35;
import 'package:muviee/features/search/domain/repository/search_repository.dart'
    as _i34;
import 'package:muviee/features/search/domain/usecase/search_usecase.dart'
    as _i36;
import 'package:muviee/features/search/presentation/search.dart' as _i57;
import 'package:muviee/features/watching/watching.dart'
    as _i46; // ignore_for_file: unnecessary_lambdas

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
    gh.factory<_i13.HistoryRepository>(() => _i14.HistoryRepositoryImpl());
    gh.factory<_i15.HistoryUseCase>(
        () => _i15.HistoryUseCaseImpl(gh<_i13.HistoryRepository>()));
    gh.factory<_i16.HomeRepository>(() => _i17.HomeRepositoryImpl());
    gh.factory<_i18.HomeUseCase>(
        () => _i18.HomeUseCaseImpl(gh<_i16.HomeRepository>()));
    gh.factory<_i19.ListMovieRepository>(() => _i20.ListMovieRepositoryImpl());
    gh.factory<_i21.ListMovieUseCase>(
        () => _i21.ListMovieUseCaseImpl(gh<_i19.ListMovieRepository>()));
    gh.lazySingleton<_i22.LoginRepository>(() => _i23.LoginRepositoryImpl());
    gh.lazySingleton<_i24.LoginUseCase>(
        () => _i24.LoginUseCaseImpl(gh<_i22.LoginRepository>()));
    gh.factory<_i25.MovieDetailRepository>(
        () => _i26.MovieDetailRepositoryImpl());
    gh.factory<_i27.MovieDetailUseCase>(
        () => _i27.MovieDetailUseCaseImpl(gh<_i25.MovieDetailRepository>()));
    gh.factory<_i28.ProfileRepository>(() => _i29.ProfileRepositoryImpl());
    gh.factory<_i30.ProfileUseCase>(
        () => _i30.ProfileUseCaseImpl(gh<_i28.ProfileRepository>()));
    gh.factory<_i31.ReviewRepository>(() => _i32.ReviewRepositoryImpl());
    gh.factory<_i33.ReviewUseCase>(
        () => _i33.ReviewUseCaseImpl(gh<_i31.ReviewRepository>()));
    gh.factory<_i34.SearchRepository>(() => _i35.SearchRepositoryImpl());
    gh.factory<_i36.SearchUseCase>(
        () => _i36.SearchUseCaseImpl(gh<_i34.SearchRepository>()));
    gh.factory<_i37.SignupRepository>(() => _i38.SignupRepositoryImpl());
    gh.factory<_i39.SignupUseCase>(
        () => _i39.SignupUseCaseImpl(gh<_i37.SignupRepository>()));
    gh.factory<_i40.VerifyForgotRepository>(
        () => _i41.VerifyForgotRepositoryImpl());
    gh.factory<_i42.VerifyForgotUseCase>(
        () => _i42.VerifyForgotUseCaseImpl(gh<_i40.VerifyForgotRepository>()));
    gh.factory<_i43.VerifySignupRepository>(
        () => _i44.VerifySignupRepositoryImpl());
    gh.factory<_i45.VerifySignupUseCase>(
        () => _i45.VerifySignupUseCaseImpl(gh<_i43.VerifySignupRepository>()));
    gh.factory<_i46.WatchingCubit>(() => _i46.WatchingCubit());
    gh.factory<_i47.ActorCubit>(() => _i47.ActorCubit(gh<_i5.ActorUseCase>()));
    gh.factory<_i48.ChangePassCubit>(
        () => _i48.ChangePassCubit(gh<_i9.ChangePassUseCase>()));
    gh.factory<_i49.ForgotPassCubit>(
        () => _i49.ForgotPassCubit(gh<_i12.ForgotPassUseCase>()));
    gh.factory<_i50.HistoryCubit>(
        () => _i50.HistoryCubit(gh<_i15.HistoryUseCase>()));
    gh.factory<_i51.HomeBloc>(() => _i51.HomeBloc(gh<_i18.HomeUseCase>()));
    gh.factory<_i52.ListMovieBloc>(
        () => _i52.ListMovieBloc(gh<_i21.ListMovieUseCase>()));
    gh.factory<_i53.LoginBloc>(() => _i53.LoginBloc(gh<_i24.LoginUseCase>()));
    gh.factory<_i54.MovieDetailBloc>(
        () => _i54.MovieDetailBloc(gh<_i27.MovieDetailUseCase>()));
    gh.singleton<_i55.ProfileCubit>(
        _i55.ProfileCubit(gh<_i30.ProfileUseCase>()));
    gh.factory<_i56.ReviewBloc>(
        () => _i56.ReviewBloc(gh<_i33.ReviewUseCase>()));
    gh.factory<_i57.SearchBloc>(
        () => _i57.SearchBloc(gh<_i36.SearchUseCase>()));
    gh.factory<_i58.SignupBloc>(
        () => _i58.SignupBloc(gh<_i39.SignupUseCase>()));
    gh.factory<_i59.VerifyForgotCubit>(
        () => _i59.VerifyForgotCubit(gh<_i42.VerifyForgotUseCase>()));
    gh.factory<_i60.VerifySignupCubit>(
        () => _i60.VerifySignupCubit(gh<_i45.VerifySignupUseCase>()));
    return this;
  }
}
