<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CurrentRequisitionDetails.aspx.cs" Inherits="LogicUniv1._1.webpage.deptEmp.CurrentRequisitionDetails" %>

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
        <script src="../js/handlebars-v4.0.2.js"></script>
    <!-- knob -->
    <script src="../js/jquery.knob.js"></script>
    <!-- flot charts -->
    <script src="../js/jquery.flot.js"></script>
    <script src="../js/jquery.flot.stack.js"></script>
    <script src="../js/jquery.flot.resize.js"></script>
    <script src="../js/theme.js"></script>
    <script>
        $(function () {
            var roleId = "<%= Session["userRole"]%>";
            console.log(roleId);
            if (roleId == 1) {
                document.getElementById("lead").setAttribute("href", "../DeptHead/HeadHome.aspx");
            }
            else if (roleId == 3) {
                document.getElementById("lead").setAttribute("href", "../deptEmpRep/DepRepHome.aspx");
            }
            else {
                $("#lead").remove();
            }
        });
    </script>

    <style type="text/css">
        .auto-style1 {
            width: 212px;
        }
        .auto-style2 {
            width: 206px;
        }
        .auto-style3 {
            width: 212px;
            text-align: left;
        }
        .auto-style4 {
            width: 206px;
            text-align: left;
        }
        .auto-style5 {
            text-align: left;
        }
        .auto-style6 {
            width: 113%;
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
                    <li><a href="#">Personal Info</a></li>
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
s

    
	<form id="form1" runat="server">
        
	<div class="templatemo-container">
		<div class="col-lg-3 col-md-3 col-sm-3  black-bg left-container" id="leftlayer">
			<h1 class="logo-left hidden-xs margin-bottom-60" style="color:white">Logic</h1>			
			<div class="tm-left-inner-container">
				<ul class="nav nav-stacked templatemo-nav">
				  <li><a href="EmpHome.aspx" ><i class="fa fa-home fa-medium"></i>Homepage</a></li>
				  <li><a href="PreviousRequisition.aspx" ><i class="fa fa-shopping-cart fa-medium"></i>Previous Requisition</a></li>
				  <li><a href="CurrentRequisition.aspx" class="active"><i class="fa fa-send-o fa-medium"></i>Current Requisition</a></li>
				 <li><a id="lead"><i class="fa fa-home fa-medium"></i>Back To WorkStation</a></li>
				</ul>
			</div>

		</div> <!-- left section -->
        <div class="copyrights">Collect from <a href="http://www.mycodes.net/" ></a></div>
  		<div class="col-lg-9 col-md-9 col-sm-9  white-bg right-container" id="rightlayer">

			<h1 class="logo-right hidden-xs margin-bottom-60">University</h1>

			<div class="tm-right-inner-container" style="padding-left:80px">
                <div> 
                    &nbsp&nbsp&nbsp&nbsp
                    &nbsp&nbsp&nbsp&nbsp
                    <br>
                    <table class="auto-style6">
                        <tr>
                            <td class="auto-style3"> 
                    <asp:Label ID="Label1" runat="server" Text="Requisition Id : " Font-Size="Small"></asp:Label>
                                <asp:Label ID="Label4" runat="server"></asp:Label>
                            </td>
                            <td class="auto-style4">
                    <asp:Label ID="Label2" runat="server" Text="Status:" Font-Size="Small"></asp:Label>
                                <asp:Label ID="Label6" runat="server"></asp:Label>
                            </td>
                            <td class="auto-style5">
                    <asp:Label ID="Label3" runat="server" Text="Collection Point :" Font-Size="Small"></asp:Label>
                                <asp:Label ID="Label5" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style1">&nbsp;</td>
                            <td class="auto-style2">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                    </table>
                    <br>
                    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                      <ContentTemplate>
                         <asp:ScriptManager ID="ScriptManager1" runat="server">
                          </asp:ScriptManager> 
                              <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" OnPageIndexChanging="GridView1_PageIndexChanging1" PageSize="5" Width="786px" CssClass="table table-striped table-bordered table-condensed">
                                    <Columns>
                                        <asp:ImageField DataImageUrlField="photourl" HeaderText="Photo">
                                            <ControlStyle Height="70px" Width="70px" />
                                        </asp:ImageField>
                                        <asp:BoundField DataField="Description" HeaderText="Name" />
                                        <asp:BoundField DataField="Number" HeaderText="Number" />
                                    </Columns>
                                    <EditRowStyle Height="35px" />
                                    <HeaderStyle Height="35px" />
                    </asp:GridView>
                    </ContentTemplate>
               </asp:UpdatePanel>
                    <br>
                    <asp:Button ID="Button1" runat="server" Text="Back" OnClick="Button1_Click" CssClass="btn btn-info" Height="28px" Width="89px" />
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
        var height = (window.innerHeight);
                console.log(height);
                document.getElementById("leftlayer").setAttribute("style", "height:" + height + "px");
                document.getElementById("rightlayer").setAttribute("style", "height:" + height + "px");
            });
</script>

</body>
    </html>