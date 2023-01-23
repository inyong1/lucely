extension StringExtensions on String {
  int toIntOrZero() => int.tryParse(trim()) ?? 0;

  int? toIntOrNull() => int.tryParse(trim());

  double toDoubleOrZero() => double.tryParse(trim()) ?? 0.0;
}
