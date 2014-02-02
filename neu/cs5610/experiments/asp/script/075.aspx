﻿<%@ Page Language="C#" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Experiment</title>
    <link rel="stylesheet" type="text/css" href="~/css/bootstrap.min.css" />
    <link rel="stylesheet" type="text/css" href="~/css/wam.css" />
    <script src="../../../javascript/jquery-min.js"></script>
    <script src="../../../javascript/jquery-ui.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
    <div class="container">
        <h1>Implementing a Script with Gotos</h1>

        <pre>
        $(function () {
            var state = 0;
            var tot = 0;
            var count = 0;
            var value = 0;
            var average = 0;
            var loop = true;
            while (loop) {
                switch (state) {
                    case 0:
                        value = prompt("Value: ");
                        state = 1;
                        break;
                    case 1:
                        value = parseFloat(value);
                        state = 2;
                        break;
                    case 2:
                        count++;
                        state = 3;
                        break;
                    case 3:
                        tot = tot + value;
                        state = 4;
                        break;
                    case 4:
                        if (value != "0") state = 0;
                        else state = 5;
                        break;
                    case 5:
                        average = tot / count;
                        state = 6;
                        break;
                    case 6:
                        alert(average);
                        state = 7;
                        break;
                    case 7:
                        loop = false;
                        break;
                }
            }
        });</pre>

        <rasala:FileView ID="fileView" runat="server" />
    </div>
    </form>
    <script>
        $(function () {
            var state = 0;
            var tot = 0;
            var count = 0;
            var value = 0;
            var average = 0;
            var loop = true;
            while (loop) {
                switch (state) {
                    case 0:
                        value = prompt("Value: ");
                        state = 1;
                        break;
                    case 1:
                        value = parseFloat(value);
                        state = 2;
                        break;
                    case 2:
                        count++;
                        state = 3;
                        break;
                    case 3:
                        tot = tot + value;
                        state = 4;
                        break;
                    case 4:
                        if (value != "0") state = 0;
                        else state = 5;
                        break;
                    case 5:
                        average = tot / count;
                        state = 6;
                        break;
                    case 6:
                        alert(average);
                        state = 7;
                        break;
                    case 7:
                        loop = false;
                        break;
                }
            }
        });
    </script>
</body>
</html>
