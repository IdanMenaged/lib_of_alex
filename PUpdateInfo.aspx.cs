using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace lib_of_alex
{
    public partial class PUpdateInfo : System.Web.UI.Page
    {
        public string uName;
        public string fName;
        public string lName;
        public string email;
        public string password;

        public string msg;

        // constants
        string dbFileName = "LibOfAlexDB.mdf";
        string tableName = "users";

        protected void Page_Load(object sender, EventArgs e)
        {
            // check if user is logged in
            if (Session["uName"].ToString() == "אורח")
            {
                Response.Redirect("P1Home.aspx");
            }

            string query = $"select * from {tableName} where username = '{Session["uName"]}'";
            DataTable table = Helper.ExecuteDataTable(dbFileName, query);

            uName = table.Rows[0]["username"].ToString();
            fName = table.Rows[0]["firstName"].ToString();
            lName = table.Rows[0]["lastName"].ToString();
            email = table.Rows[0]["email"].ToString();
            password = table.Rows[0]["password"].ToString();

            // on submit
            if (this.IsPostBack)
            {
                fName = Request.Form["fName"];
                lName = Request.Form["lName"];
                email = Request.Form["email"];
                password = Request.Form["password"];

                query = $"update {tableName} set " +
                    $"firstName = N'{fName}', " +
                    $"lastName = N'{lName}', " +
                    $"email = '{email}', " +
                    $"password = '{password}' " +
                    $"where username = '{uName}'";

                Helper.DoQuery(dbFileName, query);
                Session["name"] = fName;
                msg = "פרטים התעדכנו";
            }
        }
    }
}