<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="patients.aspx.cs" Inherits="HMS_Portel.patients" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <!DOCTYPE html>
    <html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Patients - Hospital Admin Panel</title>
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
                   <%-- <li class="menu-item active">
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
                        <h1>Patients Management</h1>
                    </div>

                    <div class="header-right">
                        <div class="search-box">
                            <input type="text" placeholder="Search patients...">
                            <i class="fas fa-search"></i>
                        </div>

                        <button class="btn btn-primary" onclick="openAddPatientModal()">
                            <i class="fas fa-plus"></i>
                            Add Patient
                        </button>
                    </div>
                </header>
</asp:Content>
<asp:Content ID="Content4" runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
    <div class="content-area">
        <!-- Stats Cards -->
        <div class="stats-grid">
            <div class="stat-card">
                <div class="stat-icon">
                    <i class="fas fa-user-injured"></i>
                </div>
                <div class="stat-info">
                    <h3>Total Patients</h3>
                    <span class="stat-number">1,247</span>
                </div>
            </div>

            <div class="stat-card">
                <div class="stat-icon">
                    <i class="fas fa-bed"></i>
                </div>
                <div class="stat-info">
                    <h3>Admitted</h3>
                    <span class="stat-number">23</span>
                </div>
            </div>

            <div class="stat-card">
                <div class="stat-icon">
                    <i class="fas fa-calendar-check"></i>
                </div>
                <div class="stat-info">
                    <h3>Appointments Today</h3>
                    <span class="stat-number">89</span>
                </div>
            </div>

            <div class="stat-card">
                <div class="stat-icon">
                    <i class="fas fa-clock"></i>
                </div>
                <div class="stat-info">
                    <h3>Waiting</h3>
                    <span class="stat-number">12</span>
                </div>
            </div>
        </div>

        <!-- Filters -->
        <div class="filters-section">
            <div class="filter-group">
                <label>Status:</label>
                <select class="filter-select">
                    <option value="">All Status</option>
                    <option value="active">Active</option>
                    <option value="admitted">Admitted</option>
                    <option value="discharged">Discharged</option>
                </select>
            </div>

            <div class="filter-group">
                <label>Age Group:</label>
                <select class="filter-select">
                    <option value="">All Ages</option>
                    <option value="0-18">0-18</option>
                    <option value="19-35">19-35</option>
                    <option value="36-55">36-55</option>
                    <option value="55+">55+</option>
                </select>
            </div>

            <div class="filter-group">
                <label>Gender:</label>
                <select class="filter-select">
                    <option value="">All</option>
                    <option value="male">Male</option>
                    <option value="female">Female</option>
                </select>
            </div>

            <button class="btn btn-outline">
                <i class="fas fa-filter"></i>
                Apply Filters
            </button>
        </div>

        <!-- Patients Table -->
        <div class="table-container">
            <table class="data-table">
                <thead>
                    <tr>
                        <th>
                            <input type="checkbox" class="select-all">
                        </th>
                        <th>Patient</th>
                        <th>Contact</th>
                        <th>Age</th>
                        <th>Gender</th>
                        <th>Last Visit</th>
                        <th>Status</th>
                        <th>Actions</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>
                            <input type="checkbox"></td>
                        <td>
                            <div class="patient-info">
                                <img src="https://via.placeholder.com/40" alt="John Doe">
                                <div>
                                    <h4>John Doe</h4>
                                    <span>ID: PAT001</span>
                                </div>
                            </div>
                        </td>
                        <td>
                            <div class="contact-info">
                                <p><i class="fas fa-envelope"></i>john.doe@email.com</p>
                                <p><i class="fas fa-phone"></i>+1 (555) 123-4567</p>
                            </div>
                        </td>
                        <td>45</td>
                        <td>Male</td>
                        <td>2024-01-15</td>
                        <td><span class="status active">Active</span></td>
                        <td>
                            <div class="action-buttons">
                                <button class="btn-icon" onclick="viewPatient(1)" title="View">
                                    <i class="fas fa-eye"></i>
                                </button>
                                <button class="btn-icon" onclick="editPatient(1)" title="Edit">
                                    <i class="fas fa-edit"></i>
                                </button>
                                <button class="btn-icon" onclick="addAppointment(1)" title="Add Appointment">
                                    <i class="fas fa-calendar-plus"></i>
                                </button>
                                <button class="btn-icon danger" onclick="deletePatient(1)" title="Delete">
                                    <i class="fas fa-trash"></i>
                                </button>
                            </div>
                        </td>
                    </tr>

                    <tr>
                        <td>
                            <input type="checkbox"></td>
                        <td>
                            <div class="patient-info">
                                <img src="https://via.placeholder.com/40" alt="Jane Smith">
                                <div>
                                    <h4>Jane Smith</h4>
                                    <span>ID: PAT002</span>
                                </div>
                            </div>
                        </td>
                        <td>
                            <div class="contact-info">
                                <p><i class="fas fa-envelope"></i>jane.smith@email.com</p>
                                <p><i class="fas fa-phone"></i>+1 (555) 234-5678</p>
                            </div>
                        </td>
                        <td>32</td>
                        <td>Female</td>
                        <td>2024-01-14</td>
                        <td><span class="status admitted">Admitted</span></td>
                        <td>
                            <div class="action-buttons">
                                <button class="btn-icon" onclick="viewPatient(2)" title="View">
                                    <i class="fas fa-eye"></i>
                                </button>
                                <button class="btn-icon" onclick="editPatient(2)" title="Edit">
                                    <i class="fas fa-edit"></i>
                                </button>
                                <button class="btn-icon" onclick="addAppointment(2)" title="Add Appointment">
                                    <i class="fas fa-calendar-plus"></i>
                                </button>
                                <button class="btn-icon danger" onclick="deletePatient(2)" title="Delete">
                                    <i class="fas fa-trash"></i>
                                </button>
                            </div>
                        </td>
                    </tr>

                    <tr>
                        <td>
                            <input type="checkbox"></td>
                        <td>
                            <div class="patient-info">
                                <img src="https://via.placeholder.com/40" alt="Mike Johnson">
                                <div>
                                    <h4>Mike Johnson</h4>
                                    <span>ID: PAT003</span>
                                </div>
                            </div>
                        </td>
                        <td>
                            <div class="contact-info">
                                <p><i class="fas fa-envelope"></i>mike.johnson@email.com</p>
                                <p><i class="fas fa-phone"></i>+1 (555) 345-6789</p>
                            </div>
                        </td>
                        <td>28</td>
                        <td>Male</td>
                        <td>2024-01-10</td>
                        <td><span class="status discharged">Discharged</span></td>
                        <td>
                            <div class="action-buttons">
                                <button class="btn-icon" onclick="viewPatient(3)" title="View">
                                    <i class="fas fa-eye"></i>
                                </button>
                                <button class="btn-icon" onclick="editPatient(3)" title="Edit">
                                    <i class="fas fa-edit"></i>
                                </button>
                                <button class="btn-icon" onclick="addAppointment(3)" title="Add Appointment">
                                    <i class="fas fa-calendar-plus"></i>
                                </button>
                                <button class="btn-icon danger" onclick="deletePatient(3)" title="Delete">
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
    </div>
    
    <!-- Add Patient Modal -->
    <div id="addPatientModal" class="modal">
        <div class="modal-content">
            <div class="modal-header">
                <h3>Add New Patient</h3>
                <button class="modal-close" onclick="closeAddPatientModal()">
                    <i class="fas fa-times"></i>
                </button>
            </div>

            <form class="modal-form" id="addPatientForm">
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

                <div class="form-row">
                    <div class="form-group">
                        <label for="dateOfBirth">Date of Birth</label>
                        <input type="date" id="dateOfBirth" name="dateOfBirth" required>
                    </div>
                    <div class="form-group">
                        <label for="gender">Gender</label>
                        <select id="gender" name="gender" required>
                            <option value="">Select Gender</option>
                            <option value="male">Male</option>
                            <option value="female">Female</option>
                            <option value="other">Other</option>
                        </select>
                    </div>
                </div>

                <div class="form-group">
                    <label for="email">Email</label>
                    <input type="email" id="email" name="email">
                </div>

                <div class="form-group">
                    <label for="phone">Phone</label>
                    <input type="tel" id="phone" name="phone" required>
                </div>

                <div class="form-group">
                    <label for="address">Address</label>
                    <textarea id="address" name="address" rows="3"></textarea>
                </div>

                <div class="form-group">
                    <label for="emergencyContact">Emergency Contact</label>
                    <input type="text" id="emergencyContact" name="emergencyContact">
                </div>

                <div class="form-group">
                    <label for="medicalHistory">Medical History</label>
                    <textarea id="medicalHistory" name="medicalHistory" rows="3"></textarea>
                </div>

                <div class="modal-actions">
                    <button type="button" class="btn btn-outline" onclick="closeAddPatientModal()">Cancel</button>
                    <button type="submit" class="btn btn-primary">Add Patient</button>
                </div>
            </form>
        </div>
    </div>

    <%-- <!DOCTYPE html>
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

