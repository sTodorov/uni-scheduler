using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using UniScheduler.Data;

namespace UniScheduler.Controllers
{
  public class TeacherController : Controller
  {
    public ActionResult Index()
    {
      var dataRepository = new TeacherRepository();
      var model = dataRepository.GetTeachers();

      return View(model);
    }

  }
}
