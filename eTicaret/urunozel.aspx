<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="urunozel.aspx.cs" Inherits="eTicaret.urunozel" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
    <asp:Repeater ID="tekrar" runat="server">
        <ItemTemplate>
           <div class="col-md-4">

           </div>
            <div class="col-md-8">
                <h1 style="border-bottom:2px solid #666;padding-bottom:6px;text-shadow:0px 2px 2px gray"><%# Eval("ITEMNAME") %></h1>
                <div class="row">
                    <div class="col-md-4 text-right" style="font-weight:bold;background-color:#ffdd99;padding:6px 4px;font-size:18px;">
                        Ürün Özellik :
                    </div>
                    <div class="col-md-8" style="background-color:#dfbf9f; padding:6px 4px;font-size:18px;">
                        <%# Eval("ITEMPROPERTY") %> 
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-4 text-right" style="font-weight:bold;background-color:#ffdd99;padding:6px 4px;font-size:18px;">
                        Renk :
                    </div>
                    <div class="col-md-8" style="background-color:#dfbf9f; padding:6px 4px;font-size:18px;">
                        <%# Eval("ITEMCOLOR") %> 
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-4 text-right" style="font-weight:bold;background-color:#ffdd99;padding:6px 4px;font-size:18px;">
                        BEDEN :
                    </div>
                    <div class="col-md-8" style="background-color:#dfbf9f; padding:6px 4px;font-size:18px;">
                        <%# Eval("BODYSIZE") %> 
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-4 text-right" style="font-weight:bold;background-color:#ffdd99;padding:6px 4px;">
                          <%# Eval("PRICE","{0:c}") %> 
                    </div>
                    <div class="col-md-8" style="background-color:#dfbf9f; padding:6px 4px;">
                        <a href="#" class="btn btn-danger" style="margin-top:20px"><span class="glyphicon glyphicon-shopping-cart"></span>Sepete Ekle </a>
                    </div>
                </div>
            </div>
        </ItemTemplate>
    </asp:Repeater>
        </div>
</asp:Content>
