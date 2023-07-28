import '../../../../../core/entities/data_response.dart';
import '../../../../../core/entities/use_case.dart';
import '../../repositories/subjects_repository.dart';

class SubjectsGetSubjectsUseCase extends UseCase<DataResponse, NoParams> {
  final SubjectsRepository subjectsRepository;

  SubjectsGetSubjectsUseCase(this.subjectsRepository);

  @override
  Future<DataResponse> call(NoParams params) async {
    return await subjectsRepository.getSubjects();
  }
}
