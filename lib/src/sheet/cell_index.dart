part of excel;

// @Equatable()
class CellIndex {
  CellIndex._({required this.columnIndex, required this.rowIndex});

  ///
  ///```
  ///CellIndex.indexByColumnRow(columnIndex: 0, rowIndex: 0 ); // A1
  ///CellIndex.indexByColumnRow(columnIndex: 0, rowIndex: 1 ); // A2
  ///```
  factory CellIndex.indexByColumnRow(
      {required int columnIndex, required int rowIndex}) {
    return CellIndex._(columnIndex: columnIndex, rowIndex: rowIndex);
  }

  ///
  ///```
  /// CellIndex.indexByString('A1'); // columnIndex: 0, rowIndex: 0
  /// CellIndex.indexByString('A2'); // columnIndex: 0, rowIndex: 1
  ///```
  factory CellIndex.indexByString(String cellIndex) {
    final coords = _cellCoordsFromCellId(cellIndex);
    return CellIndex._(rowIndex: coords.$1, columnIndex: coords.$2);
  }

  /// Avoid using it as it is very process expensive function.
  ///
  /// ```
  /// var cellIndex = CellIndex.indexByColumnRow(columnIndex: 0, rowIndex: 0 );
  /// var cell = cellIndex.cellId; // A1
  String get cellId {
    return getCellId(this.columnIndex, this.rowIndex);
  }

  final int rowIndex;
  final int columnIndex;
}
