using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Text;

namespace UP01.Classes
{
    public class ContextPartners : DbContext
    {
        public DbSet<Models.Partners> Partners { get; set; }
        public ContextPartners() => Database.EnsureCreated();
        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder) => optionsBuilder.UseSqlServer(Config.config);
    }
}
