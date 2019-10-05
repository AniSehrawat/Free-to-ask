<%@ Page Title="" Language="C#" MasterPageFile="~/ftaMasterPage.master" AutoEventWireup="true" CodeFile="profileuser.aspx.cs" Inherits="profileuser" EnableEventValidation="false" ValidateRequest="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        .btn_answer
        {
            background-color:transparent;
            border:none;
            position:relative;
        }
        .btn_answer:hover
        {
            color:gray;
        }
       
      .container {
    position: relative;
    width: 50%;
}

.image {
  opacity: 1;
  display: block;
 
  transition: .5s ease;
  backface-visibility: hidden;
}

.middle {
  transition: .5s ease;
  opacity: 0;
  position: absolute;
  top: 50%;
  left: 50%;
  border-radius:50%;
  transform: translate(-50%, -50%);
  -ms-transform: translate(-50%, -50%);
  text-align: center;
}

.container:hover .image {
  opacity: 0.3;
  cursor:pointer;
}

.container:hover .middle {
  opacity: 1;
  cursor:pointer
}

.text {
  background-color: blue;
  border-radius:11%;
  color: white;
  font-size: 9px;
  padding: 1px 2px;
}
       
.text-muted
{
    
    font-size:medium
}
.text-muted:hover{
    cursor:pointer;
    text-decoration:underline;
    color:darkslategrey;
}
.lbl{
   
}
.lbl:hover
{
    cursor:pointer;
    display:block;
}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


      <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        User Profile
      </h1>
      
    </section>

    <!-- Main content -->
    <section class="content">

      <div class="row">
        <div class="col-md-3">

          <!-- Profile Image -->
          <div class="box box-primary">
            <div class="box-body box-profile">

                     

   <asp:Image ID="img_user" runat="server" CssClass="profile-user-img img-responsive img-circle" />
                 <center><asp:Label runat="server" ID="lbl_username" CssClass="profile-username text-center" Text=""></asp:Label>
</center>                 
<p runat="server" id="designation" class="text-muted text-center"></p>


                 <ul class="list-group list-group-unbordered">
                <li class="list-group-item">
                  <b>Followers</b> <a id="followers_link" runat="server" class="pull-right"></a>
                </li>
                <li class="list-group-item">
                  <b>Following</b> <a id="following_link" runat="server" class="pull-right"></a>
                </li>
              </ul>
                <asp:Button ID="btn_follow" runat="server" CssClass="btn btn-primary btn-block text-bold" Text="Follow" OnClick="btn_follow_Click"></asp:Button>
                <asp:Label ID="f_lbl" runat="server" CssClass="btn btn-primary btn-block text-bold" Style="cursor:default" Text="Following" Visible="false"></asp:Label>
                 
              <ul class="list-group list-group-unbordered">
              
              </ul>


            </div>
            <!-- /.box-body -->
          </div>
          <!-- /.box -->

          <!-- About Me Box -->
          <div class="box box-primary">
            <div class="box-header with-border">
              <h3 class="box-title">About Me</h3>
            </div>
            <!-- /.box-header -->
            <div class="box-body">
              <strong><i class="fa fa-book margin-r-5"></i> Education</strong>

                   
<p runat="server" id="education" class="text-muted"></p>

              <hr />

              <strong><i class="fa fa-map-marker margin-r-5"></i> Location</strong>

                      
<p runat="server" id="location" class="text-muted"></p>                      
              <hr/>
              </div>
            <!-- /.box-body -->
          </div></div>
         
                <div class="col-md-9">
          <div class="box box-primary">
            <div class="box-header with-border">
              <h3 class="box-title">My Question</h3>
            </div>
            <!-- /.box-header -->
            <div class="box-body">
             
                <div class="active tab-pane" id="activity">
                <!-- Post -->

                    <asp:Repeater ID="que_repeater" runat="server">
<HeaderTemplate>
               </HeaderTemplate>
                 
           <ItemTemplate>  
                <div class="post">
                  <div class="user-block">
                   <asp:Image runat="server" ID="user_image" ImageUrl='<%# Eval("imagepath") %>'  class="img-circle img-bordered-sm"  alt="user image" />
                       <span class="username">
                          <a href="#"> <%# Eval("firstname") %>  <%# Eval("lastname") %></a>
                          <a href="#" class="pull-right btn-box-tool"><i class="fa fa-times"></i></a>
                        </span>
                    <span class="description">Shared publicly - 7:30 PM today</span>
                  </div>  
                 <asp:Label ID="lbl_que" runat="server" style="font-weight:bold;font-size:medium;padding-left:0px;">
                    <%# Eval("question1") %>
                  </asp:Label>
                     <ul class="list-inline">
                    <li><a href="#" class="link-black text-sm"><i class="fa fa-share margin-r-5"></i> Share</a></li>
                     <li><a href='post_answer.aspx?id=<%# Eval("queid") %>' class="link-black text-sm"><i class="fa fa-pencil margin-r-5"></i> Answer</a></li>  
                    <li class="pull-right">
                      <a href='post_answer.aspx?id=<%# Eval("queid") %>' class="link-black text-sm"><i class="fa fa-comments-o margin-r-5"></i> Answers
                        (5)</a></li>
                  </ul>   

                  
                </div>
           </ItemTemplate>
                        <FooterTemplate>
                 </FooterTemplate>

                  </asp:Repeater>
               
              </div>
             
   
            </div>
          
          </div>
          
        </div>

        </div>
           </section>
      </div>
      <!-- /.row -->


     


   

</asp:Content>





