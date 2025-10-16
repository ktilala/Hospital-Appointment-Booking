<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="appointments.aspx.cs" Inherits="HMS_Portel.appointments" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <!DOCTYPE html>
    <html>
    <head>

        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Appointments - Hospital Admin Panel</title>
        <link rel="stylesheet" href="styles.css">
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" rel="stylesheet">
        <style>
            /* GridView styling */
            .appointments-grid {
                width: 90%;
                border-collapse: collapse;
                margin: 20px auto;
                font-family: Arial, sans-serif;
            }

                .appointments-grid th {
                    background-color: #006699;
                    color: #fff;
                    padding: 10px;
                    text-align: left;
                    border: 1px solid #ccc;
                }

                .appointments-grid td {
                    padding: 8px;
                    border: 1px solid #ccc;
                }

                .appointments-grid tr:nth-child(even) {
                    background-color: #f2f2f2;
                }

                .appointments-grid tr:hover {
                    background-color: #d0e4f5;
                }

                .appointments-grid label {
                    display: block;
                    font-weight: normal;
                }

            /* Buttons styling */
            .btn-light-sky {
                background-color: lightskyblue;
                color: #fff;
                border: none;
                padding: 8px 16px;
                margin: 5px 5px 15px 0; /* small gap between buttons */
                border-radius: 5px;
                cursor: pointer;
                font-weight: bold;
            }

                .btn-light-sky:hover {
                    background-color: deepskyblue;
                }

            /* Wrapper for buttons */
            .grid-header {
                width: 90%;
                margin: 20px auto 0 auto; /* top margin */
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
                    <li class="menu-item">
                        <a href="doctor.aspx">
                            <i class="fas fa-user-md"></i>
                            <span>Doctors</span>
                        </a>
                    </li>
                    <%--<li class="menu-item">
                        <a href="patients.aspx">
                            <i class="fas fa-user-injured"></i>
                            <span>Patients</span>
                        </a>
                    </li>--%>
                    <li class="menu-item active">
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
                    <%--<li class="menu-item">
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
                        <h1>Appointments Management</h1>
                    </div>

                    <div class="header-right">
                        <div class="search-box">
                            <input type="text" placeholder="Search appointments...">
                            <i class="fas fa-search"></i>
                        </div>

                        <%-- <button class="btn btn-primary" onclick="openAddAppointmentModal()">
                        <i class="fas fa-plus"></i>
                        Book Appointment
                    </button>--%>
                        <%--                        <asp:Button ID="Button1" runat="server" Text="Book Appointment" OnClick="Button1_Click" />--%>
                    </div>
                </header>

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
<asp:Content ID="Content4" runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
    <div class="content-area">

        <!-- Stats Cards -->
        <%--<div class="stats-grid">
             <div class="stat-card">
                <div class="stat-icon">
                    <i class="fas fa-calendar-check"></i>
                </div>
             <div class="stat-info">
                    <h3>Today's Appointments</h3>
                    <span class="stat-number">89</span>
                </div>--%>
    </div>

    <%--<div class="stat-card">
                <div class="stat-icon">
                    <i class="fas fa-clock"></i>
                </div>
                <div class="stat-info">
                    <h3>Pending</h3>
                    <span class="stat-number">23</span>
                </div>
            </div>

            <div class="stat-card">
                <div class="stat-icon">
                    <i class="fas fa-check-circle"></i>
                </div>
                <div class="stat-info">
                    <h3>Completed</h3>
                    <span class="stat-number">45</span>
                </div>
            </div>

            <div class="stat-card">
                <div class="stat-icon">
                    <i class="fas fa-times-circle"></i>
                </div>
                <div class="stat-info">
                    <h3>Cancelled</h3>
                    <span class="stat-number">8</span>
                </div>
            </div>
        </div>

        <!-- Calendar View Toggle -->
        <div class="view-toggle">
            <button class="btn btn-primary active" onclick="showTableView()">
                <i class="fas fa-table"></i>
                Table View
            </button>
            <button class="btn btn-outline" onclick="showCalendarView()">
                <i class="fas fa-calendar-alt"></i>
                Calendar View
            </button>
        </div>--%>

    <!-- Filters -->
    <%-- <div class="filters-section">
            <div class="filter-group">
                <label>Date Range:</label>
                <input type="date" class="filter-input" value="2024-01-15">
                <span>to</span>
                <input type="date" class="filter-input" value="2024-01-22">
            </div>

            <div class="filter-group">
                <label>Status:</label>
                <select class="filter-select">
                    <option value="">All Status</option>
                    <option value="scheduled">Scheduled</option>
                    <option value="confirmed">Confirmed</option>
                    <option value="completed">Completed</option>
                    <option value="cancelled">Cancelled</option>
                </select>
            </div>

            <div class="filter-group">
                <label>Doctor:</label>
                <select class="filter-select">
                    <option value="">All Doctors</option>
                    <option value="doc001">Dr. John Smith</option>
                    <option value="doc002">Dr. Sarah Johnson</option>
                    <option value="doc003">Dr. Michael Williams</option>
                </select>
            </div>--%>

    <%-- <button class="btn btn-outline">
                <i class="fas fa-filter"></i>
                Apply Filters
            </button>--%>
        </div>
    <center>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" OnRowCommand="GridView1_RowCommand" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" CssClass="appointments-grid">
            <Columns>
                <asp:TemplateField HeaderText="ID">
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("Id") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Patient">
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("Name") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Doctor">
                    <ItemTemplate>
                        <asp:Label ID="Label3" runat="server" Text='<%# Eval("Doctor") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Date ">
                    <ItemTemplate>
                        <asp:Label ID="Label4" runat="server" Text='<%# Eval("Date") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Time">
                    <ItemTemplate>
                        <asp:Label ID="Label5" runat="server" Text='<%# Eval("Time") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
        <asp:Button ID="Button1" runat="server" Text="Confirm" OnClick="Button1_Click1" CssClass="btn-light-sky" />
        <asp:Button ID="Button2" runat="server" Text="Cancle" OnClick="Button2_Click" CssClass="btn-light-sky" />
    </center>
    <!-- Table View -->
    <%-- <div id="tableView" class="table-container">
            <table class="data-table">
                <thead>
                    <tr>
                        <th>
                            <input type="checkbox" class="select-all">
                        </th>
                        <th>Appointment ID</th>
                        <th>Patient</th>
                        <th>Doctor</th>
                        <th>Date & Time</th>
                        <th>Type</th>
                        <th>Status</th>
                        <th>Actions</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>
                            <input type="checkbox"></td>
                        <td>APT001</td>
                        <td>
                            <div class="patient-info">
                                <img src="https://via.placeholder.com/40" alt="John Doe">
                                <div>
                                    <h4>John Doe</h4>
                                    <span>PAT001</span>
                                </div>
                            </div>
                        </td>
                        <td>
                            <div class="doctor-info">
                                <img src="https://via.placeholder.com/40" alt="Dr. Smith">
                                <div>
                                    <h4>Dr. John Smith</h4>
                                    <span>Cardiology</span>
                                </div>
                            </div>
                        </td>
                        <td>
                            <div class="datetime-info">
                                <p><strong>Jan 15, 2024</strong></p>
                                <p>10:00 AM - 10:30 AM</p>
                            </div>
                        </td>
                        <td><span class="appointment-type">Consultation</span></td>
                        <td><span class="status scheduled">Scheduled</span></td>
                        <td>
                            <div class="action-buttons">
                                <button class="btn-icon" onclick="viewAppointment(1)" title="View">
                                    <i class="fas fa-eye"></i>
                                </button>
                                <button class="btn-icon" onclick="editAppointment(1)" title="Edit">
                                    <i class="fas fa-edit"></i>
                                </button>
                                <button class="btn-icon" onclick="confirmAppointment(1)" title="Confirm">
                                    <i class="fas fa-check"></i>
                                </button>
                                <button class="btn-icon danger" onclick="cancelAppointment(1)" title="Cancel">
                                    <i class="fas fa-times"></i>
                                </button>
                            </div>
                        </td>
                    </tr>

                    <tr>
                        <td>
                            <input type="checkbox"></td>
                        <td>APT002</td>
                        <td>
                            <div class="patient-info">
                                <img src="https://via.placeholder.com/40" alt="Jane Smith">
                                <div>
                                    <h4>Jane Smith</h4>
                                    <span>PAT002</span>
                                </div>
                            </div>
                        </td>
                        <td>
                            <div class="doctor-info">
                                <img src="https://via.placeholder.com/40" alt="Dr. Johnson">
                                <div>
                                    <h4>Dr. Sarah Johnson</h4>
                                    <span>Neurology</span>
                                </div>
                            </div>
                        </td>
                        <td>
                            <div class="datetime-info">
                                <p><strong>Jan 15, 2024</strong></p>
                                <p>11:00 AM - 11:30 AM</p>
                            </div>
                        </td>
                        <td><span class="appointment-type">Follow-up</span></td>
                        <td><span class="status confirmed">Confirmed</span></td>
                        <td>
                            <div class="action-buttons">
                                <button class="btn-icon" onclick="viewAppointment(2)" title="View">
                                    <i class="fas fa-eye"></i>
                                </button>
                                <button class="btn-icon" onclick="editAppointment(2)" title="Edit">
                                    <i class="fas fa-edit"></i>
                                </button>
                                <button class="btn-icon" onclick="completeAppointment(2)" title="Complete">
                                    <i class="fas fa-check-circle"></i>
                                </button>
                                <button class="btn-icon danger" onclick="cancelAppointment(2)" title="Cancel">
                                    <i class="fas fa-times"></i>
                                </button>
                            </div>
                        </td>
                    </tr>

                    <tr>
                        <td>
                            <input type="checkbox"></td>
                        <td>APT003</td>
                        <td>
                            <div class="patient-info">
                                <img src="https://via.placeholder.com/40" alt="Mike Johnson">
                                <div>
                                    <h4>Mike Johnson</h4>
                                    <span>PAT003</span>
                                </div>
                            </div>
                        </td>
                        <td>
                            <div class="doctor-info">
                                <img src="https://via.placeholder.com/40" alt="Dr. Williams">
                                <div>
                                    <h4>Dr. Michael Williams</h4>
                                    <span>Orthopedics</span>
                                </div>
                            </div>
                        </td>
                        <td>
                            <div class="datetime-info">
                                <p><strong>Jan 14, 2024</strong></p>
                                <p>2:00 PM - 2:30 PM</p>
                            </div>
                        </td>
                        <td><span class="appointment-type">Consultation</span></td>
                        <td><span class="status completed">Completed</span></td>
                        <td>
                            <div class="action-buttons">
                                <button class="btn-icon" onclick="viewAppointment(3)" title="View">
                                    <i class="fas fa-eye"></i>
                                </button>
                                <button class="btn-icon" onclick="editAppointment(3)" title="Edit">
                                    <i class="fas fa-edit"></i>
                                </button>
                                <button class="btn-icon" onclick="addFollowUp(3)" title="Add Follow-up">
                                    <i class="fas fa-plus"></i>
                                </button>
                                <button class="btn-icon" onclick="generateReport(3)" title="Generate Report">
                                    <i class="fas fa-file-alt"></i>
                                </button>
                            </div>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>--%>
    <!-- Calendar View -->
    <%--  <div id="calendarView" class="calendar-container" style="display: none;">
            <div class="calendar-header">
                <button class="btn btn-outline">
                    <i class="fas fa-chevron-left"></i>
                </button>
                <h3>January 2024-right"></i>
                </button>
            </div>

            <div class="calendar-grid">
                <div class="calendar-daynames">
                    <div>Sun</div>
                    <div>Mon</div>
                    <div>Tue</div>
                    <div>Wed</div>
                    <div>Thu</div>
                    <div>Fri</div>
                    <div>Sat</div>
                </div>

                <div class="calendar-days">
                    <div class="calendar-day other-month">31</div>
                    <div class="calendar-day">
                        1
                                <div class="appointment-dot"></div>
                    </div>
                    <div class="calendar-day">
                        2
                                <div class="appointment-dot"></div>
                        <div class="appointment-dot"></div>
                    </div>
                    <div class="calendar-day">3</div>
                    <div class="calendar-day">4</div>
                    <div class="calendar-day">5</div>
                    <div class="calendar-day">6</div>
                    <div class="calendar-day">7</div>
                    <div class="calendar-day">8</div>
                    <div class="calendar-day">9</div>
                    <div class="calendar-day">10</div>
                    <div class="calendar-day">11</div>
                    <div class="calendar-day">12</div>
                    <div class="calendar-day">13</div>
                    <div class="calendar-day">14</div>
                    <div class="calendar-day">15</div>
                    <div class="calendar-day">16</div>
                    <div class="calendar-day">17</div>
                    <div class="calendar-day">18</div>
                    <div class="calendar-day">19</div>
                    <div class="calendar-day">20</div>
                    <div class="calendar-day">21</div>
                    <div class="calendar-day">22</div>
                    <div class="calendar-day">23</div>
                    <div class="calendar-day">24</div>
                    <div class="calendar-day">25</div>
                    <div class="calendar-day">26</div>
                    <div class="calendar-day">27</div>
                    <div class="calendar-day">28</div>
                    <div class="calendar-day">29</div>
                    <div class="calendar-day">30</div>
                    <div class="calendar-day">31</div>
                </div>
            </div>
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
    </div>
    
    <!-- Add Appointment Modal -->
    <div id="addAppointmentModal" class="modal">
        <div class="modal-content">
            <div class="modal-header">
                <h3>Book New Appointment</h3>
                <button class="modal-close" onclick="closeAddAppointmentModal()">
                    <i class="fas fa-times"></i>
                </button>
            </div>

            <form class="modal-form" id="addAppointmentForm">
                <div class="form-group">
                    <label for="patient">Select Patient</label>
                    <select id="patient" name="patient" required>
                        <option value="">Select Patient</option>
                        <option value="pat001">John Doe (PAT001)</option>
                        <option value="pat002">Jane Smith (PAT002)</option>
                        <option value="pat003">Mike Johnson (PAT003)</option>
                    </select>
                </div>

                <div class="form-group">
                    <label for="doctor">Select Doctor</label>
                    <select id="doctor" name="doctor" required>
                        <option value="">Select Doctor</option>
                        <option value="doc001">Dr. John Smith (Cardiology)</option>
                        <option value="doc002">Dr. Sarah Johnson (Neurology)</option>
                        <option value="doc003">Dr. Michael Williams (Orthopedics)</option>
                    </select>
                </div>

                <div class="form-row">
                    <div class="form-group">
                        <label for="appointmentDate">Date</label>
                        <input type="date" id="appointmentDate" name="appointmentDate" required>
                    </div>
                    <div class="form-group">
                        <label for="appointmentTime">Time</label>
                        <input type="time" id="appointmentTime" name="appointmentTime" required>
                    </div>
                </div>

                <div class="form-group">
                    <label for="appointmentType">Appointment Type</label>
                    <select id="appointmentType" name="appointmentType" required>
                        <option value="">Select Type</option>
                        <option value="consultation">Consultation</option>
                        <option value="follow-up">Follow-up</option>
                        <option value="checkup">Checkup</option>
                        <option value="emergency">Emergency</option>
                    </select>
                </div>

                <div class="form-group">
                    <label for="notes">Notes</label>
                    <textarea id="notes" name="notes" rows="3" placeholder="Any additional notes..."></textarea>
                </div>

                <div class="modal-actions">
                    <button type="button" class="btn btn-outline" onclick="closeAddAppointmentModal()">Cancel</button>
                    <button type="submit" class="btn btn-primary">Book Appointment</button>
                </div>
            </form>
        </div>
    </div>--%>
</asp:Content>

<asp:Content ID="Content5" runat="server" ContentPlaceHolderID="ContentPlaceHolder2">
    <%--  <div class="content-area">
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
        </div>--%>
</asp:Content>



