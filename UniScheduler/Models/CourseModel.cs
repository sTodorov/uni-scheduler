using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace UniScheduler.Models
{
  public class CourseModel
  {
    public int Id { get; set; }

    public string Name { get; set; }
  }

  public class TeacherModel
  {
    public int Id { get; set; }

    public string FirstName { get; set; }

    public string LastName { get; set; }

    public string MiddleName { get; set; }

    public string Phone { get; set; }
  }
}