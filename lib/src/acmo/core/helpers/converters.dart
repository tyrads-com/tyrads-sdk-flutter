bool acmoConverterStringToBool(String? json) {
  if (json != null && json.toLowerCase() == 'true') {
    return true;
  }
  return false;
}

bool acmoConverterIntegerStringToBool(String? json) {
  if (json != null && json.toLowerCase() == '1') {
    return true;
  }
  return false;
}


int acmoConverterStringToInteger(String? json) {
  if (json != null) {
    return int.tryParse(json) ?? 0;
  }
  return 0;
}


DateTime? acmoConverterStringToDatetime(String? json) {
 if (json != null) {
      return DateTime.tryParse(json);
  }
  return null;
}



