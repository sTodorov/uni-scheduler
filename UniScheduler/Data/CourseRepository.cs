using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;

namespace UniScheduler.Data
{
  public class CourseRepository
  {
    private string _connectionString;

    public CourseRepository() {
      _connectionString = ConfigurationManager.ConnectionStrings["UniScheduler"].ConnectionString;
    }
  }
}