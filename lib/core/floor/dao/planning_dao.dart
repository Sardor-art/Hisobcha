import 'package:floor/floor.dart';
import 'package:hisobcha/core/floor/entity/planning.dart';

@dao
abstract class PlanningDao {
  @Query('SELECT * FROM Planning')
  Stream<List<Planning>> getAllPlanning();

  @Query('SELECT * FROM Planning WHERE id = :id')
  Future<Planning?> findPlanningById(int id);

  @insert
  Future<void> insertPlanning(Planning planning);

  @update
  Future<void> updatePlanning(Planning planning);

  @delete
  Future<void> removePlanning(Planning planning);

  @delete
  Future<void> removeAllPlanning(List<Planning> planning);
}
