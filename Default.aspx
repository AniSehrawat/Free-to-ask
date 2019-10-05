<%@ Page Title="" Language="C#" MasterPageFile="~/ftaMasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Default" EnableEventValidation="false" ValidateRequest="false" %>

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
    <section class="content-header">
      <h1>
        Timeline
      </h1>
      
    </section>

    <!-- Main content -->
    <section class="content">

      <div class="row">
        <div class="col-md-1">

          <!-- Profile Image -->
        
          <!-- /.box -->

        
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
               
                   <asp:Repeater ID="que_repeater" runat="server">
<HeaderTemplate>
               </HeaderTemplate>
                 
           <ItemTemplate>  
                <div class="post">
                  <div class="user-block">
                    <asp:Image runat="server" ID="user_image" ImageUrl='<%# Eval("imagepath") %>'  class="img-circle img-bordered-sm"  alt="user image" />
                        <span class="username">
                          <a href='profileuser.aspx?id=<%# Eval("uid") %>'> <%# Eval("firstname") %>  <%# Eval("lastname") %></a>
                          <a href="#" class="pull-right btn-box-tool"><i class="fa fa-times"></i></a>
                        </span>
                    <span class="description">Shared publicly - 7:30 PM today</span>
                  </div>  
                 <a href='post_answer.aspx?id=<%# Eval("queid") %>' style="font-weight:bold;font-size:medium;padding-left:0px;color:black">
                    <%# Eval("question1") %>
                  </a>
                     <ul class="list-inline">
                    <li><a href="#" class="link-black text-sm"><i class="fa fa-share margin-r-5"></i> Share</a></li>
                     <li><a href='post_answer.aspx?id=<%# Eval("queid") %>' class="link-black text-sm"><i class="fa fa-pencil margin-r-5"></i> Answer</a></li>  
                    <li class="pull-right">
                      <a href='post_answer.aspx?id=<%# Eval("queid") %>' class="link-black text-sm"><i class="fa fa-comments-o margin-r-5"></i> Answers
                        </a></li>
                  </ul>       
                </div>
           </ItemTemplate>
                        <FooterTemplate>
                 </FooterTemplate>

                  </asp:Repeater>


                <!-- /.post -->

               

                <!-- Post -->
             
                <!-- /.post -->
              </div>
              <!-- /.tab-pane -->
             
              <!-- /.tab-pane -->
               

                   
           

                         


  <!--                 <table style="width:70%;text-align:left;margin-left:10px">
                       <asp:Repeater runat="server" ID="edit_repeater">
             <HeaderTemplate>         <tr>
                  <td class="form-group">
                    <label class="col-sm-2 control-label">FirstName</label>
                    </td>
                    <td class="form-group">
                    <label class="col-sm-2 control-label">LastName</label>
                  </td>
                   <td class="form-group">
                    <label for="inputEmail" class="col-sm-2 control-label">DOB</label>
                  </td>
                    <td class="form-group">
                    <label for="inputEmail" class="col-sm-2 control-label">MobileNo.</label>
                  </td>
                     <td class="form-group">
                    <label for="inputEmail" class="col-sm-2 control-label">Email</label>        
                  </td>
                           </tr>
             </HeaderTemplate> 
             <ItemTemplate>
                       <tr>
                       
                    <td class="form-group">
                     <asp:label runat="server" CssClass="col-sm-2 control-label" text='<%# Eval("firstname") %>'></asp:label> 
                    </td>
                    <td class="form-group">
                     <asp:label runat="server" CssClass="col-sm-2 control-label" text='<%# Eval("lastname") %>'></asp:label>  
                    </td>
                    <td class="form-group">
                      <asp:Label runat="server" CssClass="col-sm-2 control-label" Text='<%# Eval("dob") %>'></asp:Label>
                    </td>
                    <td class="form-group">
                        <asp:label runat="server" CssClass="col-sm-2 control-label" text='<%# Eval("mobile") %>'></asp:label>
                    </td>
                       <td class="form-group">
                      <asp:label runat="server" CssClass="col-sm-2 control-label" text='<%# Eval("email") %>'></asp:label>
                    </td>
                        <tr>   
                               <td class="form-group"><a class="col-sm-2 control-label" href='edit_userinfo.aspx?id='<%# Eval("uid") %>'>edit</a></td>
                           
                        </tr>
                           </tr></ItemTemplate>
                           </asp:Repeater>
                 </table> -->
                 
          <!--        <div class="form-group">
                    <label for="inputName" class="col-sm-2 control-label">Name</label>

                    <div class="col-sm-10">
                      <input type="text" class="form-control" id="inputName" placeholder="Name"/>
                    </div>
                  </div>
                  <div class="form-group">
                    <label for="inputExperience" class="col-sm-2 control-label">Experience</label>

                    <div class="col-sm-10">
                      <textarea class="form-control" id="inputExperience" placeholder="Experience"></textarea>
                    </div>
                  </div>
                  <div class="form-group">
                    <label for="inputSkills" class="col-sm-2 control-label">Skills</label>

                    <div class="col-sm-10">
                      <input type="text" class="form-control" id="inputSkills" placeholder="Skills"/>
                    </div>
                  </div>
                  <div class="form-group">
                    <div class="col-sm-offset-2 col-sm-10">
                      <div class="checkbox">
                        <label>
                          <input type="checkbox"/> I agree to the <a href="#">terms and conditions</a>
                        </label>
                      </div>
                    </div>
                  </div>
                  <div class="form-group">
                    <div class="col-sm-offset-2 col-sm-10">
                      <button type="submit" class="btn btn-danger">Submit</button>
                    </div>  -->
                
              </div>
               
              <!-- /.tab-pane -->
            </div>
            <!-- /.tab-content -->
          </div>
          <!-- /.nav-tabs-custom -->
        </div>
        <!-- /.col -->
           </section>
      </div>
      <!-- /.row -->

  
     


   

</asp:Content>

