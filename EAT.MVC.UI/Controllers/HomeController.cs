using EAT.MVC.UI.Models;
using System;
using System.Net;
using System.Net.Mail;
using System.Web.Mvc;

namespace EAT.MVC.UI.Controllers
{
    public class HomeController : Controller
    {
        [HttpGet]
        public ActionResult Index()
        {
            return View();
        }

        [HttpGet]
        [Authorize]
        public ActionResult About()
        {
            ViewBag.Message = "Your app description page.";

            return View();
        }

        [HttpGet]
        public ActionResult Contact()
        {
            return View();
        }
        [HttpPost]
        public ActionResult Contact(ContactViewModel cvm)
        {

            if (!ModelState.IsValid)
            {
               return View(cvm);
            }
            else
            {
                string body = $"{cvm.Name} has sent you the following message: <br />" +
                    $"{cvm.Message} <strong> from the email address:</strong> {cvm.Email}";

                MailMessage m = new MailMessage("you@yourDomain.com", "Email@email.com", cvm.Subject, body);

                m.IsBodyHtml = true;
                m.Priority = MailPriority.High;
                m.ReplyToList.Add(cvm.Email);

                SmtpClient client = new SmtpClient("mail.domain.ext");

                client.Credentials = new NetworkCredential("Email user name - web host", "Your email password - webhost");

                try
                {
                    client.Send(m);
                }
                catch (Exception e)
                {
                    ViewBag.Message = e.StackTrace;
                    return View(cvm);
                }
                return View("EmailConfirmation");
            }
        }
    }
}
