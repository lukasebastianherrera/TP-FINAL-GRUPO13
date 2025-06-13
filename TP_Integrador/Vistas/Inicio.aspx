<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Inicio.aspx.cs" Inherits="Vistas.Inicio" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style4 {
            height: 50px;
        }
        .auto-style5 {
            width: 328px;
            height: 50px;
        }
        .auto-style6 {
            width: 422px;
            height: 50px;
        }
        .auto-style10 {
            height: 70px;
        }
        .auto-style11 {
            width: 328px;
            height: 70px;
        }
        .auto-style12 {
            width: 422px;
            height: 70px;
        }
        .auto-style13 {
            height: 20px;
        }
        .auto-style14 {
            width: 328px;
            height: 20px;
        }
        .auto-style15 {
            width: 422px;
            height: 20px;
        }
        .auto-style16 {
            height: 30px;
        }
        .auto-style17 {
            width: 328px;
            height: 30px;
        }
        .auto-style18 {
            width: 422px;
            height: 30px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style16"></td>
                        <td class="auto-style17"></td>
                        <td class="auto-style18"></td>
                        <td class="auto-style16"></td>
                        <td class="auto-style16"></td>
                    </tr>
                    <tr>
                        <td class="auto-style10"></td>
                        <td class="auto-style11"></td>
                        <td class="auto-style12">
                            <asp:Label ID="lbl_Inicio" runat="server" Font-Bold="True" Font-Size="35pt" Text="Inicio"></asp:Label>
                        </td>
                        <td class="auto-style10"></td>
                        <td class="auto-style10"></td>
                    </tr>
                    <tr>
                        <td class="auto-style13"></td>
                        <td class="auto-style14"></td>
                        <td class="auto-style15"></td>
                        <td class="auto-style13"></td>
                        <td class="auto-style13"></td>
                    </tr>
                    <tr>
                        <td class="auto-style4"></td>
                        <td class="auto-style5"></td>
                        <td class="auto-style6">
                            <asp:Button ID="btn_Administrador" runat="server" Font-Bold="False" Text="Administrador" />
                        </td>
                        <td class="auto-style4"></td>
                        <td class="auto-style4"></td>
                    </tr>
                    <tr>
                        <td class="auto-style4"></td>
                        <td class="auto-style5"></td>
                        <td class="auto-style6">
                            <asp:Button ID="btn_Medico" runat="server" Font-Bold="False" Text="Médico/a" />
                        </td>
                        <td class="auto-style4"></td>
                        <td class="auto-style4"></td>
                    </tr>
                    <tr>
                        <td class="auto-style4"></td>
                        <td class="auto-style5"></td>
                        <td class="auto-style6"></td>
                        <td class="auto-style4"></td>
                        <td class="auto-style4"></td>
                    </tr>
                </table>
        </div>
    </form>

</body>
</html>
