using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Remoting.Messaging;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace lib_of_alex
{
    public partial class PRegister : System.Web.UI.Page
    {
        public string msg;

        // constants
        string dbFileName = "LibOfAlexDB.mdf";
        string tableName = "users";

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Form["submit"] != null)
            {
                // check if username exists
                string uName = Request.Form["uName"];
                string query = $"select * from {tableName} where username = '{uName}'";
                if (Helper.IsExist(dbFileName, query))
                {
                    msg = "שם משתמש תפוס";
                }
                else
                {
                    string fName = Request.Form["fName"];
                    string lName = Request.Form["lName"];
                    string email = Request.Form["email"];
                    string password = Request.Form["password"];

                    query = $"insert into {tableName} values ('{uName}', N'{fName}', N'{lName}', '{email}', '{password}')";
                    Helper.ExecuteDataTable(dbFileName, query);
                    msg = "משתמש נרשם בהצלחה";
                }
            }
        }
    }
}