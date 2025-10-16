<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="doctor.aspx.cs" Inherits="HMS_Portel.doctor" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <!DOCTYPE html>
    <html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Doctors - Hospital Admin Panel</title>
        <link rel="stylesheet" href="styles.css">
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" rel="stylesheet">
        <style>
    /* General Admin Layout */
    body {
        font-family: Arial, sans-serif;
        margin: 0;
        padding: 0;
        background-color: #f4f6f9;
    }

    .admin-container {
        display: flex;
    }

    /* Sidebar */
    .sidebar {
        width: 220px;
        background-color: #006699;
        color: #fff;
        min-height: 100vh;
        position: fixed;
    }

    .sidebar-header {
        text-align: center;
        padding: 20px 10px;
        border-bottom: 1px solid #004466;
    }

    .sidebar-header i {
        font-size: 28px;
        margin-bottom: 10px;
    }

    .sidebar-header h2 {
        margin: 0;
        font-size: 18px;
    }

    .sidebar-menu {
        list-style: none;
        padding: 0;
        margin: 0;
    }

    .sidebar-menu .menu-item a {
        display: flex;
        align-items: center;
        padding: 12px 20px;
        color: #fff;
        text-decoration: none;
    }

    .sidebar-menu .menu-item.active a,
    .sidebar-menu .menu-item a:hover {
        background-color: #004466;
    }

    .sidebar-menu .menu-item i {
        margin-right: 10px;
    }

    .sidebar-footer {
        position: absolute;
        bottom: 20px;
        width: 100%;
        text-align: center;
    }

    .logout-btn {
        color: #fff;
        text-decoration: none;
        display: flex;
        justify-content: center;
        align-items: center;
    }

    .logout-btn i {
        margin-right: 5px;
    }

    /* Main Content */
    .main-content {
        margin-left: 220px;
        padding: 20px;
        width: 100%;
    }

    .top-header {
        display: flex;
        justify-content: space-between;
        align-items: center;
        margin-bottom: 20px;
    }

    .top-header h1 {
        margin: 0;
    }

    /* GridView Buttons */
    .btn-light-sky {
        background-color: lightskyblue;
        color: #fff;
        border: none;
        padding: 8px 16px;
        margin: 5px 10px 15px 0; /* gap between buttons */
        border-radius: 5px;
        cursor: pointer;
        font-weight: bold;
    }

    .btn-light-sky:hover {
        background-color: deepskyblue;
    }

    /* GridView Table */
    #<%= GridView1.ClientID %> {
        width: 100%;
        border-collapse: collapse;
        margin-top: 10px;
    }

    #<%= GridView1.ClientID %> th {
        background-color: #006699;
        color: #fff;
        padding: 10px;
        text-align: left;
        border: 1px solid #ccc;
    }

    #<%= GridView1.ClientID %> td {
        padding: 8px;
        border: 1px solid #ccc;
    }

    #<%= GridView1.ClientID %> tr:nth-child(even) {
        background-color: #f2f2f2;
    }

    #<%= GridView1.ClientID %> tr:hover {
        background-color: #d0e4f5;
    }

    /* Filters & Buttons wrapper */
    .filters-section {
        margin-bottom: 15px;
    }

    .filter-group {
        display: inline-block;
        margin-right: 15px;
    }

    .filter-select {
        padding: 5px;
        border-radius: 4px;
        border: 1px solid #ccc;
    }
