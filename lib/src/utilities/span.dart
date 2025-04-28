part of excel;

// For Spanning the columns and rows
// @Equatable()
class _Span {
  final int rowSpanStart;
  final int columnSpanStart;
  final int rowSpanEnd;
  final int columnSpanEnd;

  _Span({
    required this.rowSpanStart,
    required this.columnSpanStart,
    required this.rowSpanEnd,
    required this.columnSpanEnd,
  });

  _Span.fromCellIndex({
    required CellIndex start,
    required CellIndex end,
  })  : rowSpanStart = start.rowIndex,
        columnSpanStart = start.columnIndex,
        rowSpanEnd = end.rowIndex,
        columnSpanEnd = end.columnIndex;
}
