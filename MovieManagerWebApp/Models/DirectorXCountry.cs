using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MovieManagerWebApp.Models
{
    public class DirectorXCountry
    {
        public int ID { get; set; }
        public int DirectorID { get; set; }
        public int CountryID { get; set; }

        public virtual Director Director { get; set; }
        public virtual Country Country { get; set; }
    }
}