</style>

    </head>
    <body>
        <div class="admin-container">
            <!-- Sidebar -->
            <nav class="sidebar">
                <div class="sidebar-header">
                    <i class="fas fa-hospital-alt"></i>
                    <h2>Hospital Admin</h2>
                </div>

                <ul class="sidebar-menu">
                    <li class="menu-item">
                        <a href="dashboard.aspx">
                            <i class="fas fa-tachometer-alt"></i>
                            <span>Dashboard</span>
                        </a>
                    </li>
                    <li class="menu-item active">
                        <a href="doctor.aspx">
                            <i class="fas fa-user-md"></i>
                            <span>Doctors</span>
                        </a>
                    </li>
                   <%-- <li class="menu-item">
                        <a href="patients.aspx">
                            <i class="fas fa-user-injured"></i>
                            <span>Patients</span>
                        </a>
                    </li>--%>
                    <li class="menu-item">
                        <a href="appointments.aspx">
                            <i class="fas fa-calendar-check"></i>
                            <span>Appointments</span>
                        </a>
                    </li>
                    <%--<li class="menu-item">
                        <a href="staff.html">
                            <i class="fas fa-user-nurse"></i>
                            <span>Staff/Nurses</span>
                        </a>
                    </li>--%>
                    <li class="menu-item">
                        <a href="billing.aspx">
                            <i class="fas fa-file-invoice-dollar"></i>
                            <span>Billing</span>
                        </a>
                    </li>
                    <li class="menu-item">
                        <a href="pharmacy.aspx">
                            <i class="fas fa-pills"></i>
                            <span>Pharmacy</span>
                        </a>
                    </li>
                    <%-- <li class="menu-item">
                        <a href="reports.html">
                            <i class="fas fa-chart-bar"></i>
                            <span>Reports</span>
                        </a>
                    </li>
                    <li class="menu-item">
                        <a href="settings.html">
                            <i class="fas fa-cog"></i>
                            <span>Settings</span>
                        </a>
                    </li>--%>
                </ul>

                <div class="sidebar-footer">
                    <a href="index.aspx" class="logout-btn">
                        <i class="fas fa-sign-out-alt"></i>
                        <span>Logout</span>
                    </a>
                </div>
            </nav>

            <!-- Main Content -->
            <main class="main-content">
                <header class="top-header">
                    <div class="header-left">
                        <button class="sidebar-toggle">
                            <i class="fas fa-bars"></i>
                        </button>
                        <h1>Doctors Management</h1>
                    </div>

                    <div class="header-right">
                        <div class="search-box">
                            <input type="text" placeholder="Search doctors...">
                            <i class="fas fa-search"></i>
                        </div>

                        <%--<button class="btn btn-primary" onclick="openAddDoctorModal()">
                        <asp:Button ID="Button1" runat="server" Text="Add Doctor" />
                            <i class="fas fa-plus"></i>
                            Add Doctor
                        </button>--%>
                    </div>
                </header>
