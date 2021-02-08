<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="giris.aspx.cs" Inherits="eTicaret.giris" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h3 class="text-center"> Giriş Yap</h3>
    <div class="row">
        <div class="col-md-3">
        </div>
         <div class="col-md-6">
             <div class="form-group">
                 <label class="col-md-4 control-label">Kullanıcı Adı :</label>
                 <div class="col-md-8">
                     <asp:TextBox ID="kad" CssClass="form-control" runat="server"></asp:TextBox>
                 </div>
             </div>
         </div>
        <div class="col-md-3">
        </div>
    </div>
    <div class="row">
        <div class="col-md-3">
        </div>
         <div class="col-md-6">
             <div class="form-group">
                 <label class="col-md-4 control-label">Şifre :</label>
                 <div class="col-md-8">
                     <asp:TextBox ID="sifrem" CssClass="form-control" runat="server" TextMode="Password"></asp:TextBox>
                     <br />
                     <asp:Button runat="server"  Text="Giriş Yap" CssClass="btn btn-info" Width="100px" OnClick="Unnamed1_Click" />
                     <br />
                     <asp:Label ID="durum" runat="server" CssClass="text-danger" Font-Bold="True" Font-Size="Medium"></asp:Label>
                 </div>
             </div>
         </div>
        <div class="col-md-3">
        </div>
    </div>
</asp:Content>

