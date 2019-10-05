using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class profileuser : System.Web.UI.Page
{
    free_to_askEntities fta = new free_to_askEntities();
    static int uid;
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            uid = int.Parse(Request.QueryString["id"]);
            int a = int.Parse(Session["uid"].ToString());
            if (Request.QueryString["id"]!=null)
            {
                var d = from x in fta.followers
                        where x.uid == uid && x.followers_id==a
                        select x;
                foreach (var data in d)
                {
                    if (data.status.Equals("following"))
                    {
                        //btn_follow.Text = "following";
                        f_lbl.Visible = true;
                        btn_follow.Visible = false;
                    }
                  
                }
                try
                {
                        string email = Session["email"].ToString();

                        //lbl_username.Text = Session["username"].ToString();




                        var userlog = from us in fta.userinfoes
                                      where us.uid == uid
                                      select us;
                        foreach (var data in userlog)
                        {
                            lbl_username.Text = data.firstname + " " + data.lastname;


                        }


                        var img = from i in fta.images
                                  where i.uid == uid
                                  select i;
                        foreach (var data in img)
                        {
                            img_user.ImageUrl = data.imagepath;

                        }

                        var pr = from x in fta.userprofiles
                                 where x.uid == uid
                                 select x;
                        foreach (var data in pr)
                        {

                            designation.InnerText = data.designation;
                            education.InnerText = data.education;
                            location.InnerText = data.location;
                            followers_link.InnerText = data.followers.ToString();
                            following_link.InnerText = data.following.ToString();
                        }


                        var que = from x in fta.questions
                                  join u in fta.userinfoes
                                  on x.uid equals u.uid
                                  join y in fta.images
                                  on u.uid equals y.uid
                                  where u.uid == uid
                                  select new
                                  {
                                      x.question1,
                                      u.firstname,
                                      u.lastname,
                                      x.queid,
                                      y.imagepath,
                                  };
                        que_repeater.DataSource = que.ToList();
                        que_repeater.DataBind();

                    }
                    
               
                catch
                {

                    Response.Redirect("login.aspx");
                }

            }
            if(uid == a)
            {
                btn_follow.Visible = false;
                Response.Redirect("profile.aspx");
              
            }
        }

    }

    protected void btn_follow_Click(object sender, EventArgs e)
    {
        follower fr = new follower();
        following fi = new following();
        fr.followers_id = int.Parse(Session["uid"].ToString());
        fr.uid = uid;
        fr.status = "following";
        fta.followers.Add(fr);

        fi.following_id= uid;
        fi.uid = int.Parse(Session["uid"].ToString());
        fta.followings.Add(fi);
        fta.SaveChanges();

        var followers = (from x in fta.followers
                         where x.uid == uid
                         select x.followers_id).Count();
        int a = int.Parse(Session["uid"].ToString());
        var following = (from y in fta.followings
                         where y.uid == a
                         select y.following_id).Count();

        userprofile pf = fta.userprofiles.Where(x => x.uid == uid).FirstOrDefault();
        pf.followers = followers;

        userprofile pfa = fta.userprofiles.Where(x => x.uid == a).FirstOrDefault();
        pfa.following = following;
        fta.SaveChanges();
        String url = "profileuser.aspx?id=" +uid;

        Response.Redirect(url);


    }
}