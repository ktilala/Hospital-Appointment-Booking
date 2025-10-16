<%@ Page Title="" Language="C#" MasterPageFile="~/User/Site2.Master" AutoEventWireup="true" CodeBehind="book-appointment.aspx.cs" Inherits="HMS_Portel.User.book_appointment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
  </asp:Content>
<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="ContentPlaceHolder1">

    <!doctype html>
    <html>
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1" />
        <title>Hospital Panel · Book Appointment</title>
        <link rel="stylesheet" href="styles.css" />
        <style>
  /* General Body */
  body {
      font-family: Arial, sans-serif;
      margin: 0;
      padding: 0;
      background-color: #f4f6f9;
  }

  /* App Layout */
  .app {
      display: flex;
      min-height: 100vh;
  }

  /* Sidebar */
  .sidebar {
      width: 220px;
      background-color: #006699;
      color: #fff;
      flex-shrink: 0;
      display: flex;
      flex-direction: column;
      padding-top: 20px;
  }

  .sidebar .brand {
      text-align: center;
      font-size: 18px;
      font-weight: bold;
      margin-bottom: 20px;
  }

  .sidebar .nav {
      display: flex;
      flex-direction: column;
  }

  .sidebar .nav a {
      color: #fff;
      text-decoration: none;
      padding: 12px 20px;
      display: flex;
      align-items: center;
      font-size: 15px;
  }

  .sidebar .nav a.active,
  .sidebar .nav a:hover {
      background-color: #004466;
  }

  .sidebar .nav .i {
      margin-right: 10px;
  }

  .sidebar .sep {
      border-top: 1px solid #004466;
      margin: 10px 0;
  }

  /* Main content */
  .content {
      flex-grow: 1;
      padding: 20px;
  }

  .topbar {
      display: flex;
      justify-content: space-between;
      align-items: center;
      margin-bottom: 20px;
  }

  .topbar .page-title {
      margin: 0;
  }

  .topbar .user-mini {
      display: flex;
      align-items: center;
      gap: 10px;
  }

  .topbar .user-mini .btn {
      background-color: lightskyblue;
      color: white;
      padding: 6px 14px;
      border: none;
      border-radius: 5px;
      text-decoration: none;
      cursor: pointer;
      font-weight: bold;
  }

  .topbar .user-mini .btn:hover {
      background-color: deepskyblue;
  }

  /* Form Table */
  table {
      width: 100%;
      max-width: 600px;
      margin: 0 auto;
      border-collapse: collapse;
      background-color: #fff;
      box-shadow: 0px 2px 6px rgba(0,0,0,0.1);
      border-radius: 8px;
      overflow: hidden;
  }

  table td {
      padding: 10px;
      border-bottom: 1px solid #ccc;
  }

  table td:first-child {
      font-weight: bold;
      width: 40%;
      background-color: #f0f4f8;
  }

  table tr:last-child td {
      border-bottom: none;
      text-align: center;
  }

  /* Inputs */
  input[type="text"], input[type="email"], input[type="tel"], select {
      width: 95%;
      padding: 6px 8px;
      border: 1px solid #ccc;
      border-radius: 5px;
      box-sizing: border-box;
  }

  /* Buttons inside table */
  input[type="submit"], .btn {
      background-color: lightskyblue;
      color: white;
      padding: 8px 18px;
      border: none;
      border-radius: 5px;
      cursor: pointer;
      font-weight: bold;
      text-decoration: none;
  }

  input[type="submit"]:hover, .btn:hover {
      background-color: deepskyblue;
  }

  /* Footer */
  .footer {
      text-align: center;
      margin-top: 20px;
      color: #666;
      font-size: 14px;
  }
</style>

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
                    <h2 class="page-title">Book an Appointment</h2>
                    <div class="user-mini">
                        <div class="muted">User</div>
                        <a class="btn" href="logout.aspx">Logout</a>
                    </div>
                </div>

                <form class="form" action="my-appointments.aspx" method="get">
                    <div class="row two">
                        <center>
                            <table border="3">
                                <tr>
                                    <td>Name:</td>
                                    <td>
                                        <asp:TextBox ID="txtnm" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Email:</td>
                                    <td>
                                        <asp:TextBox ID="txtem" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Phone:</td>
                                    <td>
                                        <asp:TextBox ID="txtpn" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Department</td>
                                    <td>
                                        <asp:DropDownList ID="dldt" runat="server">
                                            <asp:ListItem>--- Select Department ---</asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Doctor</td>
                                    <td>
                                        <asp:DropDownList ID="dldr" runat="server">
                                            <asp:ListItem>--- Select Doctor ---</asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Date:</td>
                                    <td>
                                        <asp:TextBox ID="txtda" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Time:</td>
                                    <td>
                                        <asp:TextBox ID="txtti" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <td>
                                            <asp:Button ID="Button1" runat="server" Text="Confirm Booking" OnClick="Button1_Click" CssClass="btn"/>
                                        </td>
                                    </td>
                                </tr>
                            </table>
                        </center>
                        <%--<label for="Name">Name</label>
                        <asp:TextBox ID="txtnm" runat="server"></asp:TextBox>

                        <div class="field">
                            <label for="department">Department</label>
                            <select id="department" name="department" required>
                                <option value="">Select department</option>
                                <option>Cardiology</option>
                                <option>Dermatology</option>
                                <option>Pediatrics</option>
                                <option>Orthopedics</option>
                            </select>
                        </div>
                        <div class="field">
                            <label for="doctor">Doctor</label>
                            <select id="doctor" name="doctor" required>
                                <option value="">Choose doctor</option>
                                <option>Dr. Jane Doe</option>
                                <option>Dr. John Smith</option>
                                <option>Dr. Emily Clark</option>
                            </select>
                        </div>
                    </div>
                    <div class="row two">
                        <div class="field">
                            <label for="date">Date</label>
                            <input id="date" name="date" type="date" required />
                        </div>
                        <div class="field">
                            <label for="time">Time</label>
                            <input id="time" name="time" type="time" required />
                        </div>
                    </div>
                    <%--<div class="field">
                        <label for="reason">Reason</label>
                        <textarea id="reason" name="reason" placeholder="Describe your symptoms or reason for visit"></textarea>
                    </div>--%>
                        <div class="actions">
                            <%--<button class="btn btn-primary" type="submit">Book Appointment</button>--%>
                            <a class="btn" href="doctors.aspx">Find Doctors</a>
                        </div>
                </form>

                <div class="footer">Need help? Email support@hospital.example</div>
            </main>
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

