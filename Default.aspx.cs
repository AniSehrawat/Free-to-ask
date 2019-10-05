using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default : System.Web.UI.Page
{
    free_to_askEntities fta = new free_to_askEntities();
    protected void Page_Load(object sender, EventArgs e)
    {
        try {
            string email = Session["email"].ToString();
            var que = from x in fta.questions
                      join u in fta.userinfoes
                      on x.uid equals u.uid
                      join i in fta.images
                      on u.uid equals i.uid
                      select new
                      {
                          x.question1,
                          u.firstname,
                          u.lastname,
                          x.queid,
                          i.imagepath,
                          x.uid,
                      };
            que_repeater.DataSource = que.ToList();
            que_repeater.DataBind();
        }
        catch
        {

            Response.Redirect("login.aspx");
        }

        
        
    }
   
}