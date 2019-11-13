class Enum
{
    static T fromString<T>(List<T> enumValues, String value)
    {
        if (value == null || enumValues == null) return null;

        return value.contains(".") ?
            enumValues.singleWhere((x) => x.toString().toLowerCase() == value.toLowerCase(), orElse: () => null) :
            enumValues.singleWhere((x) => toString(x).toLowerCase() == value.toLowerCase(), orElse: () => null);
    }

    static String toString(enumItem)
    {
        if (enumItem == null) return null;

        var str = enumItem.toString();

        return str.contains('.') ? enumItem.toString().split('.')[1] : str;
    }
}
