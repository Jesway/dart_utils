T enumFromString<T>(List<T> enumValues, String value)
{
if (value == null || enumValues == null) return null;

return value.contains(".") ?
    enumValues.singleWhere((x) => x.toString().toLowerCase() == value.toLowerCase(), orElse: () => null) :
    enumValues.singleWhere((x) => enumToString(x).toLowerCase() == value.toLowerCase(), orElse: () => null);
}

String enumToString (enumItem)
{
    if (enumItem == null) return null;

    var str = enumItem.toString();

    return str.contains('.') ? enumItem.toString().split('.')[1] : str;
}
