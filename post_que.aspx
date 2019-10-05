<%@ Page Title="" Language="C#" MasterPageFile="~/ftaMasterPage.master" AutoEventWireup="true" CodeFile="post_que.aspx.cs" Inherits="post_que" EnableEventValidation="false" ValidateRequest="false" %>

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
              <h3 class="box-title">Ask Question</h3>
            </div>
            <!-- /.box-header -->
            <div class="box-body">
             
             
              <div class="form-group">
                    <asp:Textbox ID="txt_que" runat="server" class="form-control" style="height: 129px" TextMode="MultiLine" Placeholder=" Write your Answer Here...">
                       
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
                <asp:Button ID="btn_ask" runat="server" Text="Ask" style="background-color:transparent;border:none;position:relative;font-weight:bold" OnClick="btn_ask_Click" />
              </div></div>
              <button type="reset" class="btn btn-default"><i class="fa fa-times"></i> Discard</button>
            </div>
            <!-- /.box-footer -->
          </div>
          <!-- /. box -->
        </div>
        <!-- /.col -->
      </div>
      <!-- /.row -->
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
<asp:Label ID="l" runat="server" Text=""></asp:Label>
</asp:Content>

