using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MovieManagerWebApp.Models
{
    public class MovieXCountry
    {
        public int ID { get; set; }
        public int MovieID { get; set; }
        public int CountryID { get; set; }

        public virtual Movie Movie { get; set; }
        public virtual Country Country { get; set; }
    }
}