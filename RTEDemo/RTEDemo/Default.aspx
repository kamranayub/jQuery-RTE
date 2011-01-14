<%@ Page Language="C#" ValidateRequest="false" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="RTEDemo._Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Styles/rte.css" rel="stylesheet" type="text/css" />
    <script src="Scripts/jquery-1.4.2.min.js" type="text/javascript"></script>
    <script src="Scripts/jquery.rte.js" type="text/javascript"></script>

    <script type="text/javascript">
        $(function () {
            $(".rte-zone").rte({
                content_css_url: "/Styles/rte.css",
                media_url: "/Images/",
                dot_net_button_class: "cmdBtn"
            });
        });

    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        
        <h1>RTE Demo</h1>
        <asp:TextBox ID="txtContent" CssClass="rte-zone" TextMode="MultiLine" runat="server" />

        <p><asp:Button ID="btnSubmit" CssClass="cmdBtn" OnClick="btnSubmit_OnClick" Text="Test RTE" runat="server" /></p>
        
        <h3>Output</h3>
        <asp:TextBox ID="txtOutput" TextMode="MultiLine" Rows="10" Columns="50" runat="server" />
    </div>
    </form>
</body>
</html>
