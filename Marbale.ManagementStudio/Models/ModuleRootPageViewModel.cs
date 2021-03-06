﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MarbaleManagementStudio.Models
{
    public class Page
    {
        public string name { get; set; }
        public string value { get; set; }
        public bool @checked {get; set;}
    }

    public class Root
    {
        public string name { get; set; }
        public string value { get; set; }
        public List<Page> items { get; set; }
    }

    public class Module
    {
        public string name { get; set; }
        public string value { get; set; }
        public List<Root> items { get; set; }
    }
}