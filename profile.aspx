<%@ Page Title="" Language="C#" MasterPageFile="~/ftaMasterPage.master" AutoEventWireup="true" CodeFile="profile.aspx.cs" Inherits="profile" EnableEventValidation="false" ValidateRequest="false" %>

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
  background-color: #337ab7;
  border-radius:11%;
  color: white;
  font-size: 9.8px;
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

                <div class="container">       
<a data-target="#myModal" data-toggle="modal">
   <asp:Image ID="img_user" runat="server" CssClass="profile-user-img img-responsive img-circle" /><div class="middle">
   <div class="text">Update Profile</div>
  </div>
  </a> </div> 

                           
                                
<!-- Modal -->
<div id="myModal" class="modal fade" role="dialog">
  <div class="modal-dialog">

    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title">Upload profile</h4>
      </div>
      <div class="modal-body">
         <%-- <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
           <ajaxToolkit:AsyncFileUpload ID="FileUpload1" runat="server" Width="400px" UploaderStyle="Modern" CompleteBackColor="White" UploadingBackColor="#CCFFFF" ThrobberID="Image1"
                        OnUploadedComplete="FileUploadComplete" BackColor="#3399ff" CssClass="File" onChange="uploadImage()" />--%>
          <asp:FileUpload ID="FileUpload2" runat="server" />
      </div>
      <div class="modal-footer">
          <asp:Button ID="btn_imageupload" runat="server" Text="Upload" CssClass="btn btn-primary" OnClick="btn_imageupload_Click" />
        <button type="button" class="btn btn-primary pull-right" data-dismiss="modal">Close</button>
      </div>
    </div>

  </div>
</div>

 <center><asp:Label runat="server" ID="lbl_username" CssClass="profile-username text-center" Text=""></asp:Label>
</center>                 
<a data-target="#myModal1" data-toggle="modal"><p runat="server" id="designation" class="text-muted text-center"></p>
 </a>

                           
                                
<!-- Modal -->
<div id="myModal1" class="modal fade" role="dialog">
  <div class="modal-dialog">

    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title">Update Designation</h4>
      </div>
      <div class="modal-body">
      <div class="input-group">
          <span class="input-group-addon"><i class="fa fa-briefcase" style="border-right:none"></i></span>
          <asp:TextBox ID="txt_designation" runat="server" style="border-left:none;margin-left:-12px" CssClass="form-control" placeholder="Enter Your Designation"></asp:TextBox>
     </div> </div>
      <div class="modal-footer">
          <asp:Button ID="btn_designation" runat="server" Text="Upload" CssClass="btn btn-primary" OnClick="btn_designation_Click" />
        <button type="button" class="btn btn-primary pull-right" data-dismiss="modal">Close</button>
      </div>
    </div>

  </div>
</div>

                 <ul class="list-group list-group-unbordered">
                <li class="list-group-item">
                  <b>Followers</b> <a id="followers_link" runat="server" class="pull-right"></a>
                </li>
                <li class="list-group-item">
                  <b>Following</b> <a id="following_link" runat="server" class="pull-right"></a>
                </li>
              
              </ul>


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

                   
<a data-target="#myModal2" data-toggle="modal"><p runat="server" id="education" class="text-muted"></p>
  
  </a> 

                           
                                
<!-- Modal -->
<div id="myModal2" class="modal fade" role="dialog">
  <div class="modal-dialog">

    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title">Update Education</h4>
      </div>
      <div class="modal-body">
      <div class="input-group">
          <span class="input-group-addon"><i class="fa fa-book" style="border-right:none"></i></span>
          <asp:TextBox ID="txt_education" runat="server" style="border-left:none;margin-left:-12px" CssClass="form-control" placeholder="Enter Your Education"></asp:TextBox>
      </div></div>
      <div class="modal-footer">
          <asp:Button ID="btn_education" runat="server" Text="Upload" CssClass="btn btn-primary" OnClick="btn_education_Click" />
        <button type="button" class="btn btn-primary pull-right" data-dismiss="modal">Close</button>
      </div>
    </div>

  </div>
</div>

              <hr />

              <strong><i class="fa fa-map-marker margin-r-5"></i> Location</strong>

                      
<a data-target="#myModal3" data-toggle="modal"><p runat="server" id="location" class="text-muted"></p>
  
  </a> 

                           
                                
<!-- Modal -->
<div id="myModal3" class="modal fade" role="dialog">
  <div class="modal-dialog">

    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title">Update Location</h4>
      </div>
      <div class="modal-body">
      <div class="input-group">
          <span class="input-group-addon"><i class="fa fa-map-marker" style="border-right:none"></i></span>
          <asp:TextBox ID="txt_location" runat="server" style="border-left:none;margin-left:-12px" CssClass="form-control" placeholder="Enter Your Location"></asp:TextBox>
      </div></div>
      <div class="modal-footer">
          <asp:Button ID="btn_location" runat="server" Text="Upload" CssClass="btn btn-primary" OnClick="btn_location_Click" />
        <button type="button" class="btn btn-primary pull-right" data-dismiss="modal">Close</button>
      </div>
    </div>

  </div>
