<%@ Page Title="" Language="C#" MasterPageFile="~/User/Site2.Master" AutoEventWireup="true" CodeBehind="doctors.aspx.cs" Inherits="HMS_Portel.User.doctors" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="ContentPlaceHolder1">

    <!doctype html>
    <html>
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1" />
        <title>Hospital Panel · Dashboard</title>
        <link rel="stylesheet" href="styles.css" />
    </head>
    <body>
        <div class="app">
            <aside class="sidebar">
                <div class="brand">
                    <div class="logo"></div>
                    Hospital Panel
                </div>
                <nav class="nav">
                    <a href="index.aspx"><span class="i">🏠</span> Dashboard</a>
                    <a href="book-appointment.aspx"><span class="i">🗓️</span> Book Appointment</a>
                    <a href="my-appointments.aspx"><span class="i">📋</span> My Appointments</a>
                    <a href="doctors.aspx"><span class="i">👩‍⚕️</span> Doctors</a>
                    <a class="active" href="billing.aspx"><span class="i">💳</span> Billing</a>
                    <div class="sep"></div>
                    <a href="profile.aspx"><span class="i">👤</span> Profile</a>
                </nav>
            </aside>
            <main class="content">
                <div class="topbar">
                    <h2 class="page-title">Billing</h2>
                    <div class="user-mini">
                        <div class="muted">User</div>
                        <a class="btn" href="logout.aspx">Logout</a>
                    </div>
                </div>
                <center>
                    <asp:DataList ID="DataList1" runat="server" CellPadding="3" RepeatDirection="Horizontal" >
                        <ItemTemplate>
                            <asp:Image ID="Image1" runat="server" />
                            <br />
                            <br />
                            Doctor Name:
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("Name") %>'></asp:Label>
                            <br />
                            <br />
                            Department:
                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("Department") %>'></asp:Label>
                            <br />
                            <br />
                            <asp:LinkButton ID="btnViewDetails" runat="server" CommandArgument='<%# Eval("Id") %>' CommandName="cmd_view">View Details</asp:LinkButton>
                        </ItemTemplate>
                    </asp:DataList>
                </center>
                <div style="width: 99%; padding: 10px;">
                    <asp:LinkButton ID="LinkButton1" runat="server" Style="float: left;" >Previous</asp:LinkButton>
                    <asp:LinkButton ID="LinkButton2" runat="server" Style="float: right;">Next</asp:LinkButton>
                </div>
                <%-- <section class="cards">
                    <div class="card sm-6 lg-3">
                        <h3>Upcoming</h3>
                        <div class="stat">
                            2
                        </div>
                        <div class="muted">
                            appointments
                        </div>
                    </div>
                    <div class="card sm-6 lg-3">
                        <h3>Billed</h3>
                        <div class="stat">
                            $340
                        </div>
                        <div class="muted">
                            this month
                        </div>
                    </div>
                    <div class="card sm-6 lg-3">
                        <h3>Doctors</h3>
                        <div class="stat">
                            12
                        </div>
                        <div class="muted">
                            available
                        </div>
                    </div>
                    <div class="card sm-6 lg-3">
                        <h3>Reminders</h3>
                        <div class="stat">
                            3
                        </div>
                        <div class="muted">
                            pending
                        </div>
                    </div>
                </section>
                <section class="card lg-6" style="margin-top: 16px;">
                    <h3>Upcoming Appointments</h3>
                    <table>
                        <thead>
                            <tr>
                                <th>Date</th>
                                <th>Doctor</th>
                                <th>Department</th>
                                <th>Status</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>Oct 05, 2025 · 10:00</td>
                                <td>Dr. Jane Doe</td>
                                <td>Cardiology</td>
                                <td><span class="pill success">Confirmed</span></td>
                            </tr>
                            <tr>
                                <td>Oct 12, 2025 · 14:00</td>
                                <td>Dr. John Smith</td>
                                <td>Pediatrics</td>
                                <td><span class="pill pending">Pending</span></td>
                            </tr>
                        </tbody>
                    </table>
                </section>
                <div class="footer">
                    © 2025 Hospital Panel. All rights reserved.
                </div>--%>
            </main>
        </div>
    </body>
    </html>
</asp:Content>

