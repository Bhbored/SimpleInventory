using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SimpleInventory.Converters
{
    public class TransactionQuantityConverter : IValueConverter
    {
        public object? Convert(object? value, Type targetType, object? parameter, CultureInfo culture)
        {
           var sell = (parameter as Label).Text;
            var phrase = (double)value;
            if(sell == "sell")
            {
                return $"Sold {phrase} items";
            }
            else
            {
                return $"Added {phrase} items";
            }



        }

        public object? ConvertBack(object? value, Type targetType, object? parameter, CultureInfo culture)
        {
            throw new NotImplementedException();
        }
    }
}
