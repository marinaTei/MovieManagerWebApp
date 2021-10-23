using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MovieManagerWebApp.Models
{
    public class Genre
    {
        public int GenreID { get; set; }
        public string GenreName { get; set; }
        public string Label { get; set; }
        public int? ParentGenreID { get; set; }
        
        public virtual Genre ParentGenre { get; set; }
    }
}