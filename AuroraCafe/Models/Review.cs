using System;
using System.Collections.Generic;

namespace AuroraCafe.Models;

public partial class Review
{
    public int Id { get; set; }

    public string Name { get; set; } = null!;

    public string Description { get; set; } = null!;

    public sbyte Rating { get; set; }

    public bool IsVisible { get; set; }
}
