﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DepRepHome.aspx.cs" Inherits="LogicUniv1._1.webpage.deptEmpRep.DepEmpHome" %>

<!DOCTYPE html>
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
        .auto-style1 {
            text-align: right;
        }
        .auto-style3 {
            width: 249px;
        }
        .auto-style4 {
            width: 249px;
            height: 3px;
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

    <div>

    </div>
	<div class="templatemo-container">
<div class="col-lg-3 col-md-3 col-sm-3  black-bg left-container" id="leftlayer">
			<h1 class="logo-left hidden-xs margin-bottom-60" style="color:white">Logic</h1>			
			<div class="tm-left-inner-container">
				<ul class="nav nav-stacked templatemo-nav">
				  <li><a href="DepRepHome.aspx" class="active"><i class="fa fa-list-alt fa-medium"></i>Current Disbursement</a></li>
				  <li><a href="ViewHistoryDisbursement.aspx"><i class="fa fa-book fa-medium"></i>History Disbursement</a></li>
				  <li><a href="ChangeCollectionPoint.aspx"><i class="fa fa-flag-checkered fa-medium"></i>Change Collection Point</a></li> 
                    <li><a href="../deptEmp/EmpHome.aspx"  ><i class="fa fa-money fa-medium"></i>Go to Stationery Shop</a></li>
				</ul>
			</div>

		</div> <!-- left section -->
        <div class="copyrights">Collect from <a href="http://www.mycodes.net/" ></a></div>
<div class="col-lg-9 col-md-9 col-sm-9  white-bg right-container" id="rightlayer">

			<h1 class="logo-right hidden-xs margin-bottom-60">University</h1>
            
<!-- Start your part from here  -->
            
           


                   
			<div class="tm-right-inner-container" id="prelayer" style="padding-left:200px">
               
    <div>
    <div>

    </div>
        <table class="table-products">
            <tr>
                <td>
                    <table class="table-products">
                        <tr>
                            <td>
                                <table class="table-products">
                                    <tr>
                                        <td>

        <asp:Label ID="Label1" runat="server" ForeColor="#CC0000" style="text-align: center" Font-Size="Medium"></asp:Label>

                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td>
                    <table class="table-products">
                        <tr>
                            <td class="auto-style3">
                                <asp:Label ID="contacName" runat="server"></asp:Label>
                            </td>
                            <td class="auto-style1" rowspan="3">
               <asp:Button ID="confirmBtn" runat="server" CssClass="btn btn-success" position="relative" Text="Confirm Receive" top="10px" Width="135px" OnClick="confirmBtn_Click" />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style4">
                    <asp:Label ID="address" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style3">
                                <asp:Label ID="colldate" runat="server"></asp:Label>
                                <br />
                                <table class="table-products">
                                    <tr>
                                        <td>
                                <asp:Label ID="time" runat="server"></asp:Label>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table>
                    <table class="table-products">
                        <tr>
                            <td>
               <asp:Label ID="Labelflag" runat="server" ForeColor="Red"></asp:Label>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    
    </div>
                <div> 
                    
                    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                        <ContentTemplate>
                            <asp:ScriptManager ID="ScriptManager1" runat="server">
                            </asp:ScriptManager>
                            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" CssClass="table table-striped table-bordered table-condensed" OnPageIndexChanging="GridView1_PageIndexChanging" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                                <Columns>
                                    <asp:ImageField DataImageUrlField="Photourl" HeaderText="Photo">
                                        <ControlStyle Height="100px" Width="100px" />
                                    </asp:ImageField>
                                    <asp:BoundField DataField="Description" HeaderText="Stationery Description" />
                                    <asp:BoundField DataField="CollectQty" HeaderText="Item Quantity " />
                                </Columns>
                            </asp:GridView>
                        </ContentTemplate>
                    </asp:UpdatePanel>
              </div>
                 </div>
            

           







 <!-- end your part from here  -->
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
     <script>
         $(function () {
             console.log(window.innerHeight);
             var height = $("#prelayer").height() + 1000;
             console.log(height);
             document.getElementById("leftlayer").setAttribute("style", "height:" + height + "px");
             document.getElementById("rightlayer").setAttribute("style", "height:" + height + "px");
         });
    </script>


          


    </form>
</body>
    </html>
