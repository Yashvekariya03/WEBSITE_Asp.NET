﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="cart.aspx.cs" Inherits="Kanku.cart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="ContentPlaceHolder2">

    
    <section class="pt-5 pb-5">
        <section class="banner banner-secondary" id="top" style="background-color: rgba(255, 0, 0, 0.66); margin-top: -80px;">
            <div class="container">
                <div class="row">
                    <div class="col-md-10 col-md-offset-1">
                        <div class="banner-caption">
                            <h3 style="color: white; text-align: center;">Shopping Cart
                            </h3>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <div class="container">
            <div class="row w-100">
                <div class="col-lg-12 col-md-12 col-12" style="margin-top:5px;">
                   
                    <asp:DataList ID="cartDataList" runat="server" CssClass="table table-condensed table-responsive" OnItemCommand="cartDataList_ItemCommand">
                        <ItemTemplate>
                            <div class="row">
                                <div class="col-md-3 text-left">
                                    <asp:Image ID="imgProduct" runat="server" src='<%# Eval("P_Image") %>' CssClass="img-fluid d-none d-md-block rounded mb-2 shadow" height="180"/>
                                </div>
                                <div class="col-md-3 text-center ">
                                    <h3 id="price"><%# Eval("p_name") %></h3>
                                </div>
                                <div class="col-md-2 text-center ">
                                    <h3>Price: ₹<%# Eval("P_Price") %></h3>
                                </div>

                                <div class="col-md-3 blue-button text-center" >

                                    <asp:LinkButton runat="server" ID="btnMinus" CommandName="cmd_minus" CommandArgument='<%# Eval("Cart_Id") %>'>
                                            <i  class="fa fa-minus"></i>
                                    </asp:LinkButton>

                                    <asp:Label ID="lblQty" runat="server" Text='<%# Eval("Qty") %>' Style="padding: 5px 12px 5px 12px; font-size: 25px"></asp:Label>

                                    <asp:LinkButton runat="server" ID="btnPlus" CommandName="cmd_plus" CommandArgument='<%# Eval("Cart_Id") %>'>
                                            <i class="fa fa-plus"></i>
                                    </asp:LinkButton>

                                </div>

                                <div class="col-md-1  text-right blue-button" >
                                    <asp:LinkButton runat="server" ID="btnRemoveProduct" CommandName="cmd_delete" CommandArgument='<%# Eval("Cart_Id") %>'>
                                            <i class="fa fa-close"></i>
                                    </asp:LinkButton>
                                    <%--<asp:Button ID="btnRemove" runat="server" Text="Remove" CssClass="btn btn-white border-secondary bg-white btn-md mb-2" CommandArgument='<%# Eval("cart_id") %>' />--%>
                                </div>

                            </div>
                            <hr />
                        </ItemTemplate>
                    </asp:DataList>
                    <%# Eval("P_Price") %>
                    <div class="float-right text-right">
                        <h4>Sub-total:</h4>
                        <h1>₹
                            <asp:Label ID="lblTotal" runat="server"></asp:Label>
                        </h1>
                    </div>
                </div>
            </div>
            <div class="row mt-4 d-flex align-items-right" style="margin-top: 20px">
                <div class="blue-button col-sm-6 order-md-2 text-right" style="margin-left: 600px">
                    <asp:LinkButton ID="lbtnCheckout" runat="server" class="mb-4 btn-lg pl-5 pr-5" OnClick="lbtnCheckout_Click">Checkout</asp:LinkButton>
                </div>
                <div class="blue-button col-sm-6 mb-3 mb-m-1 order-md-1 text-md-left " style="margin-left: -1200px">
                    <a href="products.aspx" class="mb-4 btn-lg pl-5 pr-5">Continue Shopping</a>
                </div>
            </div>
        </div>
    </section>

</asp:Content>

