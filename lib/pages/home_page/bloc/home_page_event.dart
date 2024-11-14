part of 'home_page_bloc.dart';

sealed class HomePageEvent extends Equatable {
  const HomePageEvent();

  @override
  List<Object> get props => [];
}

final class Initial extends HomePageEvent {
  const Initial();

  @override
  List<Object> get props => [];
}
