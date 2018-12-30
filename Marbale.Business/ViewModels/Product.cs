﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Marble.Business.ViewModels
{
    public class Product
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public string Type { get; set; }
        public string POSCounter { get; set; }
        public bool Active { get; set; }
        public bool DisplayInPOS { get; set; }
        public string DisplayGroup { get; set; }
        public string Category { get; set; }
        public bool AutoGenerateCardNumber { get; set; }
        public bool OnlyVIP { get; set; }
        public int Price { get; set; }
        public int FaceValue { get; set; }
        public int TaxInclusive { get; set; }
        public int TaxPercentage { get; set; }
        public int FinalPrice { get; set; }
        public int EffectivePrice { get; set; }

    }
}
