using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

namespace MovieManagerWebApp.Models
{
    public class Director
    {
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int DirectorID { get; set; }
        public int PersonID { get; set; }
        public string Comments { get; set; }

        public virtual Person Person { get; set; }

        public virtual ICollection<DirectorXCountry> DirectorXCountries { get; set; }
    }
}