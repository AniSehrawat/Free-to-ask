using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class profile : System.Web.UI.Page
{
    free_to_askEntities fta = new free_to_askEntities();
    static int uid;
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            string email = Session["email"].ToString();

            //lbl_username.Text = Session["username"].ToString();
            var userlog = from us in fta.userinfoes
                          where us.email.Equals(email)
                          select us;
            foreach (var data in userlog)
            {
                lbl_username.Text = data.firstname+" "+data.lastname;
                lbl_fname.Text = data.firstname;
                lbl_lname.Text = data.lastname;
                lbl_dob.Text = data.dob;
                lbl_email.Text = data.email;
                lbl_mobile.Text = data.mobile;
               
            }

           uid = int.Parse(Session["uid"].ToString());

            var img = from i in fta.images
                      where i.uid == uid
                      select i;
            foreach(var data in img)
            {
                img_user.ImageUrl = data.imagepath;
                
            }

            var pr = from x in fta.userprofiles
                     where x.uid == uid
                     select x;
            foreach(var data in pr)
            {
                
                designation.InnerText = data.designation;
                education.InnerText = data.education;
                location.InnerText = data.location;
                followers_link.InnerText = data.followers.ToString();
                following_link.InnerText = data.following.ToString();
            }

        }
        catch
        {

            Response.Redirect("login.aspx");
        }



    }
    protected void btn_edit_Click(object sender, EventArgs e)
    {
        string email = Session["email"].ToString();
        var userlog = from us in fta.userinfoes
                      where us.email.Equals(email)
                      select us;
        foreach (var data in userlog)
        {


            txt_fname.Text = data.firstname;
            txt_lname.Text = data.lastname;
            txt_dob.Text = data.dob;
            txt_email.Text = data.email;
            txt_mobile.Text = data.mobile;
            lbl_uid.Text = data.uid.ToString();

        }
        Panel2.Visible = true;
        Panel1.Visible = false;


    }
    protected void btn_update_Click(object sender, EventArgs e)
    {
        int id = int.Parse(lbl_uid.Text);
        userinfo user = fta.userinfoes.Where(x => x.uid == id).FirstOrDefault();
        user.firstname = txt_fname.Text;
        user.lastname = txt_lname.Text;
        user.dob = txt_dob.Text;
        user.email = txt_email.Text;
        user.mobile = txt_mobile.Text;
        fta.SaveChanges();
        // Response.Write("<script language='Javascript'> alert('Updated Successfully')</script>");
        Response.Redirect("Default.aspx");
        Panel2.Visible = false;
        Panel1.Visible = true;
    }

    protected void btn_imageupload_Click(object sender, EventArgs e)
    {
        int id = int.Parse(Session["uid"].ToString());
        string filename = System.IO.Path.GetFileName(FileUpload2.FileName);
        Response.Write("hello");
        string ext = System.IO.Path.GetExtension(filename);
        FileUpload2.SaveAs(Server.MapPath("~/profile_pic/") + filename);
        image im = fta.images.Where(x => x.uid == id).FirstOrDefault();
        im.imagename = filename;

        im.uid = uid;
        im.imagepath = "~/profile_pic/" + filename;
        
        fta.SaveChanges();
        Response.Redirect("profile.aspx");

    }
    protected void btn_designation_Click(object sender, EventArgs e)
    {
        int id = int.Parse(Session["uid"].ToString());
        
        userprofile pf = fta.userprofiles.Where(x => x.uid == id).FirstOrDefault();
        pf.designation = txt_designation.Text;
        pf.uid = id;
        fta.SaveChanges();
        Response.Redirect("profile.aspx");

    }
    protected void btn_education_Click(object sender, EventArgs e)
    {
        int id = int.Parse(Session["uid"].ToString());

        userprofile pf = fta.userprofiles.Where(x => x.uid == id).FirstOrDefault();
        pf.education = txt_education.Text;
        pf.uid = id;
        fta.SaveChanges();
        Response.Redirect("profile.aspx");

    }

    protected void btn_location_Click(object sender, EventArgs e)
    {
        int id = int.Parse(Session["uid"].ToString());

        userprofile pf = fta.userprofiles.Where(x => x.uid == id).FirstOrDefault();
        pf.location = txt_location.Text;
        pf.uid = id;
        fta.SaveChanges();
        Response.Redirect("profile.aspx");

    }


}