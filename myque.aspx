<%@ Page Title="" Language="C#" MasterPageFile="~/ftaMasterPage.master" AutoEventWireup="true" CodeFile="myque.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
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
                <li><a href="myans.aspx"><i class="fa fa-reply"></i> Answers
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
        <!-- /.col -->
      </div>
      <!-- /.row -->
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->



</asp:Content>

