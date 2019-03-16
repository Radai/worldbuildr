using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Logging;
using Microsoft.Extensions.Logging.Console;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Worldbuildr.Models
{
    public class WorldbuildrDbContext : DbContext
    {
        private static readonly LoggerFactory Logger = new LoggerFactory(new[] { new ConsoleLoggerProvider((_, __) => true, true) });
        public WorldbuildrDbContext(DbContextOptions<WorldbuildrDbContext> options) : base(options) {}

        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            optionsBuilder.UseLoggerFactory(Logger);
        }

        public DbSet<Item> Item { get; set; }
    }
}
