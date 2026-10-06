using AuroraCafe.Models;
using Microsoft.EntityFrameworkCore;

using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;

namespace AuroraCafe.Pages
{
    public class MenuModel : PageModel
    {
        private readonly AuroraCafeDbContext _context;

        public MenuModel(AuroraCafeDbContext context)
        {
            _context = context;
        }

        public IList<Product> Products { get; set; } = new List<Product>();

        public IList<Category> Categories { get; set; } = new List<Category>();

        public void OnGet()
        {
            Products = _context.Products.ToList();

            Categories = _context.Categories.ToList();
        }
    }
}
