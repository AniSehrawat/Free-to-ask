<%@ Page Title="" Language="C#" MasterPageFile="~/ftaMasterPage.master" AutoEventWireup="true" CodeFile="post_answer.aspx.cs" Inherits="post_answer" %>

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
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


      <!-- Content Wrapper. Contains page content --><div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
       Post Answer
      </h1>
    
    </section>

    <!-- Main content -->
    <section class="content">

      <div class="row">
        <div class="col-md-1">

          <!-- Profile Image -->
        
          <!-- /.box -->

          <!-- About Me Box -->
         
          <!-- /.box -->
        </div>
        <!-- /.col -->
        <div class="col-md-12">
          <div class="nav-tabs-custom">
            <ul class="nav nav-tabs">
              <li class="active"><a href="#activity" data-toggle="tab">Activity</a></li>
             
            </ul>
            <div class="tab-content">
              <div class="active tab-pane" id="activity">
                <!-- Post -->
               
                
                  

                  <!-- post for posted quetion -->
                <div class="post">
                  <div class="user-block">
                    <asp:Image runat="server" ID="user_image"  class="img-circle img-bordered-sm"  alt="user image" />
                         <span class="username">
                          <asp:HyperLink runat="server" ID="user_profile_link" href="#"><asp:Label runat="server" ID="fname" Text="Label"></asp:Label><asp:Label runat="server" ID="lname" Text=""></asp:Label> </asp:HyperLink>
                          <a href="#" class="pull-right btn-box-tool"><i class="fa fa-times"></i></a>
                        </span>
                    <span class="description">Shared publicly - 7:30 PM today</span>
                  </div>  
               <asp:Label runat="server" ID="question" Text="" style="font-weight:bold;font-size:medium;padding-left:0px;color:black">     
                  </asp:Label>
<asp:Label runat="server" ID="qid" Visible="False"></asp:Label>
                     <ul class="list-inline">
                    <li><a href="#" class="link-black text-sm"><i class="fa fa-share margin-r-5"></i> Share</a></li>
                  <li><div class="link-black text-sm"><i class="fa fa-pencil"></i><asp:Button ID="btn_answer" runat="server" Text="answer" CssClass="btn_answer" /></div></li>
                         
                    <li class="pull-right">
                      <a href="#" class="link-black text-sm"><i class="fa fa-comments-o margin-r-5"></i> Answers
                        (5)</a></li>
                  </ul>       
                </div>
               <!-- /post -->
               <!-- post for posted answer
               <div class="post">
                  <div class="user-block">
                    <img class="img-circle img-bordered-sm" src="../../dist/img/user1-128x128.jpg" alt="user image">
                        <span class="username">
                          <a href="#"> <%# Eval("firstname") %>  <%# Eval("lastname") %></a>
                          <a href="#" class="pull-right btn-box-tool"><i class="fa fa-times"></i></a>
                        </span>
                    <span class="description">Shared publicly - 7:30 PM today</span>
                  </div>  
                 <a href='post_answer.aspx?id=<%# Eval("queid") %>' style="font-weight:bold;font-size:medium;padding-left:0px;color:black">
                  
                  </a>
                     <ul class="list-inline">
                    <li><a href="#" class="link-black text-sm"><i class="fa fa-share margin-r-5"></i> Share</a></li>
                  <li><div class="link-black text-sm"><i class="fa fa-pencil"></i><asp:Button ID="Button1" runat="server" Text="answer" CssClass="btn_answer" /></div></li>
                         
                    <li class="pull-right">
                      <a href="#" class="link-black text-sm"><i class="fa fa-comments-o margin-r-5"></i> Answers
                        (5)</a></li>
                  </ul>       
                </div>
               <!-- /post -->
           <div class="box box-primary">
            <div class="box-header with-border">
              <h3 class="box-title">Posted Answer</h3>
            </div>
            <!-- /.box-header -->
            <div class="box-body">

                 <asp:Repeater ID="ans_repeater" runat="server">
<HeaderTemplate>
               </HeaderTemplate>
                 
           <ItemTemplate>  
                <div class="post">
                  <div class="user-block">
                    <asp:Image runat="server" ID="user_image1" ImageUrl='<%# Eval("imagepath") %>'  class="img-circle img-bordered-sm"  alt="user image" />
                         <span class="username">
                          <a href="#"> <%# Eval("firstname") %>  <%# Eval("lastname") %></a>
                          <a href="#" class="pull-right btn-box-tool"><i class="fa fa-times"></i></a>
                        </span>
                    <span class="description">Shared publicly - 7:30 PM today</span>
                  </div>  
                 <a href='post_answer.aspx?id=<%# Eval("ansid") %>' style="font-weight:bold;font-size:medium;padding-left:0px;color:black">
                    <%# Eval("answer1") %>
                  </a>
                         
                </div>
           </ItemTemplate>
                        <FooterTemplate>
                 </FooterTemplate>

                  </asp:Repeater>


             </div>
               </div>
                  
          <div class="box box-primary">
            <div class="box-header with-border">
              <h3 class="box-title">Post your Answer</h3>
            </div>
            <!-- /.box-header -->
            <div class="box-body">
             
             
              <div class="form-group">
                    <asp:Textbox ID="txt_ans" runat="server" class="form-control" style="height: 129px" TextMode="MultiLine" Placeholder=" Write your Answer Here...">
                       
                    </asp:Textbox>
              </div>
      <!--        <div class="form-group">
                <div class="btn btn-default btn-file">
                  <i class="fa fa-paperclip"></i> Attachment
                  <asp:fileupload runat="server" ID="attachment"></asp:fileupload>
                </div>
                <p class="help-block">Max. 32MB</p>
              </div> -->
            </div>
            <!-- /.box-body -->
            <div class="box-footer">
              <div class="pull-right">
               <div class="btn btn-primary fa fa-question active">
                <asp:Button ID="btn_ans" runat="server" Text="Post" style="background-color:transparent;border:none;position:relative;font-weight:bold" OnClick="btn_ans_Click"  />
              </div></div>
                 <button type="reset" class="btn btn-default"><i class="fa fa-times"></i> Discard</button>
</div>
            <!-- /.box-footer -->
          </div>
                  

                  
                </div>
          


                <!-- /.post -->

               

           
                <!-- /.post -->
              </div>
              
            </div>
            <!-- /.tab-content -->
          </div>
          <!-- /.nav-tabs-custom -->
        </div>
        <!-- /.col -->
     
      <!-- /.row -->

    </section>
    <!-- /.content -->
  </div>



</asp:Content>


