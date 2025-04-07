<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="products.aspx.cs" Inherits="Kanku.products" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="ContentPlaceHolder2">
    <section class="banner banner-secondary" id="top" style="background-color: rgba(255, 0, 0, 0.66);">
        <div class="container">
            <div class="row">
                <div class="col-md-10 col-md-offset-1">
                    <div class="banner-caption">
                        <h3 style="color: white; text-align: center;">
                            <asp:Label ID="lblTitle" runat="server" Text="Products"></asp:Label></h3>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <div class="text-right container" style="margin-top:10px">
            <asp:DropDownList ID="categoryDropDown" runat="server" class="sub-menu" BackColor="White" Font-Bold="True" ForeColor="#990033" Font-Size="Medium" Height="40px" Width="25%">
                <asp:ListItem>All Products</asp:ListItem>
            </asp:DropDownList>
        <asp:Button ID="btnApply" runat="server" Text="Filter" OnClick="btnApply_Click" />
        </div>
    <main>
        <section class="featured-places">
            <div class="container">
                <div class="row">
                    <center>
                        <asp:DataList ID="ProductsDataList" runat="server" RepeatColumns="3" RepeatDirection="Horizontal">
                            <ItemTemplate>
                                <div class="featured-item" style="margin: 30px 30px 30px 30px;">
                                    <div class="thumb">
                                        <asp:Image ID="imgProduct" runat="server" ImageUrl='<%# Eval("P_Image") %>' AlternateText="" Height="300" />
                                    </div>
                                    <div class="down-content">
                                        <h4><%# Eval("P_Name") %></h4>
                                        <span>
                                            <del><sup>₹</sup><%# Eval("P_Mrp") %></del><strong><sup>₹</sup><%# Eval("P_Price") %></strong></span><div class="text-button">
                                                <asp:HyperLink ID="hypBuyNow" runat="server" NavigateUrl='<%# "product-details.aspx?p_id=" + Eval("P_Id") %>'>Buy now</asp:HyperLink>
                                            </div>
                                    </div>
                                </div>
                            </ItemTemplate>
                        </asp:DataList>
                    </center>
                </div>
            </div>
        </section>
    </main>
</asp:Content>

