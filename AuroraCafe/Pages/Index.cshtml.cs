using AuroraCafe.Models;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using Microsoft.EntityFrameworkCore;

namespace AuroraCafe.Pages
{
    public class IndexModel : PageModel
    {
        private readonly AuroraCafeDbContext _context;
        private readonly ILogger<IndexModel> _logger;

        public IList<Product> FeaturedProducts { get; set; } = new List<Product>();

        public IList<Review> Reviews { get; set; } = new List<Review>();

        public IndexModel(
            ILogger<IndexModel> logger,
            AuroraCafeDbContext context)
        {
            _logger = logger;
            _context = context;
        }



        public void OnGet()
        {
            FeaturedProducts = new List<Product>();

            var coffee = _context.Products
                .FirstOrDefault(p => p.Id == 6);

            var cake = _context.Products
                .FirstOrDefault(p => p.Id == 11);

            var pastry = _context.Products
                .FirstOrDefault(p => p.Id == 12);

            if (coffee != null)
                FeaturedProducts.Add(coffee);

            if (cake != null)
                FeaturedProducts.Add(cake);

            if (pastry != null)
                FeaturedProducts.Add(pastry);



            Reviews = _context.Reviews
                .Where(p => p.IsVisible == true && p.Rating == 5)
                .Take(3)
                .ToList();

        }


    }
}
