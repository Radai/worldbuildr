using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using Worldbuildr.Models;

namespace Worldbuildr.Pages
{
    public class ItemsController : Controller
    {
        public IActionResult Index()
        {
            return View();
        }
    }
}