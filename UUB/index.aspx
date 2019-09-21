<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="UUB.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Order</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <p><input id="SecondName" placeholder="Прізвище отримувача" type="text" runat="server"/></p>
            <p><input id="FirstName" placeholder="Ім'я отримувача" type="text" runat="server"/></p>
            <p><select id="Adress" name="D1" runat="server">
                <option selected="selected" disabled="disabled">Адреса доставки</option>
                <option>Полтава</option>
                <option>Київ</option>
                <option>Харків</option>
            </select></p>
            <p><input id="Weight" placeholder="Вага відправлення(г.)" type="text" runat="server"/></p>
            <p><textarea id="Comment" cols="20" name="S1" placeholder="Коментар до відправлення" rows="2" runat="server"></textarea></p>
            <p><select id="Type" name="D2" runat="server">
                    <option selected="selected" disabled="disabled"> Тип відправлення</option>
                    <option>Лист</option>
                    <option>Не габаритний вантаж</option>
                <option>Габаритний вантаж</option>
                </select></p>
            <p><asp:Button ID="Button" runat="server" Text="Розрахувати вартість" OnClick="Button_Click" /></p>
            
        </div>
    </form>
</body>
</html>
