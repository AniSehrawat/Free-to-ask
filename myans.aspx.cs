using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class myans : System.Web.UI.Page
{
    free_to_askEntities fta = new free_to_askEntities();
    int id;
    protected void Page_Load(object sender, EventArgs e)
    {
        int uid = int.Parse(Session["uid"].ToString());
        var ques = from x in fta.questions
                   where x.uid == uid
                   select x.question1;

        lbl_questions.Text = ques.Count().ToString();

        var ans = from x in fta.answers
                  where x.uid == uid
                  select x.answer1;

        lbl_answers.Text = ans.Count().ToString();


        string email = Session["email"].ToString();
       // question.Text = string.Empty;
        if (!IsPostBack)
        {
            if (Session["email"] != null)
            {
               // id = int.Parse(Request.QueryString["id"]);
                var que = from u in fta.userinfoes
                          join q in fta.questions
                          on u.uid equals q.uid
                          join i in fta.images
                          on q.uid equals i.uid
                          where q.queid == id
                          select new
                          {
                              q.question1,
                              u.firstname,
                              u.lastname,
                              q.queid,
                              i.imagepath,
                          };

             
               // id = int.Parse(Request.QueryString["id"]);
                var ans1 = from u in fta.userinfoes
                           join a in fta.answers
                           on u.uid equals a.uid
                           join q in fta.questions
                           on a.queid equals q.queid
                           join i in fta.images
                           on a.uid equals i.uid
                           where u.uid == uid
                           select new
                           {
                               q.question1,
                               u.firstname,
                               u.lastname,
                               q.queid,
                               a.answer1,
                               a.ansid,
                               a.uid,
                               i.imagepath,

                           };

                ans_repeater.DataSource = ans1.ToList();
                ans_repeater.DataBind();



            }
        }
    }

  /*  protected void btn_ans_Click(object sender, EventArgs e)
    {
        if (question.Text != null)
        {
            answer a = new answer();
            string email = Session["email"].ToString();
            a.answer1 = txt_ans.Text;
            a.queid = int.Parse(qid.Text);
            var em = from x in fta.userinfoes
                     where x.email.Equals(email)
                     select x.uid;

            foreach (var data in em)
            {
                a.uid = data;
            }
            fta.answers.Add(a);
            fta.SaveChanges();
            question.Text = string.Empty;
            Response.Write("<script LANGUAGE='JavaScript' >alert('Answer Posted Successfully')</script>");
            question.Text = string.Empty;
            string url = "post_answer.aspx?id=" + qid.Text;
            Response.Redirect(url);
        }

        else
        {
            Response.Write("<script LANGUAGE='JavaScript'> alert('Please Write a Answer')</script>");
        }

    }*/
}
