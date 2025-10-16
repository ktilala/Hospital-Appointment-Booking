<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="HMS_Portel.index" %>

<%--<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>--%>
<asp:Content ID="Content4" runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
    <!DOCTYPE html>
    <html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Hospital Admin Panel - Login</title>
        <link rel="stylesheet" href="styles.css">
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" rel="stylesheet">
    </head>
    <body>
        <center>
            <div class="login-container">
                <div class="login-card">
                    <div class="login-header">
                        <i class="fas fa-hospital-alt"></i>
                        <h1>Hospital Admin</h1>
                        <p>Sign in to your account</p>
                    </div>

                    <form class="login-form" id="loginForm">
                        <div class="form-group">
                            <label for="email">Email Address</label>
                            <asp:TextBox ID="txteml" placeholder="Enter your email" runat="server"></asp:TextBox>
                            <i class="fas fa-envelope"></i>
                        </div>

                        <div class="form-group">
                            <label for="password">Password</label>
                            <asp:TextBox ID="txtpass" placeholder="Enter your password" runat="server"></asp:TextBox>
                            <i class="fas fa-lock"></i>
                        </div>

                        <div class="form-options">
                            <label class="remember-me">
                                <input type="checkbox" id="remember">
                                <span class="checkmark"></span>
                                Remember me
                            </label>
                            <a href="#" class="forgot-password">Forgot Password?</a>
                        </div>

                     <%--   <button type="submit" class="login-btn">
                            <span>Sign In</span>
                            <i class="fas fa-arrow-right"></i>
                        </button>--%>

                    <asp:Button ID="Button1" class="btn auth-btn" runat="server" Text="Sign In" OnClick="Button1_Click" />

                        <div class="login-footer">
                            <p>Don't have an account? <a href="register.aspx">Sign up here</a></p>
                        </div>
                    </form>
                </div>
            </div>
        </center>
        <%-- <!DOCTYPE html>
    <html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Dashboard - Hospital Admin Panel</title>
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
                            <input type="text" placeholder="Search...">
                            <i class="fas fa-search"></i>
                        </div>
                        <div class="notifications">
                            <i class="fas fa-bell"></i><span class="notification-badge">3</span>
                        </div>
                        <div class="user-profile">
                            <img src="https://via.placeholder.com/40" alt="Profile">
                            <span>Admin User</span>
                        </div>
                    </div>
                </header>
        </div>--%>
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
                        Chart visualization would go here
                    </p>
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
                                New patient registered: John Doe
                            </p>
                            <span class="activity-time">2 minutes ago</span>
                        </div>
                    </div>
                    <div class="activity-item">
                        <div class="activity-icon">
                            <i class="fas fa-calendar-plus"></i>
                        </div>
                        <div class="activity-content">
                            <p>
                                Appointment scheduled with Dr. Smith
                            </p>
                            <span class="activity-time">15 minutes ago</span>
                        </div>
                    </div>
                    <div class="activity-item">
                        <div class="activity-icon">
                            <i class="fas fa-user-md"></i>
                        </div>
                        <div class="activity-content">
                            <p>
                                Dr. Johnson completed consultation
                            </p>
                            <span class="activity-time">1 hour ago</span>
                        </div>
                    </div>
                    <div class="activity-item">
                        <div class="activity-icon">
                            <i class="fas fa-file-invoice"></i>
                        </div>
                        <div class="activity-content">
                            <p>
                                Payment received for consultation
                            </p>
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

