import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:graduationproject/data/api_services/api_servicese.dart';
import 'package:graduationproject/data/errors/server_excaption.dart';
import 'package:graduationproject/data/model/myfound_model/myfound_model.dart';

part 'myfound_state.dart';

class MyfoundCubit extends Cubit<MyfoundState> {
  MyfoundCubit(this.api) : super(MyfoundInitial());
  final ApiServices api;
  Myfoundes? myfondedlist;

  // ignore: non_constant_identifier_names
  Future GetMyLost() async {
    try {
      emit(Myfoundloaded());

      final response = await api.get(
        'https://lostcal.onrender.com/api/lost',
      );

      emit(Myfoundseacsess(myfound: Myfoundes.fromJson(response)));
      return response;
    } on ServerException catch (e) {
      emit(Myfoundfaliouer(errormassage: e.errorsearch.message!));
    }
  }
}
