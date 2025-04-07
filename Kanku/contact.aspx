<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="contact.aspx.cs" Inherits="Kanku.contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="ContentPlaceHolder2">
    <section class="banner banner-secondary" id="top" style="background-color: rgba(255, 0, 0, 0.66);">
        <div class="container">
            <div class="row">
                <div class="col-md-10 col-md-offset-1">
                    <div class="banner-caption">
                        <h3 style="color: white; text-align: center;">Contact Us</h3>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <main>
        <section class="popular-places">
            <div class="container">
                <div class="contact-content">
                    <div class="row">
                        <div class="col-md-8">
                            <div class="left-content">
                                <div class="row">
                                    <form method="" action="">
                                        <div class="col-md-6">
                                            <asp:TextBox ID="name" runat="server" class="form-control" placeholder="Your Name..."></asp:TextBox>
                                            <%--<input name="name" type="text" class="form-control" id="name" placeholder="Your name..." >--%>
                                        </div>
                                        <div class="col-md-6">
                                            <asp:TextBox ID="email" runat="server" class="form-control" placeholder="Your Email..." ></asp:TextBox>
                                            <%--<input name="subject" type="text" class="form-control" id="subject" placeholder="Subject..." >--%>
                                        </div>
                                        <div class="col-md-12">
                                            <asp:TextBox ID="subject" runat="server" class="form-control" placeholder="Your Subject..."></asp:TextBox>
                                            <%--<textarea name="message" rows="6" class="form-control" id="message" placeholder="Your message..." ></textarea>--%>

                                        </div>
                                        <div class="col-md-12">
                                            <asp:TextBox ID="message" runat="server" class="form-control" placeholder="Your Message..." TextMode="MultiLine"></asp:TextBox>
                                            <%--<textarea name="message" rows="6" class="form-control" id="message" placeholder="Your message..." ></textarea>--%>

                                        </div>
                                        <div class="col-md-12">

                                            <div class="blue-button">
                                                <asp:LinkButton ID="submit" runat="server" OnClick="submit_Click">Send Message</asp:LinkButton>
                                                <%--<input type="submit" name="submit" value="Send Message" />--%>
                                            </div>

                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="right-content">
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="content">
                                            <p>Contact us and visit our store.</p>
                                            <ul>
                                                <li><span>Phone:</span><a href="#">+91 94271 06916</a></li>
                                                <li><span>Email:</span><a href="#">contact@kanku.com</a></li>
                                                <li><span>Address:</span><i class="fa fa-map-marker"></i> kanku,
                                                    HariRoad, Amreli, Gujarat</li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </main>
</asp:Content>

