using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace StoreFront.DATA.EF
{
    [MetadataType(typeof(ProductMetadata))]
    public partial class Product { }
    public class ProductMetadata
    {
        [Required(ErrorMessage ="* Product Name is required")]
        [StringLength(15,ErrorMessage = "* Product name cannot be longer than 50 characters")]
        public string ProductName { get; set; }

        public string Description { get; set; }

        [Required(ErrorMessage = "* Product must have a price")]
        [Range(0, double.MaxValue, ErrorMessage = "* Price must be a valid number 0 or larger" )]
        public decimal Price { get; set; }

        [DisplayFormat(NullDisplayText = " Not Available")]
        [Range(0, double.MaxValue, ErrorMessage = "* Number of sold units must be a valid number 0 or larger")]
        [Display(Name = "Units Sold")]
        public Nullable<int> UnitsSold { get; set; }

        [Display(Name = "In Stock")]
        public Nullable<bool> InStock { get; set; }

        [Display(Name = "Discontinued")]
        public Nullable<bool> Discontinued { get; set; }

        [Display(Name = "Start Date on Shelf")]
        [DisplayFormat(NullDisplayText = " Not Available", DataFormatString = "{0:d}", ApplyFormatInEditMode = true)]
        public Nullable<System.DateTime> DateOnShelf { get; set; }
    }

    [MetadataType(typeof(ProductTypeMetadata))]
    public partial class ProductType { }
    public class ProductTypeMetadata
    {
        [Required(ErrorMessage = "* Type Name is required")]
        [StringLength(50, ErrorMessage = "* Type Name must be less than 50 characters")]
        public string ProductTypeName { get; set; }
    }

    [MetadataType(typeof(CraftsmanMetadata))]
    public partial class Craftsman { }
    public class CraftsmanMetadata
    {
        [Required(ErrorMessage = "* Craftsman name is requried")]
        [StringLength(50, ErrorMessage = "* Craftsman name must less than 50 characters")]
        public string CraftsmanName { get; set; }

        [StringLength(50,ErrorMessage = "* Craftsman Specialization must be less than 50 characters")]
        public string Secialization { get; set; }
    }

    [MetadataType(typeof(DepartmentMetadata))]
    public partial class Department { }
    public class DepartmentMetadata
    {
        [Required(ErrorMessage = "* Department name is required")]
        [StringLength(50, ErrorMessage = "* Department name must be less than 50 characters")]
        public string DepartmentName { get; set; }
    }

    [MetadataType(typeof(EmployeeMetadata))]
    public partial class Employee { }
    public class EmployeeMetadata
    {
        [Required(ErrorMessage = "* Employee Nams is required")]
        [StringLength(50, ErrorMessage = "* Employee name must be less than 50 characters")]
        public string EmployeeName { get; set; }


        public Nullable<int> DirectReportID { get; set; }

    }
}
