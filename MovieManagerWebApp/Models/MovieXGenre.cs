using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MovieManagerWebApp.Models
{
    public class MovieXGenre
    {
        public int ID { get; set; }
        public int MovieID { get; set; }
        public int GenreID { get; set; }

        public virtual Movie Movie { get; set; }
        public virtual Genre Genre { get; set; }
    }
}