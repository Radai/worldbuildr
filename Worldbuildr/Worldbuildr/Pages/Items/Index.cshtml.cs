using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using Microsoft.EntityFrameworkCore;
using Worldbuildr.Models;

namespace Worldbuildr.Pages.Views.Items
{
    public class IndexModel : PageModel
    {
        private readonly Worldbuildr.Models.WorldbuildrDbContext _context;

        public IndexModel(Worldbuildr.Models.WorldbuildrDbContext context)
        {
            _context = context;
        }

        public IList<Item> Item { get;set; }

        public async Task OnGetAsync()
        {
            Item = await _context.Item.ToListAsync();
        }
    }
}
