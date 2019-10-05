using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class post_que : System.Web.UI.Page
{
    free_to_askEntities fta = new free_to_askEntities();
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

    }

    protected void btn_ask_Click(object sender, EventArgs e)
    {
        string email = Session["email"].ToString();
        question que = new question();
        que.question1 = txt_que.Text;
        
        var q = from x in fta.userinfoes
                where x.email.Equals(email)
                select x.uid;
        foreach(var data in q)
        {
            que.uid = data;
        }
        fta.questions.Add(que);
        fta.SaveChanges();
        txt_que.Text = string.Empty;
        Response.Redirect("myque.aspx");
    }
}