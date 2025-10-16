<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeFile="pharmacy.aspx.cs" Inherits="HMS_Portel.pharmacy" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <!DOCTYPE html>
    <html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Pharmacy - Hospital Admin Panel</title>
        <link rel="stylesheet" href="styles.css">
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" rel="stylesheet">
         <!DOCTYPE html>
                <html>
                <head>
                    <meta charset="UTF-8">
                    <meta name="viewport" content="width=device-width, initial-scale=1.0"><title>Dashboard - Hospital Admin Panel</title>
                    <link rel="stylesheet" href="styles.css">
                    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" rel="stylesheet">
                      <style>
                /* Container for admin page */
                .admin-container {
                    display: flex;
                    min-height: 100vh;
                    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
                    background-color: #f9fafb;
                }

                /* Sidebar styling */
                .sidebar {
                    width: 250px;
                    background-color: #2d3748;
                    color: #cbd5e0;
                    display: flex;
                    flex-direction: column;
                    padding: 20px 0;
                }

                .sidebar-header {
                    padding: 0 30px;
                    font-size: 1.5rem;
                    font-weight: 700;
                    color: #edf2f7;
                    margin-bottom: 30px;
                    display: flex;
                    align-items: center;
                    gap: 10px;
                }

                    .sidebar-header i {
                        font-size: 1.8rem;
                        color: #63b3ed;
                    }

                .sidebar-menu {
                    list-style: none;
                    padding: 0;
                    margin: 0;
                    flex-grow: 1;
                }

                    .sidebar-menu li {
                        margin: 10px 0;
                    }

                        .sidebar-menu li a {
                            color: #cbd5e0;
                            text-decoration: none;
                            display: flex;
                            align-items: center;
                            padding: 10px 30px;
                            font-size: 1rem;
                            border-left: 4px solid transparent;
                            transition: all 0.3s ease;
                        }

                            .sidebar-menu li a i {
                                margin-right: 12px;
                            }

                            .sidebar-menu li.active a,
                            .sidebar-menu li a:hover {
                                background-color: #63b3ed;
                                color: white;
                                border-left-color: #4299e1;
                            }

                /* Main content area */
                .main-content {
                    flex-grow: 1;
                    padding: 30px 40px;
                    background-color: #fff;
                    box-shadow: inset 0 0 10px #e2e8f0;
                    overflow-y: auto;
                }

                .header {
                    margin-bottom: 30px;
                    border-bottom: 2px solid #e2e8f0;
                    padding-bottom: 15px;
                }

                .header-left h1 {
                    font-size: 2rem;
                    color: #2d3748;
                    margin-bottom: 5px;
                }

                .header-left p {
                    color: #718096;
                    font-size: 1rem;
                }

                /* Form styling */
                .form-group {
                    margin-bottom: 20px;
                    max-width: 500px;
                }

                    .form-group label {
                        display: block;
                        font-weight: 600;
                        margin-bottom: 8px;
                        color: #2d3748;
                    }

                .input-text,
                input[type="text"],
                input[type="number"],
                input[type="date"],
                textarea,
                select,
                asp\:DropDownList,
                asp\:TextBox {
                    width: 100%;
                    padding: 8px 12px;
                    font-size: 1rem;
                    border: 1.5px solid #cbd5e0;
                    border-radius: 5px;
                    transition: border-color 0.3s ease;
                    box-sizing: border-box;
                }

                    input[type="text"]:focus,
                    input[type="number"]:focus,
                    input[type="date"]:focus,
                    textarea:focus,
                    select:focus {
                        border-color: #63b3ed;
                        outline: none;
                        box-shadow: 0 0 5px rgba(99,179,237,0.5);
                    }

                /* Button styling */
                .btn {
                    display: inline-block;
                    padding: 10px 25px;
                    background-color: #4299e1;
                    color: white !important;
                    border: none;
                    border-radius: 5px;
                    font-weight: 600;
                    cursor: pointer;
                    transition: background-color 0.3s ease;
                    font-size: 1rem;
                    user-select: none;
                }

                    .btn:hover {
                        background-color: #2b6cb0;
                    }

                .btn-sm {
                    padding: 5px 12px;
                    font-size: 0.85rem;
                }

                /* GridView styling */
                .table-container {
                    max-width: 100%;
                    overflow-x: auto;
                }

                .data-table {
                    width: 100%;
                    border-collapse: collapse;
                    box-shadow: 0 0 15px -5px #a0aec0;
                }

                    .data-table th, .data-table td {
                        padding: 12px 15px;
                        border: 1px solid #e2e8f0;
                        text-align: left;
                        color: #2d3748;
                        font-size: 0.95rem;
                    }

                    .data-table th {
                        background-color: #edf2f7;
                        font-weight: 700;
                    }

                    .data-table tr:nth-child(even) {
                        background-color: #f7fafc;
                    }

                /* LinkButton styles as buttons */
                .btn-primary {
                    background-color: #4299e1;
                    color: white !important;
                    border-radius: 3px;
                    padding: 5px 10px;
                    text-decoration: none !important;
                    display: inline-block;
                    font-size: 0.9rem;
                }

                    .btn-primary:hover {
                        background-color: #2b6cb0;
                    }

                .btn-danger {
                    background-color: #f56565;
                    color: white !important;
                    border-radius: 3px;
                    padding: 5px 10px;
                    text-decoration: none !important;
                    display: inline-block;
                    font-size: 0.9rem;
                }

                    .btn-danger:hover {
                        background-color: #c53030;
                    }

                /* Responsive tweaks */
                @media (max-width: 768px) {
                    .admin-container {
                        flex-direction: column;
                    }

                    .sidebar {
                        width: 100%;
                        flex-direction: row;
                        overflow-x: auto;
                    }

                    .sidebar-menu {
                        display: flex;
                        flex-direction: row;
                    }

                        .sidebar-menu li {
                            margin: 0 10px;
                        }

                    .main-content {
                        padding: 20px;
                    }
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
                    <li class="menu-item active">
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
                        <h1>Pharmacy Management</h1>
                    </div>

                    <div class="header-right">
                        <div class="search-box">
                            <input type="text" placeholder="Search medicines...">
                            <i class="fas fa-search"></i>
                        </div>

                       <%-- <button class="btn btn-primary" onclick="openAddMedicineModal()">
                            <i class="fas fa-plus"></i>
                            Add Medicine
                        </button>--%>
                    </div>
                </header>
</asp:Content>
<asp:Content ID="Content4" runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
    <div class="content-area">
        <center>
    <h2>Add New Medicine</h2>

        <!-- Medicine Form -->
        <div class="form-group">
            <label>Category:</label>
            <asp:DropDownList ID="ddlCategory" runat="server" CssClass="input-text" OnSelectedIndexChanged="ddlCategory_SelectedIndexChanged" AutoPostBack="True"></asp:DropDownList>
        </div>

        <div class="form-group">
            <label>
                Medicine Name:        
                    <asp:TextBox ID="txtMedicineName" runat="server" placeholder="Enter medicine name"></asp:TextBox>
        </div>

        <div class="form-group">
            <label>Description:</label>
            <asp:TextBox ID="txtDescription" runat="server" TextMode="MultiLine" Rows="3" placeholder="Enter description"></asp:TextBox>
        </div>

        <div class="form-group">
            <label>Price (₹):</label>
            <asp:TextBox ID="txtPrice" runat="server" TextMode="Number" placeholder="Enter price"></asp:TextBox>
        </div>

        <div class="form-group">
            <label>Stock Quantity:</label>
            <asp:TextBox ID="txtStock" runat="server" TextMode="Number" placeholder="Enter stock quantity"></asp:TextBox>
        </div>

        <div class="form-group">
            <label>Expiry Date:</label>
            <asp:TextBox ID="txtExpiry" runat="server" TextMode="Date"></asp:TextBox>
        </div>

        <div class="form-group">
            <label>Status:</label>
            <asp:DropDownList ID="ddlStatus" runat="server">
                <asp:ListItem Text="Available" Value="Available" />
                <asp:ListItem Text="Out of Stock" Value="Out of Stock" />
                <asp:ListItem Text="Discontinued" Value="Discontinued" />
            </asp:DropDownList>
        </div>

        <div class="form-group">
            <label>Image:</label>
            <asp:FileUpload ID="fldimg" runat="server" />
        </div>
        <asp:Button ID="btnSave" runat="server" Text="Save Medicine" CssClass="btn" OnClick="btnSave_Click" />
        <asp:Label ID="lblMessage" runat="server" ForeColor="Green"></asp:Label>
        <div class="table-container" style="margin-top: 40px;">
            <asp:GridView ID="GridView1" runat="server" Height="100px" Width="100px" AutoGenerateColumns="False" CssClass="data-table" OnRowCommand="GridView1_RowCommand">
                <Columns>
                    <asp:TemplateField HeaderText="ID">
                        <ItemTemplate>
                            <asp:Label ID="lblId" runat="server" Text='<%# Eval("Id") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Name">
                        <ItemTemplate>
                            <asp:Label ID="lblName" runat="server" Text='<%# Eval("Name") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Price (₹)">
                        <ItemTemplate>
                            <asp:Label ID="lblPrice" runat="server" Text='<%# Eval("Price") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Stock">
                        <ItemTemplate>
                            <asp:Label ID="lblStock" runat="server" Text='<%# Eval("Stock") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Expiry">
                        <ItemTemplate>
                            <asp:Label ID="lblExpiry" runat="server" Text='<%# Eval("ExpiryDate", "{0:yyyy-MM-dd}") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Status">
                        <ItemTemplate>
                            <asp:Label ID="lblStatus" runat="server" Text='<%# Eval("Status") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Image">
                        <ItemTemplate>
                            <asp:Image ID="Image1" runat="server" Height="100px" Width="100px" ImageUrl='<%# Eval("Image") %>' />
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Edit">
                        <ItemTemplate>
                            <asp:LinkButton ID="lnkEdit" runat="server" Text="Edit" CommandName="cmd_edt" CommandArgument='<%# Eval("Id") %>' CssClass="btn btn-sm btn-primary"></asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Delete">
                        <ItemTemplate>
                            <asp:LinkButton ID="lnkDelete" runat="server" Text="Delete" CommandName="cmd_dlt" CommandArgument='<%# Eval("Id") %>' CssClass="btn btn-sm btn-danger"></asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
            </center>
        <!-- Stats Cards -->
        <%--<div class="stats-grid">
            <div class="stat-card">
                <div class="stat-icon">
                    <i class="fas fa-pills"></i>
                </div>
                <div class="stat-info">
                    <h3>Total Medicines</h3>
                    <span class="stat-number">1,247</span>
                </div>
            </div>

            <div class="stat-card">
                <div class="stat-icon">
                    <i class="fas fa-exclamation-triangle"></i>
                </div>
                <div class="stat-info">
                    <h3>Low Stock</h3>
                    <span class="stat-number">23</span>
                </div>
            </div>

            <div class="stat-card">
                <div class="stat-icon">
                    <i class="fas fa-times-circle"></i>
                </div>
                <div class="stat-info">
                    <h3>Out of Stock</h3>
                    <span class="stat-number">8</span>
                </div>
            </div>

            <div class="stat-card">
                <div class="stat-icon">
                    <i class="fas fa-calendar-times"></i>
                </div>
                <div class="stat-info">
                    <h3>Expiring Soon</h3>
                    <span class="stat-number">15</span>
                </div>
            </div>
        </div>

        <!-- Filters -->
        <div class="filters-section">
            <div class="filter-group">
                <label>Category:</label>
                <select class="filter-select">
                    <option value="">All Categories</option>
                    <option value="antibiotics">Antibiotics</option>
                    <option value="pain-relief">Pain Relief</option>
                    <option value="vitamins">Vitamins</option>
                    <option value="cardiovascular">Cardiovascular</option>
                    <option value="respiratory">Respiratory</option>
                </select>
            </div>

            <div class="filter-group">
                <label>Stock Status:</label>
                <select class="filter-select">
                    <option value="">All Status</option>
                    <option value="in-stock">In Stock</option>
                    <option value="low-stock">Low Stock</option>
                    <option value="out-of-stock">Out of Stock</option>
                </select>
            </div>

            <div class="filter-group">
                <label>Expiry:</label>
                <select class="filter-select">
                    <option value="">All</option>
                    <option value="expiring-soon">Expiring Soon</option>
                    <option value="expired">Expired</option>
                </select>
            </div>--%>

    </div>

        <!-- Medicines Table -->
        <%--<div class="table-container">
            <table class="data-table">
                <thead>
                    <tr>
                        <th>
                            <input type="checkbox" class="select-all">
                        </th>
                        <th>Medicine</th>
                        <th>Category</th>
                        <th>Quantity</th>
                        <th>Unit Price</th>
                        <th>Expiry Date</th>
                        <th>Stock Status</th>
                        <th>Actions</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>
                            <input type="checkbox"></td>
                        <td>
                            <div class="medicine-info">
                                <div class="medicine-icon">
                                    <i class="fas fa-pills"></i>
                                </div>
                                <div>
                                    <h4>Paracetamol 500mg</h4>
                                    <span>MED001</span>
                                </div>
                            </div>
                        </td>
                        <td><span class="category">Pain Relief</span></td>
                        <td>
                            <div class="quantity-info">
                                <span class="quantity">250</span>
                                <span class="unit">tablets</span>
                            </div>
                        </td>
                        <td>$0.50</td>
                        <td>2025-12-15</td>
                        <td><span class="status in-stock">In Stock</span></td>
                        <td>
                            <div class="action-buttons">
                                <button class="btn-icon" onclick="viewMedicine(1)" title="View">
                                    <i class="fas fa-eye"></i>
                                </button>
                                <button class="btn-icon" onclick="editMedicine(1)" title="Edit">
                                    <i class="fas fa-edit"></i>
                                </button>
                                <button class="btn-icon" onclick="addStock(1)" title="Add Stock">
                                    <i class="fas fa-plus"></i>
                                </button>
                                <button class="btn-icon" onclick="dispenseMedicine(1)" title="Dispense">
                                    <i class="fas fa-hand-holding-medical"></i>
                                </button>
                                <button class="btn-icon danger" onclick="deleteMedicine(1)" title="Delete">
                                    <i class="fas fa-trash"></i>
                                </button>
                            </div>
                        </td>
                    </tr>

                    <tr>
                        <td>
                            <input type="checkbox"></td>
                        <td>
                            <div class="medicine-info">
                                <div class="medicine-icon">
                                    <i class="fas fa-pills"></i>
                                </div>
                                <div>
                                    <h4>Amoxicillin 250mg</h4>
                                    <span>MED002</span>
                                </div>
                            </div>
                        </td>
                        <td><span class="category">Antibiotics</span></td>
                        <td>
                            <div class="quantity-info">
                                <span class="quantity">45</span>
                                <span class="unit">capsules</span>
                            </div>
                        </td>
                        <td>$2.25</td>
                        <td>2024-06-20</td>
                        <td><span class="status low-stock">Low Stock</span></td>
                        <td>
                            <div class="action-buttons">
                                <button class="btn-icon" onclick="viewMedicine(2)" title="View">
                                    <i class="fas fa-eye"></i>
                                </button>
                                <button class="btn-icon" onclick="editMedicine(2)" title="Edit">
                                    <i class="fas fa-edit"></i>
                                </button>
                                <button class="btn-icon" onclick="addStock(2)" title="Add Stock">
                                    <i class="fas fa-plus"></i>
                                </button>
                                <button class="btn-icon" onclick="dispenseMedicine(2)" title="Dispense">
                                    <i class="fas fa-hand-holding-medical"></i>
                                </button>
                                <button class="btn-icon danger" onclick="deleteMedicine(2)" title="Delete">
                                    <i class="fas fa-trash"></i>
                                </button>
                            </div>
                        </td>
                    </tr>

                    <tr>
                        <td>
                            <input type="checkbox"></td>
                        <td>
                            <div class="medicine-info">
                                <div class="medicine-icon">
                                    <i class="fas fa-pills"></i>
                                </div>
                                <div>
                                    <h4>Vitamin D3 1000IU</h4>
                                    <span>MED003</span>
                                </div>
                            </div>
                        </td>
                        <td><span class="category">Vitamins</span></td>
                        <td>
                            <div class="quantity-info">
                                <span class="quantity">0</span>
                                <span class="unit">tablets</span>
                            </div>
                        </td>
                        <td>$1.50</td>
                        <td>2025-03-10</td>
                        <td><span class="status out-of-stock">Out of Stock</span></td>
                        <td>
                            <div class="action-buttons">
                                <button class="btn-icon" onclick="viewMedicine(3)" title="View">
                                    <i class="fas fa-eye"></i>
                                </button>
                                <button class="btn-icon" onclick="editMedicine(3)" title="Edit">
                                    <i class="fas fa-edit"></i>
                                </button>
                                <button class="btn-icon" onclick="addStock(3)" title="Add Stock">
                                    <i class="fas fa-plus"></i>
                                </button>
                                <button class="btn-icon" onclick="orderMedicine(3)" title="Order">
                                    <i class="fas fa-shopping-cart"></i>
                                </button>
                                <button class="btn-icon danger" onclick="deleteMedicine(3)" title="Delete">
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
    
    <!-- Add Medicine Modal -->
    <%--<div id="addMedicineModal" class="modal">
        <div class="modal-content">
            <div class="modal-header">
                <h3>Add New Medicine</h3>
                <button class="modal-close" onclick="closeAddMedicineModal()">
                    <i class="fas fa-times"></i>
                </button>
            </div>

            <form class="modal-form" id="addMedicineForm">
                <div class="form-group">
                    <label for="medicineName">Medicine Name</label>
                    <input type="text" id="medicineName" name="medicineName" required>
                </div>

                <div class="form-row">
                    <div class="form-group">
                        <label for="category">Category</label>
                        <select id="category" name="category" required>
                            <option value="">Select Category</option>
                            <option value="antibiotics">Antibiotics</option>
                            <option value="pain-relief">Pain Relief</option>
                            <option value="vitamins">Vitamins</option>
                            <option value="cardiovascular">Cardiovascular</option>
                            <option value="respiratory">Respiratory</option>
                            <option value="gastrointestinal">Gastrointestinal</option>
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="dosage">Dosage</label>
                        <input type="text" id="dosage" name="dosage" placeholder="e.g., 500mg">
                    </div>
                </div>

                <div class="form-row">
                    <div class="form-group">
                        <label for="quantity">Quantity</label>
                        <input type="number" id="quantity" name="quantity" min="0" required>
                    </div>
                    <div class="form-group">
                        <label for="unit">Unit</label>
                        <select id="unit" name="unit" required>
                            <option value="">Select Unit</option>
                            <option value="tablets">Tablets</option>
                            <option value="capsules">Capsules</option>
                            <option value="ml">ML</option>
                            <option value="mg">MG</option>
                            <option value="injections">Injections</option>
                        </select>
                    </div>
                </div>

                <div class="form-row">
                    <div class="form-group">
                        <label for="unitPrice">Unit Price ($)</label>
                        <input type="number" id="unitPrice" name="unitPrice" step="0.01" min="0" required>
                    </div>
                    <div class="form-group">
                        <label for="expiryDate">Expiry Date</label>
                        <input type="date" id="expiryDate" name="expiryDate" required>
                    </div>
                </div>

                <div class="form-group">
                    <label for="manufacturer">Manufacturer</label>
                    <input type="text" id="manufacturer" name="manufacturer">
                </div>

                <div class="form-group">
                    <label for="description">Description</label>
                    <textarea id="description" name="description" rows="3" placeholder="Medicine description and usage..."></textarea>
                </div>

                <div class="modal-actions">
                    <button type="button" class="btn btn-outline" onclick="closeAddMedicineModal()">Cancel</button>
                    <button type="submit" class="btn btn-primary">Add Medicine</button>
                </div>
            </form>
        </div>
    </div>--%>
    <%--                <!DOCTYPE html>
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
    </label>
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
        </div>--%>
</asp:Content>