</asp:Content>
<asp:Content ID="Content4" runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
    <div class="content-area">
        <!-- Filters -->
        <div class="filters-section">
            <div class="filter-group">
                <label>Specialization:</label>
                <select class="filter-select">
                    <option value="">All Specializations</option>
                    <option value="cardiology">Cardiology</option>
                    <option value="neurology">Neurology</option>
                    <option value="orthopedics">Orthopedics</option>
                    <option value="pediatrics">Pediatrics</option>
                    <option value="dermatology">Dermatology</option>
                </select>
            </div>

            <div class="filter-group">
                <label>Status:</label>
                <select class="filter-select">
                    <option value="">All Status</option>
                    <option value="active">Active</option>
                    <option value="inactive">Inactive</option>
                </select>
            </div>
           <asp:Button ID="Button1" runat="server" Text="Add Doctor" OnClick="Button1_Click" CssClass="btn-light-sky"/>
            <br />
            <asp:Button ID="Button2" runat="server" Text="Select Department" OnClick="Button2_Click" CssClass="btn-light-sky"/>
            <br />
            <center>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" OnRowCommand="GridView1_RowCommand">
                    <Columns>
                        <asp:TemplateField HeaderText="Id">
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("Id") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="First Name">
                            <ItemTemplate>
                                <asp:Label ID="Label2" runat="server" Text='<%# Eval("First_Name") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Last Name">
                            <ItemTemplate>
                                <asp:Label ID="Label3" runat="server" Text='<%# Eval("Last_Name") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Email">
                            <ItemTemplate>
                                <asp:Label ID="Label4" runat="server" Text='<%# Eval("Email") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Phone Number">
                            <ItemTemplate>
                                <asp:Label ID="Label5" runat="server" Text='<%# Eval("Phone") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Department">
                            <ItemTemplate>
                                <asp:Label ID="Label6" runat="server" Text='<%# Eval("Department") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Available_Time">
                            <ItemTemplate>
                                <asp:Label ID="Label7" runat="server" Text='<%# Eval("Available_Time") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Image">
                            <ItemTemplate>
                                <asp:Image ID="Image1" runat="server" Height="100" Width="100" ImageUrl='<%# Eval("Image") %>' />
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Delete">
                            <ItemTemplate>
                                <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%# Eval("Id") %>' CommandName="cmd_dlt">Delete</asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Edit">
                            <ItemTemplate>
                                <asp:LinkButton ID="LinkButton2" runat="server" CommandArgument='<%# Eval("Id") %>' CommandName="cmd_edt">Edit</asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
            </center>
            <%--<button class="btn btn-primary" onclick="openAddDoctorModal()">
                <i class="fas fa-plus"></i>
                Add Doctor
             </button>--%>
           <%--<button class="btn btn-outline">
                <i class="fas fa-filter"></i>
                Apply Filters
            </button>
        </div>

        <!-- Doctors Table -->
        <div class="table-container">
            <table class="data-table">
                <thead>
                    <tr>
                        <th>
                            <input type="checkbox" class="select-all">
                        </th>
                        <th>Doctor</th>
                        <th>Specialization</th>
                        <th>Contact</th>
                        <th>Experience</th>
                        <th>Status</th>
                        <th>Actions</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>
                            <input type="checkbox"></td>
                        <td>
                            <div class="doctor-info">
                                <img src="https://via.placeholder.com/40" alt="Dr. Smith">
                                <div>
                                    <h4>Dr. John Smith</h4>
                                    <span>ID: DOC001</span>
                                </div>
                            </div>
                        </td>
                        <td><span class="specialization">Cardiology</span></td>
                        <td>
                            <div class="contact-info">
                                <p><i class="fas fa-envelope"></i>john.smith@hospital.com</p>
                                <p><i class="fas fa-phone"></i>+1 (555) 123-4567</p>
                            </div>
                        </td>
                        <td>15 years</td>
                        <td><span class="status active">Active</span></td>
                        <td>
                            <div class="action-buttons">
                                <button class="btn-icon" onclick="viewDoctor(1)" title="View">
                                    <i class="fas fa-eye"></i>
                                </button>
                                <button class="btn-icon" onclick="editDoctor(1)" title="Edit">
                                    <i class="fas fa-edit"></i>
                                </button>
                                <button class="btn-icon danger" onclick="deleteDoctor(1)" title="Delete">
                                    <i class="fas fa-trash"></i>
                                </button>
                            </div>
                        </td>
                    </tr>

                    <tr>
                        <td>
                            <input type="checkbox"></td>
                        <td>
                            <div class="doctor-info">
                                <img src="https://via.placeholder.com/40" alt="Dr. Johnson">
                                <div>
                                    <h4>Dr. Sarah Johnson</h4>
                                    <span>ID: DOC002</span>
                                </div>
                            </div>
                        </td>
                        <td><span class="specialization">Neurology</span></td>
                        <td>
                            <div class="contact-info">
                                <p><i class="fas fa-envelope"></i>sarah.johnson@hospital.com</p>
                                <p><i class="fas fa-phone"></i>+1 (555) 234-5678</p>
                            </div>
                        </td>
                        <td>12 years</td>
                        <td><span class="status active">Active</span></td>
                        <td>
                            <div class="action-buttons">
                                <button class="btn-icon" onclick="viewDoctor(2)" title="View">
                                    <i class="fas fa-eye"></i>
                                </button>
                                <button class="btn-icon" onclick="editDoctor(2)" title="Edit">
                                    <i class="fas fa-edit"></i>
                                </button>
                                <button class="btn-icon danger" onclick="deleteDoctor(2)" title="Delete">
                                    <i class="fas fa-trash"></i>
                                </button>
                            </div>
                        </td>
                    </tr>

                    <tr>
                        <td>
                            <input type="checkbox"></td>
                        <td>
                            <div class="doctor-info">
                                <img src="https://via.placeholder.com/40" alt="Dr. Williams">
                                <div>
                                    <h4>Dr. Michael Williams</h4>
                                    <span>ID: DOC003</span>
                                </div>
                            </div>
                        </td>
                        <td><span class="specialization">Orthopedics</span></td>
                        <td>
                            <div class="contact-info">
                                <p><i class="fas fa-envelope"></i>michael.williams@hospital.com</p>
                                <p><i class="fas fa-phone"></i>+1 (555) 345-6789</p>
                            </div>
                        </td>
                        <td>8 years</td>
                        <td><span class="status inactive">Inactive</span></td>
                        <td>
                            <div class="action-buttons">
                                <button class="btn-icon" onclick="viewDoctor(3)" title="View">
                                    <i class="fas fa-eye"></i>
                                </button>
                                <button class="btn-icon" onclick="editDoctor(3)" title="Edit">
                                    <i class="fas fa-edit"></i>
                                </button>
                                <button class="btn-icon danger" onclick="deleteDoctor(3)" title="Delete">
                                    <i class="fas fa-trash"></i>
                                </button>
                            </div>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>

        <!-- Pagination -->
        <div class="pagination">
            <button class="btn btn-outline" disabled>
                <i class="fas fa-chevron-left"></i>
                Previous
            </button>
            <div class="pagination-numbers">
                <button class="btn btn-primary">1</button>
                <button class="btn btn-outline">2</button>
                <button class="btn btn-outline">3</button>
            </div>
            <button class="btn btn-outline">
                Next
                    <i class="fas fa-chevron-right"></i>
            </button>
        </div>
    </div>
    </main>
