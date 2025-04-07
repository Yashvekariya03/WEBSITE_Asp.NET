<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="empty-wishlist.aspx.cs" Inherits="Kanku.empty_wishlist" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder2">
    <section class="pt-5 pb-5">
        <section class="banner banner-secondary" id="top"
            style="background-color: rgba(255, 0, 0, 0.66); margin-top: -80px;">
            <div class="container">
                <div class="row">
                    <div class="col-md-10 col-md-offset-1">
                        <div class="banner-caption">
                            <h3 style="color: white; text-align: center;">Wishlist
                            </h3>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <div class="container">
            <center>
                <asp:Image ID="imgEmprtWishlist" runat="server" ImageUrl="~/img/empty-wishlist.png" Height="40%" Width="40%" ImageAlign="AbsMiddle" />
            </center>
            
            <div class="row mt-4 d-flex align-items-right">
                <div class="display-5 mb-2 text-center blue-button">
                    <a href="products.aspx" class="mb-4 btn-lg pl-5 pr-5"
                        style="margin-top: 50px;">Continue Shopping</a>
                </div>
            </div>   
        </div>
    </section>
</asp:Content>

