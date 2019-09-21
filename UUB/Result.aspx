<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Result.aspx.cs" Inherits="UUB.Result" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Result</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <p><input id="SecondName" type="text" runat="server"/></p>
            <p><input id="FirstName" type="text" runat="server"/></p>
            <p><select id="Adress" name="D1" runat="server">
                <option>Полтава</option>
                <option>Київ</option>
                <option>Харків</option>
            </select></p>
            <p><input id="Weight" type="text" runat="server"/></p>
            <p><textarea id="Comment" cols="20" name="S1" placeholder="Коментар до відправлення" rows="2" runat="server"></textarea></p>
            <p><select id="Type" name="D2" runat="server">
                    <option>Лист</option>
                    <option>Не габаритний вантаж</option>
                    <option>Габаритний вантаж</option>
                </select></p>
        </div>
        <asp:Label ID="Cost" runat="server" Text="Label"></asp:Label>
    </form>
</body>
</html>
