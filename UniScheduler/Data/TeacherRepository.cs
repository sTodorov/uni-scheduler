using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using UniScheduler.Models;
using Dapper;

namespace UniScheduler.Data
{
  public class TeacherRepository
  {
    private string _connectionString;

    public TeacherRepository()
    {
      _connectionString = ConfigurationManager.ConnectionStrings["UniScheduler"].ConnectionString;
    }

    public IEnumerable<TeacherModel> GetTeachers()
    {
      using (var connection = new SqlConnection(_connectionString))
      {
        connection.Open();

        return connection.Query<TeacherModel>("select * from Teacher").ToList();
      }
    }
  }
}