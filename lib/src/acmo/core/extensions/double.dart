extension DoubleExtension on double {
  String formatDouble({int maxDecimals = 2, double epsilon = 1e-10}) {
    final roundedValue = (abs() - abs().roundToDouble()).abs() < epsilon
        ? roundToDouble()
        : this;

    final str = roundedValue.toString();
    final dotIndex = str.indexOf('.');
    if (dotIndex == -1) return str;

    final decimalPart = str.substring(dotIndex + 1);
    if (decimalPart.isEmpty || decimalPart == '0') {
      return str.substring(0, dotIndex);
    }

    final trimmedDecimals = decimalPart.length > maxDecimals 
        ? decimalPart.substring(0, maxDecimals) 
        : decimalPart;

    final trimmed = trimmedDecimals.replaceAll(RegExp(r'0+$'), '');
    return '${str.substring(0, dotIndex)}.${trimmed.isNotEmpty ? trimmed : '0'}';
  }
}