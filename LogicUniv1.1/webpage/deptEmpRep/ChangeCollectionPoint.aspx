﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ChangeCollectionPoint.aspx.cs" Inherits="LogicUniv1._1.webpage.deptEmpRep.ChangeCollectionPoint" %>

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
        .auto-style2 {
            text-align: center;
        }
        .auto-style4 {
            width: 178%;
        }
        .auto-style5 {
            text-align: right;
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
				  <li><a href="DepRepHome.aspx" ><i class="fa fa-list-alt fa-medium"></i>Current Disbursement</a></li>
				  <li><a href="ViewHistoryDisbursement.aspx"><i class="fa fa-book fa-medium"></i>History Disbursement</a></li>
				  <li><a href="ChangeCollectionPoint.aspx"  class="active"><i class="fa fa-flag-checkered fa-medium"></i>Change Collection Point</a></li> 
				<li><a href="../deptEmp/EmpHome.aspx"  ><i class="fa fa-money fa-medium"></i>Go to Stationery Shop</a></li>
                </ul>
			</div>

		</div> <!-- left section -->
        <div class="copyrights">Collect from <a href="http://www.mycodes.net/" ></a></div>
<div class="col-lg-9 col-md-9 col-sm-9  white-bg right-container" id="rightlayer">

			<h1 class="logo-right hidden-xs margin-bottom-60">University</h1>
            
           

            
           
			<div class="tm-right-inner-container" style="padding-left:220px"id="prelayer">>
                <div> 

               <div class="auto-style2">
                   <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                       <ContentTemplate>
                           <asp:ScriptManager ID="ScriptManager1" runat="server">
                           </asp:ScriptManager>
                           <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="table table-bordered table-condensed" OnPageIndexChanging="GridView1_PageIndexChanging" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                               <Columns>
                                   <asp:BoundField DataField="address" HeaderText="Collect Point" />
                                   <asp:BoundField DataField="time" HeaderText="Collect Time" />
                                   <asp:CommandField HeaderText="Action" ShowSelectButton="True">
                                   <ControlStyle CssClass="btn btn-info" />
                                   </asp:CommandField>
                               </Columns>
                               <EditRowStyle Height="35px" />
                               <HeaderStyle Height="35px" />
                               <SelectedRowStyle BackColor="#99FFCC" />
                           </asp:GridView>
                       </ContentTemplate>
                   </asp:UpdatePanel>
                   <%--  --%>                    <%--  --%>
                       <div class="auto-style2">
                                        <%-- bootstrap --%>
                                        <table class="auto-style4">
                                            <tr>
                                                <td class="auto-style2">

                                       

                                                    <table class="table-products">
                                                        <tr>
                                                            <td>
                                                                <asp:Label ID="Label2" runat="server" ForeColor="Red"></asp:Label>
                                                            </td>
                                                            <td class="auto-style5">

                                       

                                        <button class="btn btn-info" data-target="#myModal" data-toggle="modal" type="button" style="width: 240px" >
                                        <div>Change Collection Point</div>
                                        </button>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                        </td>
                                                </tr>
                                            </table>

                                       

                                        <!-- Modal -->
                                        <div id="myModal" aria-labelledby="myModalLabel" class="modal fade" role="dialog" tabindex="-1">
                                            <div class="modal-dialog" role="document">
                                                <div class="modal-content">
                                                    <div class="modal-header">
                                                        <button aria-label="Close" class="close" data-dismiss="modal" type="button">
                                                            <span aria-hidden="true">×</span>
                                                        </button>
                                                        <h4 id="myModalLabel" class="modal-title"><center>Are you sure to change your collecion point? </center>
                                                            <h4></h4>
                                                        </h4>
                                                    </div>
                                                    <div class="modal-body">
                                                        <%-- bootstrap --%>                                                     
                                                     <br />
                                                       <p style="text-align: center"> Please Confirm that you will change you stationery point to: </p>
                                                        
                                                        <br />
                                                        <p style="text-align: center">An  Email will be sent to your subordinates and StoreClerk as soon as you confirm.</p>
                                                    
                                                    </div>
                                                    <div class="modal-footer">
                                                        <button class="btn btn-default" data-dismiss="modal" type="button">
                                                            Close
                                                        </button>
                                                        
                                                            <asp:Button ID="Button1" runat="server" CssClass="btn btn-primary" Text="Confirm" OnClick="ConfirmBtn_Click"/>
                                                        
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                    <!-- Button trigger modal -->





                    </div>

                    <%--  --%>                    <%--  --%>


            </div>



              </div>
                 </div>

				<footer>
					<p class="col-lg-3 col-md-3  templatemo-copyright">Copyright &copy;2015  Logic University designed by NUS ISS SA 40 Team 7 </p>
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
        var height = (window.innerHeight);
                console.log(height);
                document.getElementById("leftlayer").setAttribute("style", "height:" + height + "px");
                document.getElementById("rightlayer").setAttribute("style", "height:" + height + "px");
            });
</script>
        <script>
            $(function () {
                $("#Button1").on("click", function () {

                    document.getElementById("Button1").setAttribute("value", "Please Wait");
                });
            });
    </script>
</body>
    </html>