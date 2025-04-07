<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="about-us.aspx.cs" Inherits="Kanku.about_us" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="ContentPlaceHolder2">
    <section class="banner banner-secondary" id="top" style="background-color: rgba(255, 0, 0, 0.66);">
        <div class="container">
            <div class="row">
                <div class="col-md-10 col-md-offset-1">
                    <div class="banner-caption">
                        <h3 style="color: white; text-align: center;">About Us</h3>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <main>
        <section class="our-services">
            <div class="container">
                <div class="row">
                    <div class="col-md-7">
                        <div class="left-content">
                            <br>
                            <h4>About us</h4>
                            <p style="text-align: justify">
                                Welcome to Kanku - Where Beauty Shines Bright!
                                <br>
                                At Kanku, we believe beauty is more than just looks. Our website is all about beauty
                                products that make you feel great inside and out.
                                We want to be your trusted friend on your journey to feeling confident and expressing
                                yourself.
                                Mauris sit amet quam congue, pulvinar urna et, congue diam.
                                Suspendisse eu lorem massa. Integer sit amet posuere tellus, id efficitur leo. In hac
                                habitasse platea dictumst. Vel sequi odit similique repudiandae ipsum iste, quidem
                                tenetur id impedit, eaque et, aliquam quod.
                            </p>

                            <h5>Our Story:</h5>
                            <p style="text-align: justify">
                                Kanku started because we loves beauty and wants everyone to feel beautiful too.
                                we carefully selects the best beauty products from around the world to help you look and
                                feel your best.
                            </p>

                            <h5>Our Mission:</h5>
                            <p style="text-align: justify">
                                Our mission is to inspire and take care of your beauty. We offer products that are good
                                for you and the environment.
                                We care about the world we live in and want to make it better for everyone.
                            </p>

                        </div>
                    </div>
                    <div class="col-md-5">
                        <img src="img/abtus.png" class="img-fluid" alt="">
                    </div>
                </div>
            </div>
        </section>


    </main>
</asp:Content>

