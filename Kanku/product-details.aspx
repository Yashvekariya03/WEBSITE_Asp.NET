<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="product-details.aspx.cs" Inherits="Kanku.product_details" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="ContentPlaceHolder2">
    <section class="featured-places">

        <section class="banner banner-secondary" id="top"
            style="background-color: rgba(255, 0, 0, 0.66); margin-top: -80px;">
            <div class="container">
                <div class="row">
                    <div class="col-md-10 col-md-offset-1">
                        <div class="banner-caption">
                            <h3 style="color: white; text-align: center;">
                                <asp:Label ID="lblTitle" runat="server" Text="Product Details"></asp:Label>
                            </h3>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <div class="container" style="margin-top: 20px;">
            <div class="row">
                <div class="col-md-6 col-xs-12">

                    <div>
                        <asp:Image ID="P_Image" runat="server" class="img-responsive wc-image" />
                        <%--<img src="img\face2.jpg" alt="" class="img-responsive wc-image">--%>
                    </div>
                </div>

                <div class="col-md-6 col-xs-12">
                    <form action="#" method="post" class="form">
                        <h3>
                            <asp:Label ID="lblP_Name" runat="server" Text="Label"></asp:Label>
                        </h3>

                        <h2>
                            <small><del>₹
                                    <asp:Label ID="lblP_Mrp" runat="server" Text="Label"></asp:Label>
                            </del></small><strong class="text-danger">₹
                                <asp:Label ID="lblP_Price" runat="server" Text="Label"></asp:Label>
                            </strong></h2>

                        <br>

                        <p class="lead">
                            <asp:Label ID="lblP_Desc" runat="server" Text="Label"></asp:Label>
                        </p>

                        <br>

                        <div class="row">
                            <div class="col-sm-4">
                                <label class="control-label">Quantity</label>

                                <div class="form-group">

                                    <asp:Button ID="btnMinus" runat="server" Text="-" OnClick="btnMinus_Click" />

                                    <asp:Label ID="lblQty" runat="server" Text="1" Style="margin: 0px 10px 0px 10px"></asp:Label>

                                    <asp:Button ID="btnPlus" runat="server" Text="+" OnClick="btnPlus_Click" />

                                    <%--<asp:TextBox ID="lblQty" runat="server" class="form-control"></asp:TextBox>--%>
                                    <%--<input type="number" name="qty" class="form-control" value="1" min="1" max="5"
                                        required>--%>
                                </div>
                            </div>
                        </div>

                        <div class="blue-button">

                            <asp:LinkButton ID="btnAddToCart" runat="server" OnClick="btnAddToCart_Click">Add To Cart</asp:LinkButton>
                            <asp:LinkButton ID="btnWishList" runat="server" OnClick="btnWishList_Click">❤</asp:LinkButton>

                            <%--<input type="submit" value="Add to Cart" name="noLogin">
                            <input type="submit" value="❤" name="noWish">--%>



                            <%--                            <input type="submit" value="Add to Cart" name="addtocart">
                            <input type="submit" value="❤" name="wishlist">--%>
                        </div>
                    </form>
                </div>
            </div>
        </div>

    </section>
</asp:Content>

