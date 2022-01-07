import 'package:floor/floor.dart';

@entity
class Planning {
  @PrimaryKey(autoGenerate: true)
  final int? id;
  final String? name;
  final String? price;
  @ColumnInfo(name: 'from_date')
  final String? fromDate;
  @ColumnInfo(name: 'end_date')
  final String? endDate;
  final int? status;

  Planning({
    this.id,
    this.name,
    this.price,
    this.fromDate,
    this.endDate,
    this.status,
  });
}
