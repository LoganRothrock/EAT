using System.Web.Optimization;

namespace EAT.MVC.UI
{
    public class BundleConfig
    {
        // For more information on bundling, visit http://go.microsoft.com/fwlink/?LinkId=301862
        public static void RegisterBundles(BundleCollection bundles)
        {
            bundles.Add(new ScriptBundle("~/bundles/jquery").Include(
                        "~/Scripts/jquery-{version}.js",
                        "~/Content/js/jquery.min.js",
                        "~/Content/js/jquery.easing.1.3.js",
                        "~/Content/js/bootstrap.min.js",
                        "~/Content/js/jquery.waypoints.min.js",
                        "~/Content/js/jquery.stellar.min.js",
                        "~/Content/js/owl.carousel.min.js",
                        "~/Content/js/jquery.flexslider-min.js",
                        "~/Content/js/jquery.countTo.js",
                        "~/Content/js/jquery.magnific-popup.min.js",
                        "~/Content/js/magnific-popup-options.js",
                        "~/Content/js/simplyCountdown.js",
                        "~/Content/js/main.js"
                        ));

            bundles.Add(new ScriptBundle("~/bundles/jqueryval").Include(
                        "~/Scripts/jquery.validate*"));

            // Use the development version of Modernizr to develop with and learn from. Then, when you're
            // ready for production, use the build tool at http://modernizr.com to pick only the tests you need.
            bundles.Add(new ScriptBundle("~/bundles/modernizr").Include(
                        "~/Scripts/modernizr-*"));

            bundles.Add(new ScriptBundle("~/bundles/bootstrap").Include(
                      "~/Scripts/bootstrap.js",
                      "~/Scripts/respond.js"));

            bundles.Add(new StyleBundle("~/Content/css").Include(
                      "~/Content/bootstrap.css",
                      "~/Content/site.css",
                      "~/Content/css/animate.css",
                      "~/Content/css/icomoon.css",
                      "~/Content/css/bootstrap.css",
                      "~/Content/css/magnific-popup.css",
                      "~/Content/css/owl.carousel.min.css",
                      "~/Content/css/owl.theme.default.min.css",
                      "~/Content/css/flexslider.css",
                      "~/Content/css/pricing.css",
                      "~/Content/css/style.css"
                      ));
        }
    }
}
