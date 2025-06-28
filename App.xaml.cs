
using SimpleInventory.MVVM.Model;
using SimpleInventory.MVVM.View;
using SimpleInventory.Repositories;
using Syncfusion.Licensing;

namespace SimpleInventory
{
    public partial class App : Application
    {
        public static BaseRepository<CashRegister>? CashRegisterRepo { get ; private set; }
        public static BaseRepository<Person>? PersonRepo { get; private set; }
        public static BaseRepository<Product>? ProductRepo { get; private set; }
        public static BaseRepository<Transaction>? TransactionRepo { get; private set; }
         
        public App(BaseRepository<CashRegister> _cash, BaseRepository<Person> _person, BaseRepository<Product> _product,
            BaseRepository<Transaction> _transaction)
        {
            InitializeComponent();
            SyncfusionLicenseProvider.RegisterLicense("Ngo9BigBOggjHTQxAR8/V1JEaF5cXmRCf1FpRmJGdld5fUVHYVZUTXxaS00DNHVRdkdmWXlceHRTQ2ZYWUN/XkFWYEk=");
            CashRegisterRepo = _cash;
            PersonRepo = _person;
            ProductRepo = _product;
            TransactionRepo = _transaction;
            


        }

        protected override Window CreateWindow(IActivationState? activationState)
        {
            return new Window(new NavigationPage(new CashView()));
        }
    }
}