using SimpleInventory.MVVM.ViewModel;
using SimpleInventory.Services;
using System.Diagnostics;
using UraniumUI.Controls;
using UraniumUI.Pages;
using System.Linq;                         
using Microsoft.Maui.Controls;



namespace SimpleInventory.MVVM.View;

public partial class CashView : UraniumContentPage
{
    public CashView()
    {
        InitializeComponent();
        BindingContext = new CashVM();
    }
    protected override void OnAppearing()
    {
        base.OnAppearing();
        NavService.Examine(Navigation);
    }

    private async void TapGestureRecognizer_Tapped(object sender, TappedEventArgs e)
    {
        var btn = (Border)sender;

        switch (btn.AutomationId)
        {
            case "page1":
                await NavService.NavigateAndKeepOnlyAsync(Navigation, new InventoryView());
                break;

            case "page2":
                await NavService.NavigateAndKeepOnlyAsync(Navigation, new OnTabView());
                break;
        }
    }

  

}