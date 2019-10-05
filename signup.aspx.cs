using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Text.RegularExpressions;

public partial class signup : System.Web.UI.Page
{
    free_to_askEntities fta = new free_to_askEntities();

    private void savedata()
    {

        /* if ()
             Lpass.Text =" is Valid Email Address";
         else
             Lpass.Text = " is Invalid Email Address";
             */
        userinfo user = new userinfo();
        user.firstname = first_name.Text;
        user.lastname = last_name.Text;
        user.gender = gen.SelectedValue;
        user.dob = dob.Text;
        user.email = email.Text;
        user.mobile = phone.Text;
        user.password = password.Text;
        
        fta.userinfoes.Add(user);

        fta.SaveChanges();
        image i = new image();
        i.uid = user.uid;
        i.imagename = "user-admin.png";
        i.imagepath = "~/images/user-admin.png";
        fta.images.Add(i);
        fta.SaveChanges();

        userprofile up = new userprofile();
        up.uid = user.uid;
        up.location = "Add Location";
        up.designation = "Add Designation";
        up.education = "Add Education";
        up.followers = 0;
        up.following = 0;
        fta.userprofiles.Add(up);
        fta.SaveChanges();

        Session["email"] = email.Text;
        Session["username"] = user.firstname + user.lastname;
        Session["uid"] = user.uid;
        first_name.Text =string.Empty;
        last_name.Text = string.Empty;
        gen.SelectedValue = string.Empty;
        email.Text = string.Empty;
        phone.Text = string.Empty;
        dob.Text = string.Empty;
        Lphone.Text = string.Empty;
        Lpass.Text = string.Empty;
        Lemail.Text = string.Empty;

        Response.Redirect("Default.aspx");
    }


    protected void Page_Load(object sender, EventArgs e)
    {
        if(Session["email"]!=null && Session["username"]!=null)
        {
            Response.Redirect("Default.aspx");
        }
        Lphone.Text = "";
        Lpass.Text = "";
        Lemail.Text = "";
       
    }


    protected void submit_Click(object sender, EventArgs e)
    {
        
        string em = email.Text;
        Regex regex = new Regex(@"^([\w\.\-]+)@([\w\-]+)((\.(\w){2,3})+)$");
        Match match = regex.Match(em);
        string ph = phone.Text;
        double num;
        bool isnum = double.TryParse(ph,out num);

        var userlog = from x in fta.userinfoes
                      where x.email.Equals(em) || x.mobile.Equals(ph)
                      select x;
       
            foreach (var data in userlog)
            {
                if (data.email.Equals(em))
                {
                    Lemail.Text = "email already exists";
                }
                if (data.mobile.Equals(ph))
                {
                    Lphone.Text = "phone no. already exists";
                }
            }
       

        try {

            if (password.Text.Equals(pass.Text) && phone.Text.Length == 10 && match.Success && password.Text.Length >= 6 && isnum == true)
            {
                savedata();
            }
        }
        catch(Exception)
        {
           Response.Redirect("signup.aspx");
            //Response.Write(ex);
        }
      
        if(!password.Text.Equals(pass.Text))
        {
           Lpass.Text = "password not match";
        }
        if (!(password.Text.Length >= 6))
        {
            Lpass.Text = "password must be greater than 6";
        }


        if (!match.Success)
        {
            Lemail.Text = "Invalid Email Address";
        }

        if (!(phone.Text.Length == 10))
        {
            Lphone.Text = "must be of 10 digits";
        }
        if (!isnum)
        {
            Lphone.Text = "only digits";
        }

       

    }
}