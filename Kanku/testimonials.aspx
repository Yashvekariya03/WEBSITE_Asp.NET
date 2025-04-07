<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="testimonials.aspx.cs" Inherits="Kanku.testimonials" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="ContentPlaceHolder2">
    <section class="banner banner-secondary" id="top" style="background-color: rgba(255, 0, 0, 0.66);">
        <div class="container">
            <div class="row">
                <div class="col-md-10 col-md-offset-1">
                    <div class="banner-caption">
                        <h3 style="color: white; text-align: center;">Testimonials</h3>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <main>
        <section class="popular-places" id="popular">
            <div class="container">
                <div class="row">
                    <asp:DataList ID="dlTestimonials" runat="server" RepeatColumns="3" RepeatLayout="Flow">
                        <ItemTemplate>
                            <div class="col-md-4 col-sm-6 col-xs-12">
                                <div class="item popular-item">
                                    <div class="thumb">
                                        <div class="thumb-img">
                                            <asp:Image ID="imgThumb" runat="server" ImageUrl='<%# Eval("T_Image") %>' AlternateText="immg" />
                                        </div>
                                        <div class="text-content">
                                            <h4><%# Eval("T_Name") %></h4>
                                            <span><em><%# Eval("T_Data") %></em></span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </ItemTemplate>
                    </asp:DataList>

                </div>

            </div>

        </section>

    </main>
</asp:Content>

