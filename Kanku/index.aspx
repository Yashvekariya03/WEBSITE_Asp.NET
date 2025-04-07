<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="Kanku.index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="ContentPlaceHolder2">
    <section class="banner" id="top" style="background-image: url(img/homepage-banner-image-1920x700.png);">
        <div class="container">
            <div class="row">
                <div class="col-md-10 col-md-offset-1">
                    <div class="banner-caption">
                        <h2>Wellcome To Glowleaf.</h2>
                        <div class="blue-button">
                            <a href="products.aspx">Shop Now</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <main>
        <section class="featured-places">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="section-heading">
                            <h2>Featured Products</h2>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <!-- Featured Products HTML content goes here -->
                    <center>
                        <asp:DataList ID="DataListProducts" runat="server" RepeatColumns="3" RepeatDirection="Horizontal">
                            <ItemTemplate>
                                <div class="featured-item" style="margin: 30px 30px 30px 30px;">
                                    <div class="thumb">
                                        <img src='<%# Eval("P_Image") %>' height="350" alt='' />
                                    </div>
                                    <div class="down-content">
                                        <h4><%# Eval("P_Name") %></h4>
                                        <span>
                                            <del><sup>₹</sup><%# Eval("P_Mrp") %></del>
                                            <strong><sup>₹</sup><%# Eval("P_Price") %></strong>
                                        </span>
                                        <div class="text-button">
                                            <a href='product-details.aspx?p_id=<%#Eval("P_Id") %>'>Buy now</a>
                                        </div>
                                    </div>
                                </div>
                            </ItemTemplate>
                        </asp:DataList>
                    </center>

                    <%--<div class="col-md-4 col-sm-6 col-xs-12">
                        <div class="featured-item">
                            <div class="thumb">
                                <img src="img\face2.jpg" alt="">
                            </div>
                            <div class="down-content">
                                <h4>p name </h4>
                                <span><del><sup>₹</sup> mrp </del><strong><sup>₹</sup> price </strong></span>
                                <div class="text-button">
                                    <a href="product-details.aspx">Buy now</a>
                                </div>
                            </div>
                        </div>
                    </div>--%>
                </div>
            </div>
        </section>
        <section class="featured-places">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="section-heading">
                            <h2>Categories</h2>
                        </div>
                    </div>
                </div>
                <div class="row">

                    <asp:DataList ID="dlCategories" runat="server" RepeatColumns="3" RepeatDirection="Horizontal">
                        <ItemTemplate>
                            <div class="featured-item" style="margin: 30px 30px 30px 30px;">
                                <div class="thumb">
                                    <div class="">
                                        <a href="products.aspx">
                                            <img src='<%# Eval("C_Image") %>' height="350" alt="" />
                                        </a>
                                    </div>
                                </div>
                                <div class="down-content">
                                    <div class="text-button">
                                        <a href="products.aspx?catid=<%# Eval("C_Id") %>">
                                            <h3><%# Eval("C_Name") %></h3>
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </ItemTemplate>
                    </asp:DataList>
                    <%--<div class="col-md-4 col-sm-6 col-xs-12">
                        <div class="featured-item">
                            <div class="thumb">
                                <div class="">
                                    <img src="img/face.jpg" alt="">
                                </div>
                            </div>
                            <div class="down-content">
                                <div class="text-button">
                                    <a href="face.aspx">
                                        <h3>face </h3>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>--%>
                </div>
            </div>
        </section>
        <section class="popular-places" id="popular">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="section-heading">
                            <h2>Testimonials</h2>
                        </div>
                    </div>
                </div>
                <asp:DataList ID="dlTestimonials" runat="server" RepeatDirection="Horizontal" RepeatLayout="Flow" CssClass="owl-carousel owl-theme">
                    <ItemTemplate>
                        <div class="item popular-item">
                            <a href="testimonials.aspx">
                                <div class="thumb">
                                    <div class="thumb-img">
                                        <img src='<%# Eval("T_Image") %>' alt="img" />
                                    </div>
                                    <div class="text-content">
                                        <h4><%# Eval("T_Name") %></h4>
                                        <span><%# Eval("T_Data") %></span>
                                    </div>
                                    <div class="plus-button">
                                        <%--<a href='<%# Eval("TestimonialLink") %>'><i class="fa fa-plus"></i></a>--%>
                                    </div>
                                </div>
                            </a>
                        </div>
                    </ItemTemplate>
                </asp:DataList>
            </div>
        </section>
    </main>
</asp:Content>


