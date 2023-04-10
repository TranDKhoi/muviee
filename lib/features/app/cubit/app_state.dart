part of 'app_cubit.dart';

@immutable
abstract class AppState extends Equatable {}

class AppInitial extends AppState {
  final String langId;
  final bool isDark;

  AppInitial({required this.langId, required this.isDark});

  @override
  List<Object?> get props => [
        langId,
        isDark,
      ];

  AppInitial copyWith({
    String? langId,
    bool? isDark,
  }) {
    return AppInitial(
      langId: langId ?? this.langId,
      isDark: isDark ?? this.isDark,
    );
  }
}
