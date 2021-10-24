using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

namespace MovieManagerWebApp.Models
{
    public class Genre
    {
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int GenreID { get; set; }
        public string GenreName { get; set; }
        public string Label { get; set; }
        public int? ParentGenreID { get; set; }
        
        public virtual Genre ParentGenre { get; set; }
    }
}