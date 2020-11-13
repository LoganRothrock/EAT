using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;

namespace EAT.MVC.UI.Models
{
    public class ContactViewModel
    {
        [Required(ErrorMessage = "* Your name is Required")]
        public string Name { get; set; }

        [Required(ErrorMessage = "* Your email is Required")]
        [EmailAddress]
        public string Email { get; set; }

        [Required(ErrorMessage = "* A Subject is required")]
        public string Subject { get; set; }

        [UIHint("MultilineText")]
        [Required(ErrorMessage = "* A Message is required")]
        public string Message { get; set; }
    }
}