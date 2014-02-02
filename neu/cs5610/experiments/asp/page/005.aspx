﻿<%@ Page Language="C#" %>

<!DOCTYPE html>

<script runat="server">
    public class Page
    {
        public string name { set; get; }
        public string html { set; get; }
    }
    Page home = new Page();
    protected void Page_Load(object sender, EventArgs e)
    {
        home.name = "Home";
        home.html = "<h1>Hello From Home !!!!!</h1>";
    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Experiment</title>
    <link rel="stylesheet" type="text/css" href="~/css/bootstrap.min.css" />
    <link rel="stylesheet" type="text/css" href="~/css/wam.css" />
</head>
<body>
    <form id="form1" runat="server">
    <div class="container">

        <%= home.html %>

        <rasala:FileView ID="fileView" runat="server" />
    </div>
    </form>
    <script src="../../../javascript/jquery-min.js"></script>
    <script src="../../../javascript/jquery-ui.min.js"></script>
    <script src="../../../javascript/wam.js"></script>
    <script>
        $(function () {

        });
    </script>
</body>
</html>
