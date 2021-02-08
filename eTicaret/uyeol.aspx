<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="uyeol.aspx.cs" Inherits="eTicaret.uyeol" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            position: relative;
            min-height: 1px;
            float: left;
            width: 16.66666667%;
            left: -1px;
            top: 0px;
            padding-left: 15px;
            padding-right: 15px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h3 class="text-center text-primary">Üye Ol</h3>
    <div class="form-group">
        <label class="control-label col-md-4"> Kullanıcı Adı :</label>
        <div class="col-md-4">
            <asp:TextBox runat="server" ID="kad" CssClass="form-control"></asp:TextBox>
        </div>
        <div class="col-md-4">
            <asp:RequiredFieldValidator runat="server" ErrorMessage="Kullanıcı Adı Boş Geçilemez" ControlToValidate="kad" CssClass="text-danger" Font-Size="Small" SetFocusOnError="True"></asp:RequiredFieldValidator>
        </div>
    </div>
     <div class="form-group">
        <label class="control-label col-md-4"> Adı :</label>
        <div class="col-md-4">
            <asp:TextBox runat="server" ID="ad" CssClass="form-control"></asp:TextBox>
        </div>
        <div class="col-md-4">
            <asp:RequiredFieldValidator runat="server" ErrorMessage="Kullanıcı Adı Boş Geçilemez" ControlToValidate="kad" CssClass="text-danger" Font-Size="Small" SetFocusOnError="True"></asp:RequiredFieldValidator>
        </div>
    </div>
   <div class="form-group">
        <label class="control-label col-md-4"> Soyadı :</label>
        <div class="col-md-4">
            <asp:TextBox runat="server" ID="kSoy" CssClass="form-control"></asp:TextBox>
        </div>
        <div class="col-md-4">
            <asp:RequiredFieldValidator runat="server" ErrorMessage="Kullanıcı Soyadı Boş Geçilemez" ControlToValidate="kSoy" CssClass="text-danger" Font-Size="Small" SetFocusOnError="True"></asp:RequiredFieldValidator>
        </div>
    </div>
    <div class="form-group">
        <label class="control-label col-md-4"> E-posta :</label>
        <div class="col-md-4">
            <asp:TextBox runat="server" ID="mail" CssClass="form-control" TextMode="Email"></asp:TextBox>
        </div>
        <div class="col-md-4">
            <asp:RequiredFieldValidator  runat="server" ErrorMessage="E-posta Boş Geçilemez" ControlToValidate="mail" CssClass="text-danger" Font-Size="Small" SetFocusOnError="True"></asp:RequiredFieldValidator>
        </div>
         <div class="auto-style1">
             <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="E-posta Biçimi Hatalı" ControlToValidate="mail" CssClass="text-danger" Font-Size="Small" SetFocusOnError="True" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
         </div>
    </div>
   <div class="form-group">
        <label class="control-label col-md-4"> Şifre :</label>
        <div class="col-md-4">
            <asp:TextBox runat="server" ID="sfr1" CssClass="form-control" TextMode="Password"></asp:TextBox>
        </div>
        <div class="col-md-4">
            <asp:RequiredFieldValidator  runat="server" ErrorMessage="Şifre Boş Geçilemez" ControlToValidate="sfr1" CssClass="text-danger" Font-Size="Small" SetFocusOnError="True"></asp:RequiredFieldValidator>
        </div>
    </div>
      <div class="form-group">
        <label class="control-label col-md-4"> Şifre Tekrar :</label>
        <div class="col-md-4">
            <asp:TextBox runat="server" ID="sfr2" CssClass="form-control" TextMode="Password"></asp:TextBox>
        </div>
        <div class="col-md-2">
            <asp:RequiredFieldValidator runat="server" ErrorMessage="Şifre Boş Geçilemez" ControlToValidate="sfr2" CssClass="text-danger" Font-Size="Small" SetFocusOnError="True"></asp:RequiredFieldValidator>
        </div>
          <div class="col-md-2">
              <asp:CompareValidator  runat="server" ErrorMessage="Şifreler Uyusmuyor" ControlToCompare="sfr1" ControlToValidate="sfr2" CssClass="text-danger" Font-Size="Small" Font-Strikeout="False" SetFocusOnError="True"></asp:CompareValidator>
          </div>
    </div>
     
    <div class="text-center">
        <asp:Button  runat="server" Text="Üye Ol"  CssClass="btn btn-info" Width="100px" OnClick="Unnamed7_Click"/>
    </div>



</asp:Content>
