using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SimpleInventory.Converters
{
    public class AmountSignConverter : IValueConverter
    {
        public object? Convert(object? value, Type targetType, object? parameter, CultureInfo culture)
        {
            var isPaid = ((Label)parameter).Text;
            var amount =
                 (double)value;
            if (isPaid == "sell")
            {
                return $"+ {amount:C}";
            }
            else
            {
                return $"- {amount:C}";
            }
        }

        public object? ConvertBack(object? value, Type targetType, object? parameter, CultureInfo culture)
        {
            throw new NotImplementedException();
        }
    }
}
