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
        if (Session["email"] != null)
        {
            string email = Session["email"].ToString();

            /*   var q = from x in fta.userinfoes
                       where x.email.Equals(email)
                       select x.uid;

              */
              int uid = int.Parse(Session["uid"].ToString());

              var que = from x in fta.questions
                      join u in fta.userinfoes
                      on x.uid equals u.uid
                      join y in fta.images
                      on u.uid equals y.uid
                      where u.email.Equals(email)
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

            var ques = from x in fta.questions
                       where x.uid == uid
                       select x.question1;

            lbl_questions.Text = ques.Count().ToString();

            var ans = from x in fta.answers
                       where x.uid == uid
                       select x.answer1;

            lbl_answers.Text = ans.Count().ToString();

        }
           
        }

    }
