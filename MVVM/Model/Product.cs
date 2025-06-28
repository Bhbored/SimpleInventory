using SimpleInventory.Abstractions;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using ForeignKeyAttribute = SQLiteNetExtensions.Attributes.ForeignKeyAttribute;

namespace SimpleInventory.MVVM.Model
{
    public class Product : Entity
    {

        public string Name { get; set; }
        public double Price { get; set; }
        public int Stock { get; set; }
        public DateTime DateAdded { get; set; }
        public string ImageUrl { get; set; }
        public string Category { get; set; }

        [ForeignKey(typeof(Transaction))]
        public int? TransactionId { get; set; } // Nullable if the product is not linked to a transaction
    }
}



