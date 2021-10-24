using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

namespace MovieManagerWebApp.Models
{
    public class Actor
    {
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int ActorID { get; set; }
        public int PersonID { get; set; }
        public string Comments { get; set; }

        public virtual Person Person { get; set; }
    }
}