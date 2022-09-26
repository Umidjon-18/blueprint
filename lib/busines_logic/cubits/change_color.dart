import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ChangeColorCubit extends Cubit<ChangeColorState> {
  ChangeColorCubit() : super(const ChangeColorState());
  changeColor(ChangeColorStatus selectedStatus) {
    switch (selectedStatus) {
      case ChangeColorStatus.blue:
        emit(const ChangeColorState(status: ChangeColorStatus.blue));
        break;
      case ChangeColorStatus.red:
        emit(const ChangeColorState(status: ChangeColorStatus.red));
        break;
      case ChangeColorStatus.green:
        emit(const ChangeColorState(status: ChangeColorStatus.green));
        break;
      case ChangeColorStatus.yellow:
        emit(const ChangeColorState(status: ChangeColorStatus.yellow));
        break;
    }
  }
}

enum ChangeColorStatus { red, green, blue, yellow }

@CopyWith()
class ChangeColorState extends Equatable {
  const ChangeColorState({this.status = ChangeColorStatus.green});
  final ChangeColorStatus status;

  @override
  List<Object?> get props => [status];
}
