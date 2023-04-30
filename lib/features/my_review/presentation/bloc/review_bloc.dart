part of review;

@injectable
class ReviewBloc extends Bloc<ReviewEvent, ReviewState> {
  final ReviewUseCase _useCase;

  ReviewBloc(this._useCase) : super(ReviewInitial()) {
    on<GetReviewEvent>(_getMyReview);
  }

  Future<FutureOr<void>> _getMyReview(event, emit) async {
    try {
      var res = await _useCase.getMyReview();
      emit(ReviewLoaded(res));
    } catch (e) {
      ExceptionUtil.handle(e);
    }
  }
}
