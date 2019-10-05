<%@ Page Title="" Language="C#" MasterPageFile="~/ftaMasterPage.master" AutoEventWireup="true" CodeFile="myans.aspx.cs" Inherits="myans" %>

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
           
  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    

    <!-- Main content -->
    <section class="content">
      <div class="row">
        <div class="col-md-3">
          <a href="Default.aspx" class="btn btn-primary btn-block margin-bottom">Back to Home</a>

          <div class="box box-solid">
            <div class="box-header with-border">
              <h3 class="box-title">Folders</h3>

              <div class="box-tools">
                <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
                </button>
              </div>
            </div>
            <div class="box-body no-padding">
              <ul class="nav nav-pills nav-stacked">
                   <li><a href="post_que.aspx"><i class="fa fa-question"></i>Ask Question</a></li>
                <li><a href="myque.aspx"><i class="fa fa-exclamation"></i> Questions
                  <asp:Label runat="server" class="label label-primary pull-right" ID="lbl_questions" Text="" ></asp:Label></a></li>
                <li><a href="#"><i class="fa fa-reply"></i> Answers
                     <asp:Label runat="server" class="label label-primary pull-right" ID="lbl_answers" Text="" ></asp:Label>
                    </a></li>
              
               
              </ul>
            </div>
            <!-- /.box-body -->
          </div>
          <!-- /. box -->
        
          <!-- /.box -->
        </div>
        <!-- /.col -->
        <div class="col-md-9">
          <div class="box box-primary">
                               <asp:Repeater ID="ans_repeater" runat="server">
<HeaderTemplate>
               </HeaderTemplate>
                 
           <ItemTemplate>  
            <div class="box-header with-border">
              <h3 class="box-title">My Answers</h3>
            </div>
            <!-- /.box-header -->
            <div class="box-body">
             
                 <div class="active tab-pane" id="activity">
           
                <div class="post">
                  <div class="user-block">
                    <asp:Image runat="server" ID="user_image"  ImageUrl='<%# Eval("imagepath") %>'  class="img-circle img-bordered-sm"  alt="user image" />
                         <span class="username">
                          <a href="#"><asp:Label runat="server" ID="fname" Text='<%# Eval("firstname") %>'></asp:Label><asp:Label runat="server" ID="lname" Text='<%# Eval("lastname") %>'></asp:Label> </a>
                          <a href="#" class="pull-right btn-box-tool"><i class="fa fa-times"></i></a>
                        </span>
                    <span class="description">Shared publicly - 7:30 PM today</span>
                  </div>  
               <asp:Label runat="server" ID="question" Text='<%# Eval("question1") %>' style="font-weight:bold;font-size:medium;padding-left:0px;color:black">     
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
              
           <div class="box box-primary">
            <div class="box-header with-border">
              <h3 class="box-title">Posted Answer</h3>
            </div>
            <!-- /.box-header -->
            <div class="box-body">


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
                  
     <!--     <div class="box box-primary">
            <div class="box-header with-border">
              <h3 class="box-title">Post your Answer</h3>
            </div>
            <!-- /.box-header
            <div class="box-body">
             
             
              <div class="form-group">
                    <asp:Textbox ID="txt_ans" runat="server" class="form-control" style="height: 129px" TextMode="MultiLine" Placeholder=" Write your Answer Here...">
                       
                    </asp:Textbox>
              </div>
      
            </div>
            <!-- /.box-body 
            <div class="box-footer">
              <div class="pull-right">
               <div class="btn btn-primary fa fa-question active">
               
              </div></div>
                 <button type="reset" class="btn btn-default"><i class="fa fa-times"></i> Discard</button>
</div>
            <!-- /.box-footer 
          </div> -->
 
                </div>
             
   
            </div>
          
          </div>
          
        </div>
        <!-- /.col -->
      </div>
      <!-- /.row -->
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->

</asp:Content>

