<%@ Page Title="" Language="C#" MasterPageFile="~/User/Site2.Master" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="HMS_Portel.User.register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
    <!doctype html>
    <html>
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1" />
        <title>Hospital Panel · Register</title>
        <link rel="stylesheet" href="styles.css" />
    </head>
    <body>
        <div class="auth-wrap">
            <div class="form auth-card">
                <h2 class="page-title">Register</h2>
                <p class="page-subtitle">Create your account to book appointments</p>
                <form action="login.aspx" method="get">
                    <div class="row two">
                        <div class="field">
                            <label for="firstName">First name</label>
                            <asp:TextBox ID="txtnm" name="firstName" placeholder="Enter first name" runat="server"></asp:TextBox>
                            <%--                            <input id="firstName" name="firstName" required />--%>
                        </div>
                        <div class="field">
                            <label for="lastName">Last name</label>
                            <asp:TextBox ID="txtlnm" name="lastName" placeholder="Enter last name" runat="server"></asp:TextBox>
                            <%--                            <input id="lastName" name="lastName" required />--%>
                        </div>
                    </div>
                    <div class="field">
                        <label for="email">Email</label>
                        <asp:TextBox ID="txteml" name="email" placeholder="Enter your email" runat="server"></asp:TextBox>
                        <%--                        <input id="email" name="email" type="email" required />--%>
                    </div>
                    <div class="field">
                        <label for="phone">Phone</label>
                        <asp:TextBox ID="txtnum" name="phone" placeholder="Enter phone number" runat="server"></asp:TextBox>
                        <%--                        <input id="email" name="email" type="email" required />--%>
                    </div>
                    <div class="row two">
                        <div class="field">
                            <label for="password">Password</label>
                            <asp:TextBox ID="txtpass" name="password" placeholder="Create a password" runat="server"></asp:TextBox>
                            <%--                            <input id="password" name="password" type="password" required />--%>
                        </div>
                        <div class="field">
                            <label for="confirm">Confirm password</label>
                            <asp:TextBox ID="txtcpass" name="confirmPassword" placeholder="Confirm your password" runat="server"></asp:TextBox>
                            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtpass" ControlToValidate="txtcpass" ErrorMessage="please enter both same password...."></asp:CompareValidator>
                            <%-- <input id="confirm" name="confirm" type="password" required />--%>
                        </div>
                    </div>
                    <div class="actions">
                        <asp:Button ID="submit" class="btn auth-btn" runat="server" Text="submit_Click" OnClick="submit_Click" />
                        <%--<button class="btn btn-primary" type="submit">Create account</button>--%>
                        <a class="btn" href="login.aspx">Back to login</a>
                    </div>
                </form>
            </div>
        </div>
    </body>
    </html>

    <%--<!doctype html>
    <html>
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1" /><title>Hospital Panel · Dashboard</title>
        <link rel="stylesheet" href="styles.css" />
    </head>
    <body>
        <div class="app">
            <aside class="sidebar">
                <div class="brand">
                    <div class="logo">
                    </div>
                    Hospital Panel</div>
                <nav class="nav">
                    <a class="active" href="index.html"><span class="i">🏠</span> Dashboard</a> <a href="book-appointment.html"><span class="i">🗓️</span> Book Appointment</a> <a href="my-appointments.html"><span class="i">📋</span> My Appointments</a> <a href="doctors.html"><span class="i">👩‍⚕️</span> Doctors</a> <a href="billing.html"><span class="i">💳</span> Billing</a>
                    <div class="sep">
                    </div>
                    <a href="profile.html"><span class="i">👤</span> Profile</a>
                </nav>
            </aside>
            <main class="content">
            <div class="topbar">
                <h2 class="page-title">Dashboard</h2>
                <div class="user-mini">
                    <div class="muted">
                        Welcome, User</div>
                    <a class="btn" href="logout.html">Logout</a>
                </div>
            </div>
            <section class="cards">
                <div class="card sm-6 lg-3">
                    <h3>Upcoming</h3>
                    <div class="stat">
                        2</div>
                    <div class="muted">
                        appointments</div>
                </div>
                <div class="card sm-6 lg-3">
                    <h3>Billed</h3>
                    <div class="stat">
                        $340</div>
                    <div class="muted">
                        this month</div>
                </div>
                <div class="card sm-6 lg-3">
                    <h3>Doctors</h3>
                    <div class="stat">
                        12</div>
                    <div class="muted">
                        available</div>
                </div>
                <div class="card sm-6 lg-3">
                    <h3>Reminders</h3>
                    <div class="stat">
                        3</div>
                    <div class="muted">
                        pending</div>
                </div>
            </section>
            <section class="card lg-6" style="margin-top:16px;">
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
                © 2025 Hospital Panel. All rights reserved.</div>
            </main>
        </div>
    </body>
    </html>--%>
</asp:Content>


