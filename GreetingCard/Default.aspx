<%@ Page Language="C#" CodeFile="Default.aspx.cs" Inherits="GreetingCard.Default" %>
<!DOCTYPE html>
<html>

<head runat="server">
    <title>Default</title>
</head>

<body>
    <form id="form1" runat="server">
        <div>
            <!-- Here are the controls: -->
            Choose a background color: <br />
            <asp:DropDownList id="lstBackColor" runat="server" Width="194px" Height="22px" />
            <br />
            <br /> Choose a font: <br />
            <asp:DropDownList id="lstFontName" runat="server" Width="194px" Height="22px" />
            <br />
            <br /> Specify a numeric font size: <br />
            <asp:TextBox id="txtFontSize" runat="server" />
            <br />
            <br /> Choose a boarder style: <br />
            <asp:RadioButtonList id="lstBorder" runat="server" Width="177px" Height="59px" />
            <br />
            <br />
            <asp:CheckBox id="chkPicture" runat="server" Text="Add the Default Picture"></asp:CheckBox>
            <br />
            <br /> Enter the greeting text below: <br />
            <asp:TextBox id="txtGreeting" runat="server" Width="240px" Height="85px" TextMode="MultiLine" />
            <br />
            <br />
            <asp:Button id="cmdUpdate" OnClick="cmdUpdate_Click" runat="server" Width="71px" Height="24px" Text="Update" />
        </div>
        <!-- Here is the Card: -->
        <asp:Panel id="pnlCard" runat="server" Height="481px" Weight="339px" HorizontalAlign="Center" Style="POSITION: absolute; TOP: 16px; LEFT: 313px">
            <br />&nbsp;
            <asp:Label id="lblGreeting" runat="server" Width="256px" Height="150px" />
            <br />
            <br />
            <br />
            <asp:Image id="imgDefault" runat="server" Width="212px" Height="160px" />
        </asp:Panel>
    </form>
</body>

</html>
