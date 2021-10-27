T enumFromString<T>(List<T> enumValues, String value)
{
return value.contains(".") ?
    enumValues.singleWhere((x) => x.toString().toLowerCase() == value.toLowerCase()) :
    enumValues.singleWhere((x) => enumToString(x)!.toLowerCase() == value.toLowerCase());
}

String? enumToString (enumItem)
{
    if (enumItem == null) return null;

    var str = enumItem.toString();

    return str.contains('.') ? enumItem.toString().split('.')[1] : str;
}
