<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="D1094181017.aspx.cs" Inherits="D1094181017_MID_Exam.D1094181017" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 24px;
            width: 167px;
        }
        .auto-style2 {
            height: 24px;
            width: 185px;
        }
        .auto-style3 {
            width: 185px;
            height: 56px;
        }
        .auto-style4 {
            width: 167px;
            height: 56px;
        }
        .auto-style5 {
            width: 167px;
            height: 31px;
        }
        .auto-style6 {
            width: 185px;
            height: 31px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <p>
        學號：D1094181017</p>
    <p>
        姓名：張育丞</p>
    <p>
        班級：資網二A</p>
        <table>
            <tr>
                <td class="auto-style1">請選擇單位</td>
                <td class="auto-style2">
                    <asp:DropDownList ID="DropDownList1" runat="server" Height="16px" Width="94px">
                        <asp:ListItem Value="A" Selected="True">資網系</asp:ListItem>
                        <asp:ListItem Value="B">機械系</asp:ListItem>
                        <asp:ListItem Value="C">電機系</asp:ListItem>
                        <asp:ListItem Value="D">化材系</asp:ListItem>
                        <asp:ListItem Value="E">電子系</asp:ListItem>
                        <asp:ListItem Value="F">資管系</asp:ListItem>
                        <asp:ListItem Value="G">財經系</asp:ListItem>
                        <asp:ListItem Value="H">國企系</asp:ListItem>
                        <asp:ListItem Value="I">遊戲系</asp:ListItem>
                        <asp:ListItem Value="J">文創系</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">請選擇性別</td>
                <td class="auto-style3">
                    <asp:RadioButtonList ID="RadioButtonList1" runat="server" Width="77px">
                        <asp:ListItem Selected="True" Value="0">男生</asp:ListItem>
                        <asp:ListItem Value="1">女生</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Button ID="Button1" runat="server" Text="產生ID" OnClick="Button1_Click" />
                </td>
                <td class="auto-style2">
                    <asp:Label ID="Label1" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:TextBox ID="TextBox1" runat="server" Height="23px" Width="172px">請輸入一組ID進行驗證</asp:TextBox>
                </td>
                <td class="auto-style6">
                    <asp:Button ID="Button2" runat="server" Text="驗證ID" />
                &nbsp;
                    <asp:Label ID="Label2" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
    <p>
        &nbsp;</p>
    </form>
</body>
</html>
