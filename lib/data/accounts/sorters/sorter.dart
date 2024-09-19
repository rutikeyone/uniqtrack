abstract interface class Sorter {
  int sortByDate(DateTime? firstItemDate, DateTime? secondItemDate);
}

class SorterImpl implements Sorter {
  @override
  int sortByDate(DateTime? firstItemDate, DateTime? secondItemDate) {
    if (firstItemDate == null) return 1;
    if (secondItemDate == null) return -1;
    final compareToResult = secondItemDate.compareTo(firstItemDate);
    return compareToResult;
  }
}
