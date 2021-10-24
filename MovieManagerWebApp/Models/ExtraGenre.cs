using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

namespace MovieManagerWebApp.Models
{
    public class ExtraGenre
    {
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int ExtraGenreID { get; set; }
        public string ExtraGenreName { get; set; }
        public string Label { get; set; }
    }
}