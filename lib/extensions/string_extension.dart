extension StringExtension on String {
  String capitalize() =>
      '${this[0].toUpperCase()}${this.substring(1).toLowerCase()}';

  String first() => '${this[0]}';
}
