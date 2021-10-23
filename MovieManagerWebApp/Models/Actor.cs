using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MovieManagerWebApp.Models
{
    public class Actor
    {
        public int ActorID { get; set; }
        public int PersonID { get; set; }
        public string Comments { get; set; }

        public virtual Person Person { get; set; }
    }
}