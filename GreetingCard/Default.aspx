<%@ Page Language="C#" CodeFile="Default.aspx.cs" Inherits="GreetingCard.Default" %>
<!DOCTYPE html>
<html>
    <head runat="server">
        <title>Default</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
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
        <!-- Optional JavaScript -->
        <!-- jQuery first, then Popper.js, then Bootstrap JS -->
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    </body>
</html>
