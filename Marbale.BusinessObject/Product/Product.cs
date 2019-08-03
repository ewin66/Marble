﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.ComponentModel.DataAnnotations;
namespace Marbale.BusinessObject
{
    public class Product
    {
        public int Id { get; set; }
         [Required(ErrorMessage = "Enter Product name.")]
        public string Name { get; set; }
        public string Type { get; set; }
        public string POSCounter { get; set; }
        public bool Active { get; set; }
        public bool DisplayInPOS { get; set; }
        public string DisplayGroup { get; set; }
       [Required(ErrorMessage = "Select Category")]
        public string Category { get; set; }
        public bool AutoGenerateCardNumber { get; set; }
        public bool OnlyVIP { get; set; }
               [Required(ErrorMessage = "Enter Price.")]
        public int Price { get; set; }
        [RegularExpression("^[0-9]*$", ErrorMessage = "Face value must be numeric")]
        public int? FaceValue { get; set; }
          [DataType(DataType.Currency)]
        public bool TaxInclusive { get; set; }
          [DataType(DataType.Currency)]
        public int TaxPercentage { get; set; }
        [RegularExpression("^[0-9]*$", ErrorMessage = "Final Price must be numeric")]
        public int? FinalPrice { get; set; }
          [DataType(DataType.Currency)]
        public int EffectivePrice { get; set; }
        public string LastUpdatedBy { get; set; }
        public DateTime LastUpdatedDate { get; set; }
        [DataType(DataType.Currency)]
        public int? Credits { get; set; }
          [DataType(DataType.Currency)]
        public int ?Courtesy { get; set; }
          [DataType(DataType.Currency)]
        public int? Bonus { get; set; }
        public int Games { get; set; }
          [DataType(DataType.Currency)]
        public int ?CreditsPlus { get; set; }
        public DateTime StartDate { get; set; }
        public DateTime ExpiryDate { get; set; }
        public string TaxName { get; set; }
        public decimal Taxpercent { get; set; }
        public string LastUpdatedUser { get; set; }
        public int CardValidFor { get; set; }
        public List<IdValue> TypeList { get; set; }
        public List<IdValue> CategoryList { get; set; }


        
    }
}
