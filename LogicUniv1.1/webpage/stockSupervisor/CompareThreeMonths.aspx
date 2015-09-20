﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CompareThreeMonths.aspx.cs" Inherits="LogicUniv1._1.webpage.stockSupervisor.CompareThreeMonths" %>

<!DOCTYPE html>
<script runat="server">

    protected void BtnSubmit_Click(object sender, EventArgs e)
    {

    }
</script>


<html>
<head>
	
	<title>Logic Unviersity Stationery Inventory System</title>
	<meta name="keywords" content="" />
	<meta name="description" content="" />
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link href="../css/bootstrap.min.css" rel="stylesheet" type="text/css">
	<link href="../css/font-awesome.min.css" rel="stylesheet" type="text/css">
	<link href="../css/templatemo_style.css" rel="stylesheet" type="text/css">	

    <!-- bootstrap -->
    <link href="../css/bootstrap/bootstrap.css" rel="stylesheet" />
    <link href="../css/bootstrap/bootstrap-overrides.css" type="text/css" rel="stylesheet" />
    <!-- libraries -->
    <link href="../css/lib/jquery-ui-1.10.2.custom.css" rel="stylesheet" type="text/css" />
    <link href="../css/lib/font-awesome.css" type="text/css" rel="stylesheet" />
    <!-- global styles -->
    <link rel="stylesheet" type="text/css" href="../css/compiled/layout.css">
    <link rel="stylesheet" type="text/css" href="../css/compiled/elements.css">
    <link rel="stylesheet" type="text/css" href="../css/compiled/icons.css">

    <!-- this page specific styles -->
    <link rel="stylesheet" href="../css/compiled/index.css" type="text/css" media="screen" />
    	<!-- scripts -->
    <script src="../js/jquery-1.11.1.min.js"></script>
    <script src="../js/bootstrap.min.js"></script>
    <script src="../js/jquery-ui-1.10.2.custom.min.js"></script>
    <!-- knob -->
    <script src="../js/jquery.knob.js"></script>
    <!-- flot charts -->
    <script src="../js/jquery.flot.js"></script>
    <script src="../js/jquery.flot.stack.js"></script>
    <script src="../js/jquery.flot.resize.js"></script>
    <script src="../js/theme.js"></script>
    <style type="text/css">
        .auto-style2 {
            width: 454px;
        }
        .auto-style3 {
            width: 100px;
        }
        .auto-style4 {
            width: 100px;
            height: 22px;
        }
        .auto-style5 {
            width: 454px;
            height: 22px;
        }
    </style>
</head>
<body>
    <header class="navbar navbar-inverse" role="banner">
        <ul class="nav navbar-nav pull-right hidden-xs">
           
           
            <li class="dropdown">
                <a href="#" class="dropdown-toggle hidden-xs hidden-sm" data-toggle="dropdown">
                    my account
                    <b class="caret"></b>
                </a>
                <ul class="dropdown-menu">
                    <li><a href="personal-info.html">Personal Info</a></li>
                    <li><a href="#">Setting</a></li>
                    
                </ul>
            </li>
            
            <li class="settings hidden-xs hidden-sm">
<a href="../LogoutPage.aspx" role="button">
                    <i class="icon-share-alt"></i>
                </a>
            </li>
        </ul>
    </header>

    
	<form id="form1" runat="server">
        
	<div class="templatemo-container">
<div class="col-lg-3 col-md-3 col-sm-3  black-bg left-container" id="leftlayer">
			<h1 class="logo-left hidden-xs margin-bottom-60" style="color:white">Logic</h1>			
			<div class="tm-left-inner-container">
				<ul class="nav nav-stacked templatemo-nav">
				  <li><a href="SSHome.aspx" >Home</a></li>
				  <li><a href="CompareThreeMonths.aspx" class="active"><i class="fa fa-shopping-cart fa-medium"></i>Department Request bar</a></li>
				  <li><a href="TrendForSupplier.aspx"><i class="fa fa-send-o fa-medium"></i>Trend for supplier</a></li>
				  <li><a href="ReportOrder.aspx"><i class="fa fa-comments-o fa-medium"></i>Reorder Chart</a></li>
				</ul>
			</div>

		</div> <!-- left section -->
        <div class="copyrights">Collect from <a href="http://www.mycodes.net/" ></a></div>
