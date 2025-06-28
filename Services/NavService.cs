using SimpleInventory.MVVM.View;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SimpleInventory.Services
{
    public class NavService
    {
        public static void Examine(INavigation navigation)
        {
            StringBuilder builder = new StringBuilder();
            foreach (var page in navigation.NavigationStack)
            {
                builder.AppendLine(page.GetType().Name);
            }
            builder.AppendLine("-----------");
            Debug.WriteLine(builder.ToString());
        }

        public static void InsertPage(INavigation navigation)
        {
            var secondPage =
                 navigation.NavigationStack
                 .ElementAtOrDefault(1);
            if (secondPage != null)
            {
                navigation.InsertPageBefore(new CashView(),
                     secondPage);
            }
        }

        public static void DeletePage(INavigation navigation, string pageName)
        {
            var pageToDelete =
                 navigation.NavigationStack
                 .FirstOrDefault(x => x.GetType().Name == pageName);
            if (pageToDelete != null)
            {
                navigation.RemovePage(pageToDelete);
            }
        }
        public static async Task NavigateAndKeepOnlyAsync(INavigation navigation, Page targetPage)
            //to make sure the order of the stack
        {
            // Push new page
            await navigation.PushAsync(targetPage);

            // Get the latest stack AFTER push
            var currentPage = navigation.NavigationStack.LastOrDefault();

            var pagesToRemove = navigation.NavigationStack
                .Where(p => p != currentPage && p != navigation.NavigationStack.First()) // Keep root and current
                .ToList();

            foreach (var page in pagesToRemove)
            {
                navigation.RemovePage(page);
            }
        }

    }
}
