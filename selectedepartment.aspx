<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="selectedepartment.aspx.cs" Inherits="HMS_Portel.selectedepartment" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Select Department</title>
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
            width: 40%;
            margin-top: 50px;
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

        .textbox {
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
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <center>
                <h1>Select Department</h1>
                <table>
                    <tr>
                        <td>Department</td>
                        <td>
                            <asp:TextBox ID="txtsd" runat="server" CssClass="textbox"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td></td>
                        <td>
                            <asp:Button ID="Button1" runat="server" CssClass="btn" Text="Select" OnClick="Button1_Click1" />
                        </td>
                    </tr>
                </table>
            </center>
        </div>
    </form>
</body>
</html>
