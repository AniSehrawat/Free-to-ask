using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default2 : System.Web.UI.Page
{
    free_to_askEntities fta = new free_to_askEntities();
    protected void Page_Load(object sender, EventArgs e)
    {
        if(Session["email"]!=null && Session["username"]!=null)
        {
            Response.Redirect("Default.aspx");
        }
    }

    protected void btn_submit_Click(object sender, EventArgs e)
    {
        string em = email.Text;
        string pass = password.Text;
        var userlog = from x in fta.userinfoes
                      where x.email.Equals(em) && x.password.Equals(pass)
                      select x;

        Session["email"] = null;

         foreach(var data in userlog)
        {
            Session["email"] = data.email;
           Session["username"] = data.firstname + data.lastname;
            Session["uid"] = data.uid;
            Response.Redirect("Default.aspx");
        }
         if (Session["email"]==null)
        {
            Lerror.Text = "email or password is incorrect";
        }

        //if (userlog != null)
        //{
        //    foreach (var data in userlog)
        //    {
        //        //if (data.email.Equals(em) && data.password.Equals(pass))
        //        //{
        //        email.Text = "";
        //        Response.Redirect("Default.aspx");
        //        Session["email"] = data.email;
        //        Session["username"] = data.firstname + data.lastname;


            //        // }
            //    }
            //}
            //else
            //{

            //    Lerror.Text = "email or password is incorrect";

            //}


    }
}