</div>--%>

            <!-- Add Doctor Modal -->
            <%-- <div id="addDoctorModal" class="modal">
        <div class="modal-content">
            <div class="modal-header">
                <h3>Add New Doctor</h3>
                <button class="modal-close" onclick="closeAddDoctorModal()">
                    <i class="fas fa-times"></i>
                </button>
            </div>

            <form class="modal-form" id="addDoctorForm">
                <div class="form-row">
                    <div class="form-group">
                        <label for="firstName">First Name</label>
                        <input type="text" id="firstName" name="firstName" required>
                    </div>
                    <div class="form-group">
                        <label for="lastName">Last Name</label>
                        <input type="text" id="lastName" name="lastName" required>
                    </div>
                </div>

                <div class="form-group">
                    <label for="specialization">Specialization</label>
                    <select id="specialization" name="specialization" required>
                        <option value="">Select Specialization</option>
                        <option value="cardiology">Cardiology</option>
                        <option value="neurology">Neurology</option>
                        <option value="orthopedics">Orthopedics</option>
                        <option value="pediatrics">Pediatrics</option>
                        <option value="dermatology">Dermatology</option>
                    </select>
                </div>

                <div class="form-group">
                    <label for="email">Email</label>
                    <input type="email" id="email" name="email" required>
                </div>

                <div class="form-group">
                    <label for="phone">Phone</label>
                    <input type="tel" id="phone" name="phone" required>
                </div>

                <div class="form-group">
                    <label for="experience">Years of Experience</label>
                    <input type="number" id="experience" name="experience" min="0" required>
                </div>

                <div class="form-group">
                    <label for="qualification">Qualifications</label>
                    <textarea id="qualification" name="qualification" rows="3"></textarea>
                </div>

                <div class="modal-actions">
                    <button type="button" class="btn btn-outline" onclick="closeAddDoctorModal()">Cancel</button>
                    <button type="submit" class="btn btn-primary">Add Doctor</button>
                </div>
            </form>
        </div>
    </div>--%>
            <%--<!DOCTYPE html>
                <html>
                <head>
                    <meta charset="UTF-8">
                    <meta name="viewport" content="width=device-width, initial-scale=1.0"><title>Dashboard - Hospital Admin Panel</title>
                    <link rel="stylesheet" href="styles.css">
                    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" rel="stylesheet">
                </head>
                <body>
                    <div class="admin-container">
                        <!-- Sidebar -->
                        <nav class="sidebar">
                            <div class="sidebar-header">
                                <i class="fas fa-hospital-alt"></i>
                                <h2>Hospital Admin</h2>
                            </div>
                            <ul class="sidebar-menu">
                                <li class="menu-item active"><a href="dashboard.html"><i class="fas fa-tachometer-alt"></i><span>Dashboard</span> </a></li>
                                <li class="menu-item"><a href="doctors.html"><i class="fas fa-user-md"></i><span>Doctors</span> </a></li>
                                <li class="menu-item"><a href="patients.html"><i class="fas fa-user-injured"></i><span>Patients</span> </a></li>
                                <li class="menu-item"><a href="appointments.html"><i class="fas fa-calendar-check"></i><span>Appointments</span> </a></li>
                                <li class="menu-item"><a href="staff.html"><i class="fas fa-user-nurse"></i><span>Staff/Nurses</span> </a></li>
                                <li class="menu-item"><a href="billing.html"><i class="fas fa-file-invoice-dollar"></i><span>Billing</span> </a></li>
                                <li class="menu-item"><a href="pharmacy.html"><i class="fas fa-pills"></i><span>Pharmacy</span> </a></li>
                                <li class="menu-item"><a href="reports.html"><i class="fas fa-chart-bar"></i><span>Reports</span> </a></li>
                                <li class="menu-item"><a href="settings.html"><i class="fas fa-cog"></i><span>Settings</span> </a></li>
                            </ul>
                            <div class="sidebar-footer">
                                <a href="index.html" class="logout-btn"><i class="fas fa-sign-out-alt"></i><span>Logout</span> </a>
                            </div>
                        </nav>

                        <!-- Main Content -->
                        <main class="main-content">
                        <header class="top-header">
                            <div class="header-left">
                                <button class="sidebar-toggle">
                                    <i class="fas fa-bars"></i>
                                </button>
                                <h1>Dashboard</h1>
                            </div>
                            <div class="header-right">
                                <div class="search-box">
                                    <input type="text" placeholder="Search..."> <i class="fas fa-search"></i>
                                </div>
                                <div class="notifications">
                                    <i class="fas fa-bell"></i><span class="notification-badge">3</span>
                                </div>
                                <div class="user-profile">
                                    <img src="https://via.placeholder.com/40" alt="Profile"> <span>Admin User</span>
                                </div>
                            </div>
                        </header>
                    </div>--%>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content5" runat="server" ContentPlaceHolderID="ContentPlaceHolder2">

    <%-- <div class="content-area">
                    <!-- Stats Cards -->
                    <div class="stats-grid">
                        <div class="stat-card">
                            <div class="stat-icon">
                                <i class="fas fa-user-injured"></i>
                            </div>
                            <div class="stat-info">
                                <h3>Total Patients</h3>
                                <span class="stat-number">1,247</span> <span class="stat-change positive">+12% this month</span>
                            </div>
                        </div>
                        <div class="stat-card">
                            <div class="stat-icon">
                                <i class="fas fa-user-md"></i>
                            </div>
                            <div class="stat-info">
                                <h3>Active Doctors</h3>
                                <span class="stat-number">48</span> <span class="stat-change positive">+3 this month</span>
                            </div>
                        </div>
                        <div class="stat-card">
                            <div class="stat-icon">
                                <i class="fas fa-calendar-check"></i>
                            </div>
                            <div class="stat-info">
                                <h3>Today's Appointments</h3>
                                <span class="stat-number">89</span> <span class="stat-change neutral">Same as yesterday</span>
                            </div>
                        </div>
                        <div class="stat-card">
                            <div class="stat-icon">
                                <i class="fas fa-dollar-sign"></i>
                            </div>
                            <div class="stat-info">
                                <h3>Monthly Revenue</h3>
                                <span class="stat-number">$45,678</span> <span class="stat-change positive">+8% this month</span>
                            </div>
                        </div>
        </div>

                    <!-- Charts and Tables -->
                    <div class="dashboard-grid">
                        <div class="chart-container">
                            <div class="chart-header">
                                <h3>Appointment Trends</h3>
                                <div class="chart-controls">
                                    <button class="btn btn-outline">
                                        Week
                                    </button>
                                    <button class="btn btn-primary">
                                        Month
                                    </button>
                                    <button class="btn btn-outline">
                                        Year
                                    </button>
                                </div>
                            </div>
                            <div class="chart-placeholder">
                                <i class="fas fa-chart-line"></i>
                                <p>
                                    Chart visualization would go here</p>
                            </div>
                        </div>
                        <div class="recent-activity">
                            <div class="activity-header">
                                <h3>Recent Activity</h3>
                                <a href="#" class="view-all">View All</a>
                            </div>
                            <div class="activity-list">
                                <div class="activity-item">
                                    <div class="activity-icon">
                                        <i class="fas fa-plus-circle"></i>
                                    </div>
                                    <div class="activity-content">
                                        <p>
                                            New patient registered: John Doe</p>
                                        <span class="activity-time">2 minutes ago</span>
                                    </div>
                                </div>
                                <div class="activity-item">
                                    <div class="activity-icon">
                                        <i class="fas fa-calendar-plus"></i>
                                    </div>
                                    <div class="activity-content">
                                        <p>
                                            Appointment scheduled with Dr. Smith</p>
                                        <span class="activity-time">15 minutes ago</span>
                                    </div>
                                </div>
                                <div class="activity-item">
                                    <div class="activity-icon">
                                        <i class="fas fa-user-md"></i>
                                    </div>
                                    <div class="activity-content">
                                        <p>
                                            Dr. Johnson completed consultation</p>
                                        <span class="activity-time">1 hour ago</span>
                                    </div>
                                </div>
                                <div class="activity-item">
                                    <div class="activity-icon">
                                        <i class="fas fa-file-invoice"></i>
                                    </div>
                                    <div class="activity-content">
                                        <p>
                                            Payment received for consultation</p>
                                        <span class="activity-time">2 hours ago</span>
                                    </div>
                                </div>
                            </div>
                        </div>
        </div>

                    <!-- Quick Actions -->
                    <div class="quick-actions">
                        <h3>Quick Actions</h3>
                        <div class="action-buttons">
                            <a href="appointments.html" class="action-btn"><i class="fas fa-plus"></i><span>New Appointment</span> </a><a href="patients.html" class="action-btn"><i class="fas fa-user-plus"></i><span>Add Patient</span> </a><a href="doctors.html" class="action-btn"><i class="fas fa-user-md"></i><span>Add Doctor</span> </a><a href="billing.html" class="action-btn"><i class="fas fa-file-invoice"></i><span>Create Bill</span> </a>
                        </div>
        </div>
    </div>
            </main>
        </div>
    --%>
</asp:Content>

