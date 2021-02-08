<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="eTicaret._default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row" style="margin:10px 0px 0px;">
    <asp:Repeater ID="tekrarlayici" runat="server">
        <ItemTemplate>
            <div class="col-md-3" style="border:1px solid #ccc;">
                <div style="margin:12px 8px;">
                   <img src="images/[img][5][1].jpg" class="img-responsive img-rounded" /></a>
                </div>
                <h2 class="text-center" style="height:48px; border:1px solid blue;"><%# Eval("ITEMNAME") %></h2>
                <h3 style="color:red;" class="text-center"><%# Eval("PRICE","{0:c }") %></h3>
                <div>
                    <a href="#" class="btn btn-danger"><span class="glyphicon glyphicon-shopping"></span>Sepete Ekle</a>
                     <a href="#" class="btn btn-success"><span class="glyphicon glyphicon-shopping"></span>Sipariş Detayı</a>
                </div>
            </div>
        </ItemTemplate>
    </asp:Repeater>

</div>
</asp:Content>
