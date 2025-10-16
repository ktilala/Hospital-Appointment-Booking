<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="add_doctor.aspx.cs" Inherits="HMS_Portel.add_doctor" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Add Doctor</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f7f9fc;
        }

        h1 {
            color: #007bff;
            margin-bottom: 20px;
        }

        table {
            border-collapse: collapse;
            background-color: #fff;
            box-shadow: 0px 4px 10px rgba(0,0,0,0.1);
            padding: 20px;
            border-radius: 8px;
            width: 50%;
        }

        table td {
            padding: 10px;
            font-size: 14px;
            color: #333;
        }

        table td:first-child {
            font-weight: bold;
            text-align: right;
            width: 40%;
        }

        .textbox, .dropdown {
            width: 95%;
            padding: 6px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }

        .btn {
            background-color: #007bff;
            color: white;
            padding: 8px 18px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-weight: bold;
        }

        .btn:hover {
            background-color: #0056b3;
        }

        .fileupload {
            border: none;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <center>
                <h1>ADD DOCTOR</h1>
                <table>
                    <tr>
                        <td>First Name</td>
                        <td>
                            <asp:TextBox ID="txtfn" runat="server" CssClass="textbox"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>Last Name</td>
                        <td>
                            <asp:TextBox ID="txtln" runat="server" CssClass="textbox"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>Email</td>
                        <td>
                            <asp:TextBox ID="txteml" runat="server" CssClass="textbox"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>Phone</td>
                        <td>
                            <asp:TextBox ID="txtpn" runat="server" CssClass="textbox"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>Department</td>
                        <td>
                            <asp:DropDownList ID="dldt" runat="server" CssClass="dropdown">
                                <asp:ListItem>--- Select Department ---</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td>Available Time</td>
                        <td>
                            <asp:TextBox ID="txtat" runat="server" CssClass="textbox"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>Image</td>
                        <td>
                            <asp:FileUpload ID="fldimg" runat="server" CssClass="fileupload" />
                        </td>
                    </tr>
                    <tr>
                        <td></td>
                        <td>
                            <asp:Button ID="Button1" runat="server" CssClass="btn" Text="Save Doctor" OnClick="Button1_Click1"/>
                        </td>
                    </tr>
                </table>
            </center>
        </div>
    </form>
</body>
</html>

