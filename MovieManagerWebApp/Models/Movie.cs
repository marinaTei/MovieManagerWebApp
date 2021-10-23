using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MovieManagerWebApp.Models
{
    public class Movie
    {
        public int MovieID { get; set; }
        public string Label { get; set; }
        public string Title { get; set; }
        public string OriginalTitle { get; set; }
        public DateTime? ReleaseDate { get; set; }
        public string Comments { get; set; }
        public int? MovieXDirectorId { get; set; }

        public virtual ICollection<MovieXDirector> MovieXDirectors { get; set; }
        public virtual ICollection<MovieXActor> MovieXActors { get; set; }
        public virtual ICollection<MovieXCountry> MovieXCountries { get; set; }
        public virtual ICollection<MovieXGenre> MovieXGenres { get; set; }
        public virtual ICollection<MovieXExtraGenre> MovieXExtraGenres { get; set; }
    }
}