<div class="col-lg-9 col-md-9 col-sm-9  white-bg right-container" id="rightlayer">

			<h1 class="logo-right hidden-xs margin-bottom-60">University</h1>
            
           
        <div class="tm-right-inner-container" id="prelayer">
                <div> 
                
				<table><tr><td class="auto-style3">
                        <asp:Label ID="Label2" runat="server" Text="Month:"></asp:Label></td><td class="auto-style2">
                    <asp:DropDownList ID="DropDownListMonthA" runat="server" AutoPostBack="True">
                        
                                <asp:ListItem>1</asp:ListItem>
                                <asp:ListItem>2</asp:ListItem>
                                <asp:ListItem>3</asp:ListItem>
                                <asp:ListItem>4</asp:ListItem>
                                <asp:ListItem>5</asp:ListItem>
                                <asp:ListItem>6</asp:ListItem>
                                <asp:ListItem>7</asp:ListItem>
                                <asp:ListItem>8</asp:ListItem>
                                <asp:ListItem>9</asp:ListItem>
                                <asp:ListItem>10</asp:ListItem>
                                <asp:ListItem>11</asp:ListItem>
                                <asp:ListItem>12</asp:ListItem>

                    </asp:DropDownList>
                        <asp:CompareValidator ID="CompareValidator3" runat="server" ControlToCompare="DropDownListMonthA" ControlToValidate="DropDownListMonthC" Display="Dynamic" ErrorMessage="please select three different months              " ForeColor="Red" Operator="NotEqual"></asp:CompareValidator>
                    </td></tr>
                    <tr>
                        <td></td>
                        <td class="auto-style2">
                                <asp:DropDownList ID="DropDownListMonthB" runat="server" AutoPostBack="True">
                                <asp:ListItem>1</asp:ListItem>
                                <asp:ListItem>2</asp:ListItem>
                                <asp:ListItem>3</asp:ListItem>
                                <asp:ListItem>4</asp:ListItem>
                                <asp:ListItem>5</asp:ListItem>
                                <asp:ListItem>6</asp:ListItem>
                                <asp:ListItem>7</asp:ListItem>
                                <asp:ListItem>8</asp:ListItem>
                                <asp:ListItem>9</asp:ListItem>
                                <asp:ListItem>10</asp:ListItem>
                                <asp:ListItem>11</asp:ListItem>
                                <asp:ListItem>12</asp:ListItem>

                    </asp:DropDownList>
                        &nbsp;&nbsp;
                                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="DropDownListMonthA" ControlToValidate="DropDownListMonthB" CultureInvariantValues="True" Display="Dynamic" ErrorMessage="please select three different months              " Operator="NotEqual" ForeColor="Red"></asp:CompareValidator>
                        </td>
                    </tr>
                    <tr>
                        <td></td>
                        <td class="auto-style2">
                            <asp:DropDownList ID="DropDownListMonthC" runat="server" AutoPostBack="True">
                                <asp:ListItem>1</asp:ListItem>
                                <asp:ListItem>2</asp:ListItem>
                                <asp:ListItem>3</asp:ListItem>
                                <asp:ListItem>4</asp:ListItem>
                                <asp:ListItem>5</asp:ListItem>
                                <asp:ListItem>6</asp:ListItem>
                                <asp:ListItem>7</asp:ListItem>
                                <asp:ListItem>8</asp:ListItem>
                                <asp:ListItem>9</asp:ListItem>
                                <asp:ListItem>10</asp:ListItem>
                                <asp:ListItem>11</asp:ListItem>
                                <asp:ListItem>12</asp:ListItem>

                    </asp:DropDownList>

                        &nbsp;&nbsp;&nbsp;
                            <asp:CompareValidator ID="CompareValidator2" runat="server" ControlToCompare="DropDownListMonthB" ControlToValidate="DropDownListMonthC" Display="Dynamic" ErrorMessage="please select three different months              " Operator="NotEqual" ForeColor="Red"></asp:CompareValidator>

                        </td>
                    </tr>
                    <tr><td class="auto-style4">
                        <asp:Label ID="Label1" runat="server" Text="Department:"></asp:Label></td><td class="auto-style5">
                        <asp:DropDownList ID="DropDownListDepartment" runat="server" ></asp:DropDownList></td></tr>
                    <tr><td class="auto-style3">
                        &nbsp;</td><td class="auto-style2">
                        <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click"  CssClass="btn btn-info btn-sm"/></td></tr>

				</table>
              </div>
                <div>
                    <asp:Chart ID="Chart1" runat="server" OnLoad="Chart1_Load" Width="815px">
                        <Series>
                            <asp:Series  Name="Series1" Label="#VAL" Legend="Legend1" LegendText="Month">
                            </asp:Series>
                            <asp:Series  Name="Series2" Label="#VAL" Legend="Legend1" LegendText="Month">
                            </asp:Series>
                            <asp:Series  Name="Series3" Label="#VAL" Legend="Legend1" LegendText="Month">
                            </asp:Series>
                        </Series>
                        <ChartAreas>
                            <asp:ChartArea Name="ChartArea1"></asp:ChartArea>
                        </ChartAreas>
                        <Legends>
                            <asp:Legend Name="Legend1">
                            </asp:Legend>
                            <asp:Legend Name="Legend2">
                            </asp:Legend>
                            <asp:Legend Name="Legend3">
                            </asp:Legend>
                        </Legends>
                    </asp:Chart>
                </div>
                <div>
                    <asp:GridView ID="GridView1" runat="server"  width="900px" RowStyle-Height="35px"  HeaderStyle-Height="35px" CssClass="table table-striped table-bordered table-condensed"></asp:GridView>
                </div>
                 </div>

				<footer>
					<p class="col-lg-3 col-md-3  templatemo-copyright">Copyright &copy; 2015 Logic University designed by NUS ISS SA 40 Team 7 </p>
					<p class="col-lg-9 col-md-9  templatemo-social">
						<a href="#"><i class="fa fa-facebook fa-medium"></i></a>
						<a href="#"><i class="fa fa-twitter fa-medium"></i></a>
						<a href="#"><i class="fa fa-google-plus fa-medium"></i></a>
						<a href="#"><i class="fa fa-youtube fa-medium"></i></a>
						<a href="#"><i class="fa fa-linkedin fa-medium"></i></a>
					</p>
				</footer>
			</div>
        </div>	
		<!-- right section -->
    </form>
     <script>
         $(function () {
             console.log(window.innerHeight);
             var height = $("#prelayer").height() + 500;
             console.log(height);
             document.getElementById("leftlayer").setAttribute("style", "height:" + height + "px");
             document.getElementById("rightlayer").setAttribute("style", "height:" + height + "px");
         });
    </script>


</body>
    </html>