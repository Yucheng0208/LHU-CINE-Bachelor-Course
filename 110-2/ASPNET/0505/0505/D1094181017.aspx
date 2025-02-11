<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="D1094181017.aspx.cs" Inherits="_0505.D1094181017" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            班級：資網二A<br />
            學號：D1094181017<br />
            姓名：張育丞<br />
        </div>
        <asp:Calendar ID="Calendar1" runat="server" SelectedDate="2017-01-01" VisibleDate="2017-01-01"></asp:Calendar>
        <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
        <br />
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    </form>
</body>
</html>
