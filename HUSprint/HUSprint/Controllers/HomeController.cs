﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace HUSprint.Controllers
{
    public class HomeController : Controller
    {
        public ActionResult Index()
        {
            return View();
        }
        public ActionResult Home()
        {
            return View();
        }
        public ActionResult About()
        {
            ViewBag.Message = "Your application description page.";

            return View();
        }

        public ActionResult Contact()
        {
            ViewBag.Message = "Your contact page.";

            return View();
        }

        public ActionResult Papers()
        {
            ViewBag.Message = "Your monitoring papers page.";

            return View();
        }
        public ActionResult Orders()
        {
            ViewBag.Message = "Your place orders page.";

            return View();
        }
        public ActionResult Help()
        {
            ViewBag.Message = "Your account help page.";

            return View();
        }
    }
}