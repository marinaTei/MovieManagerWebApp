using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MovieManagerWebApp.Models
{
    public class MovieXExtraGenre
    {
        public int ID { get; set; }
        public int MovieID { get; set; }
        public int ExtraGenreID { get; set; }

        public virtual Movie Movie { get; set; }
        public virtual ExtraGenre ExtraGenre { get; set; }
    }
}