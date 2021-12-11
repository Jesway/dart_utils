T? enumFromString<T>(List<T>? enumValues, String? value)
{
  if (value == null || enumValues == null) return null;

  return value.contains(".") ?
      enumValues.singleWhere((x) => x.toString().toLowerCase() == value.toLowerCase(), orElse: () => null as T) :
      enumValues.singleWhere((x) => enumToString(x)?.toLowerCase() == value.toLowerCase(), orElse: () => null as T);
}

String? enumToString (enumItem)
{
    if (enumItem == null) return null;

    var str = enumItem.toString();

    return str.contains('.') ? enumItem.toString().split('.')[1] : str;
}
