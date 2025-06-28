using SimpleInventory.Services;

namespace SimpleInventory.MVVM.View;

public partial class InventoryView : ContentPage
{
	public InventoryView()
	{
		InitializeComponent();
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
                await NavService.NavigateAndKeepOnlyAsync(Navigation, new CashView());
                break;

            case "page2":
                await NavService.NavigateAndKeepOnlyAsync(Navigation, new OnTabView());
                break;
        }
    }
}