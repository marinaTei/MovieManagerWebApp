using MovieManagerWebApp.Models;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Data.Entity.ModelConfiguration.Conventions;
using System.Linq;
using System.Web;

namespace MovieManagerWebApp.DAL
{
    public class AppContext : DbContext
    {
        public AppContext() : base("AppContext")
        {
        }

        public DbSet<Actor> Actors { get; set; }
        public DbSet<Country> Countries { get; set; }
        public DbSet<Director> Directors { get; set; }
        public DbSet<DirectorXCountry> DirectorXCountries { get; set; }
        public DbSet<ExtraGenre> ExtraGenres { get; set; }
        public DbSet<Genre> Genre { get; set; }
        public DbSet<Movie> Movies { get; set; }
        public DbSet<MovieXActor> MovieXActors { get; set; }
        public DbSet<MovieXCountry> MovieXCountries { get; set; }
        public DbSet<MovieXDirector> MovieXDirectors { get; set; }
        public DbSet<MovieXExtraGenre> MovieXExtraGenres { get; set; }
        public DbSet<MovieXGenre> MovieXGenres { get; set; }
        public DbSet<Person> Persons { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Conventions.Remove<PluralizingTableNameConvention>();
        }
    }
}