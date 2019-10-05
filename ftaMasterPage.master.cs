using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ftaMasterPage : System.Web.UI.MasterPage
{
    free_to_askEntities fta = new free_to_askEntities();
    static int uid;
    protected void Page_Load(object sender, EventArgs e)
    {

        if (Session["email"] != null && Session["username"] != null)
        {
        uid = int.Parse(Session["uid"].ToString());

        var img = from i in fta.images
                  where i.uid == uid
                  select i;
        foreach (var data in img)
        {
            img_user.ImageUrl = data.imagepath;
            img_user1.ImageUrl = data.imagepath;
            img_user2.ImageUrl = data.imagepath;

        }
        lbl_username.Text = Session["username"].ToString();
        
        lbl_username1.Text = Session["username"].ToString();
        lbl_username2.Text = Session["username"].ToString();

        }
        else
        {
            Response.Redirect("login.aspx");
        }
    }
    protected void btn_signout_Click(object sender, EventArgs e)
    {
        Session["email"] = null;
        Session["username"] = null;
        Response.Redirect("login.aspx");
    }
}
