using InputKit.Shared.Controls;
using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SimpleInventory.Converters
{
    class ColorConverter : IValueConverter
    {
        public object? Convert(object? value, Type targetType, object? parameter, CultureInfo culture)
        {
           
                var isPaid = (parameter as Label).Text;
                if (isPaid == "sell")
                {
                    return Colors.DarkGreen;

                }
                else
                {
                    return Colors.DarkRed;
                }
            }
           

        

        public object? ConvertBack(object? value, Type targetType, object? parameter, CultureInfo culture)
        {
            throw new NotImplementedException();
        }
    }
}
