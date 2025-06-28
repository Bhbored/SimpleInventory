using PropertyChanged;
using SimpleInventory.MVVM.Model;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SimpleInventory.MVVM.ViewModel
{
    [AddINotifyPropertyChangedInterface]
    public class CashVM
    {

        #region Porperties
        public ObservableCollection<Transaction> SortedTransactions { get; set; } = [];

        #endregion
        public CashVM()
        {
            SortTransaction();
        }

        #region commands
        #endregion

        #region Test collections
        public ObservableCollection<Transaction> Transactions { get; set; } = new()
{
    new()
    {
        Date = new DateTime(2024, 12, 1),
        TransactionType = "buy",
        TotalAmount = 1025.49,
        TotalQuantity = 2,
        PersonId = 1,
        IsPaid = true,
        TransactionItems = new List<Product>
        {
            new() { Name = "MacBook Pro", Price = 999.99, Stock = 10, DateAdded = new DateTime(2024, 11, 21), Category = "Electronics", TransactionId = 1 },
            new() { Name = "Wireless Mouse", Price = 25.50, Stock = 50, DateAdded = new DateTime(2024, 11, 11), ImageUrl = "mouse.jpg", Category = "Accessories", TransactionId = 1 }
        }
    },
    new()
    {
        Date = new DateTime(2024, 12, 2),
        TransactionType = "sell",
        TotalAmount = 1300.00,
        TotalQuantity = 17,
        PersonId = 1,
        IsPaid = false,
        TransactionItems = new List<Product>
        {
            new() { Name = "Monitor", Price = 300.00, Stock = 5, DateAdded = new DateTime(2024, 11, 25), Category = "Electronics", TransactionId = 2 },
            new() { Name = "HDMI Cable", Price = 15.00, Stock = 100, DateAdded = new DateTime(2024, 10, 5), ImageUrl = "hdmi.jpg", Category = "Accessories", TransactionId = 2 }
        }
    },
    new()
    {
        Date = new DateTime(2024, 12, 5),
        TransactionType = "sell",
        TotalAmount = 750.25,
        TotalQuantity = 8,
        PersonId = 2,
        IsPaid = true,
        TransactionItems = new List<Product>
        {
            new() { Name = "iPhone 15", Price = 799.00, Stock = 15, DateAdded = new DateTime(2024, 11, 15), Category = "Electronics", TransactionId = 3 },
            new() { Name = "Screen Protector", Price = 19.99, Stock = 100, DateAdded = new DateTime(2024, 10, 10), ImageUrl = "protector.jpg", Category = "Accessories", TransactionId = 3 }
        }
    },
    new()
    {
        Date = new DateTime(2024, 12, 8),
        TransactionType = "buy",
        TotalAmount = 2450.75,
        TotalQuantity = 25,
        PersonId = 3,
        IsPaid = false,
        TransactionItems = new List<Product>
        {
            new() { Name = "Dell XPS 15", Price = 1499.99, Stock = 5, DateAdded = new DateTime(2024, 12, 2), Category = "Electronics", TransactionId = 4 },
            new() { Name = "Keyboard", Price = 89.99, Stock = 30, DateAdded = new DateTime(2024, 10, 2), ImageUrl = "keyboard.jpg", Category = "Accessories", TransactionId = 4 },
            new() { Name = "USB-C Hub", Price = 45.99, Stock = 40, DateAdded = new DateTime(2024, 9, 25), Category = "Accessories", TransactionId = 4 }
        }
    },
    new()
    {
        Date = new DateTime(2024, 12, 9),
        TransactionType = "sell",
        TotalAmount = 320.40,
        TotalQuantity = 4,
        PersonId = 1,
        IsPaid = true,
        TransactionItems = new List<Product>
        {
            new() { Name = "AirPods Pro", Price = 249.00, Stock = 20, DateAdded = new DateTime(2024, 12, 1), Category = "Electronics", TransactionId = 5 },
            new() { Name = "Charging Cable", Price = 19.99, Stock = 75, DateAdded = new DateTime(2024, 9, 10), ImageUrl = "cable.jpg", Category = "Accessories", TransactionId = 5 }
        }
    },
    new()
    {
        Date = new DateTime(2024, 12, 11),
        TransactionType = "buy",
        TotalAmount = 1800.00,
        TotalQuantity = 12,
        PersonId = 4,
        IsPaid = false,
        TransactionItems = new List<Product>
        {
            new() { Name = "iPad Pro", Price = 1099.00, Stock = 8, DateAdded = new DateTime(2024, 11, 27), Category = "Electronics", TransactionId = 6 },
            new() { Name = "Apple Pencil", Price = 129.00, Stock = 25, DateAdded = new DateTime(2024, 11, 20), ImageUrl = "pencil.jpg", Category = "Accessories", TransactionId = 6 }
        }
    },
     new()
    {
        Date = new DateTime(2024, 12, 11),
        TransactionType = "buy",
        TotalAmount = 1800.00,
        TotalQuantity = 12,
        PersonId = 4,
        IsPaid = false,
        TransactionItems = new List<Product>
        {
            new() { Name = "iPad Pro", Price = 1099.00, Stock = 8, DateAdded = new DateTime(2024, 11, 27), Category = "Electronics", TransactionId = 6 },
            new() { Name = "Apple Pencil", Price = 129.00, Stock = 25, DateAdded = new DateTime(2024, 11, 20), ImageUrl = "pencil.jpg", Category = "Accessories", TransactionId = 6 }
        }
    }
};

        #endregion


        #region  methods

        public void SortTransaction()
        {
            SortedTransactions.Clear();
            var newList = Transactions.OrderBy(t => t.HumanDate).ToList();
            foreach (var item in newList)
            {
                SortedTransactions.Add(item);
            }
        }
        #endregion

    }
}
