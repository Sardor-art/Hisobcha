import 'package:hisobcha/core/floor/app_database.dart';
import 'package:hisobcha/core/floor/dao/planning_dao.dart';
import 'package:hisobcha/core/floor/entity/planning.dart';

class LocalSource {
  final PlanningDao _planningDao = AppDatabase.instance!.planningDao;

  LocalSource._();

  static LocalSource? _instance;

  static LocalSource getInstance() {
    if (_instance != null) {
      return _instance!;
    } else {
      return LocalSource._();
    }
  }

  Stream<List<Planning>> getAllPlanning() {
    return _planningDao.getAllPlanning();
  }

  Future<Planning?> getPlanningById(int id) {
    return _planningDao.findPlanningById(id);
  }

  Future<void> insertPlanning(Planning planning) async {
    await _planningDao.insertPlanning(planning);
  }

  Future<void> updatePlanning(Planning planning) async {
    await _planningDao.updatePlanning(planning);
  }

  Future<void> removePlanning(Planning planning) async {
    await _planningDao.removePlanning(planning);
  }

  Future<void> removeAllPlanning(List<Planning> planning) async {
    await _planningDao.removeAllPlanning(planning);
  }
}