</div>
              <hr/>

             


              </div>
            <!-- /.box-body -->
          </div>
          <!-- /.box -->
        </div>
        <!-- /.col -->
        <div class="col-md-9">
          <div class="nav-tabs-custom">
          
            <div class="tab-content">
            
              <!-- /.tab-pane -->
             
              <!-- /.tab-pane -->
               

                   
              <div class="box box-primary" id="settings">
               <div class="form-horizontal">
                   <asp:Panel ID="Panel1" runat="server">
                    <div class="form-group">
                    <label for="inputName" class="col-sm-2 control-label">First Name</label>

                    <div class="col-sm-10">
                      <asp:Label runat="server" Cssclass="" ID="lbl_fname" Text=""></asp:Label>
                    </div>
                  </div>
                  <div class="form-group">
                    <label for="inputEmail" class="col-sm-2 control-label">Last Name</label>

                    <div class="col-sm-10">
                      <asp:Label runat="server" Cssclass="" ID="lbl_lname" Text=""></asp:Label>

                    </div>
                  </div>

                  <div class="form-group">
                    <label for="inputName" class="col-sm-2 control-label">DOB</label>

                    <div class="col-sm-10">
                       <asp:Label runat="server" Cssclass="" ID="lbl_dob" Text=""></asp:Label>
                    </div>
                  </div>
                  <div class="form-group">
                    <label for="inputExperience" class="col-sm-2 control-label">Email</label>

                    <div class="col-sm-10">
                      <asp:Label runat="server" Cssclass="" ID="lbl_email" Text=""></asp:Label>
                    </div>
                  </div>
                  <div class="form-group">
                    <label for="inputSkills" class="col-sm-2 control-label">Mobile No.</label>

                    <div class="col-sm-10">
                      <asp:Label runat="server" Cssclass="" ID="lbl_mobile" Text=""></asp:Label>
                    </div>
                  </div>
                  <div class="form-group">
                   
                  </div>
                  <div class="form-group">
                    <div class="col-sm-offset-2 col-sm-10">
           <asp:updatepanel runat="server" id="f1">
                    <ContentTemplate>            <asp:Button runat="server" ID="btn_edit"  class="btn btn-danger" Text="Edit" onclick="btn_edit_Click"></asp:Button>
                        </ContentTemplate>
                </asp:updatepanel>

                    </div>
                  </div></asp:Panel>
                   <asp:Panel ID="Panel2" runat="server" Visible="false">
                        <div class="form-group">
                    <label for="inputName" class="col-sm-2 control-label">First Name</label>

                    <div class="col-sm-10">
                      <asp:TextBox runat="server" CssClass="form-control" ID="txt_fname" Text=""></asp:TextBox>
                    </div>
                  </div>
                  <div class="form-group">
                    <label for="inputEmail" class="col-sm-2 control-label">Last Name</label>

                    <div class="col-sm-10">
                       <asp:TextBox runat="server" CssClass="form-control" ID="txt_lname" Text=""></asp:TextBox>
                    </div>
                  </div>
                  <div class="form-group">
                    <label for="inputName" class="col-sm-2 control-label">DOB</label>


                    <div class="col-sm-10">
                       <asp:TextBox runat="server" CssClass="form-control" ID="txt_dob" Text="" TextMode="Date"></asp:TextBox>
                    </div>
                  </div>
                  <div class="form-group">
                    <label for="inputExperience" class="col-sm-2 control-label">Email</label>

                    <div class="col-sm-10">
                       <asp:TextBox runat="server" CssClass="form-control" ID="txt_email" Text=""></asp:TextBox>
                    </div>
                  </div>
                  <div class="form-group">
                    <label for="inputSkills" class="col-sm-2 control-label">Mobile No.</label>

                    <div class="col-sm-10">
                       <asp:TextBox runat="server" CssClass="form-control" ID="txt_mobile" Text=""></asp:TextBox>
                    </div>
                  </div>
                       <asp:Label runat="server" ID="lbl_uid" Text="" Visible="false"></asp:Label>
                  <div class="form-group">
                    <div class="col-sm-offset-2 col-sm-10">
                         <!--      <div class="checkbox">
                        <label>
                            
                 <asp:CheckBox ID="CheckBox_term" runat="server" />I agree to the <a href="#">terms and conditions</a> 
                        </label>
                      </div> -->
                    </div>
                  </div>
                  <div class="form-group">
                    <div class="col-sm-offset-2 col-sm-10">
                      <asp:Button runat="server" ID="btn_update" CssClass="btn btn-danger" Text="Update" OnClick="btn_update_Click"></asp:Button>
                    </div>
                  </div> 
                   </asp:Panel>
                     </div>
               </div>

                         


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



