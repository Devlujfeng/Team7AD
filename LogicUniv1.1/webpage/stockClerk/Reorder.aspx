﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Reorder.aspx.cs" Inherits="LogicUniv1._1.webpage.stockClerk.Reorder"EnableEventValidation="false" %>


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
</head>
<body>
    <header class="navbar navbar-inverse" role="banner">
        <ul class="nav navbar-nav pull-right hidden-xs">
           
            <li class="dropdown">
                <a href="#" class="dropdown-toggle hidden-xs hidden-sm" data-toggle="dropdown">
                    Your Account
                    <b class="caret"></b>
                </a>
                <ul class="dropdown-menu">
                    <li><a href="personal-info.html">Personal Info</a></li>
                    <li><a href="personal-info.html">Setting</a></li>
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
				  <li><a href="ClerkManageRequisition.aspx"><i class="fa fa-file-word-o fa-medium"></i>Manage Requisition</a></li>
				  <li><a href="ClerkInventory.aspx" ><i class="fa fa-shopping-cart fa-medium"></i>Inventory</a></li>
                <li><a href="Reorder.aspx" class="active"><i class="fa fa-file-word-o fa-medium"></i>Purchase Order</a></li>    
                <li><a href="ClerkRetrivalForm.aspx"><i class="fa fa-search-plus fa-medium"></i>Retrieve Form</a></li>
                  <li><a href="ViewCurrentPendingByItems.aspx"><i class="fa fa-search-plus fa-medium"></i>Pending Form</a></li>
                  <li><a href="CheckCurrentDisbursementList.aspx"><i class="fa fa-comments-o fa-medium"></i>Disbursement</a></li>
				  <li><a href="ClerkReportDiscrepancy.aspx"><i class="fa  fa-exclamation-triangle fa-medium"></i>Discrepancy</a></li>
				  <li><a href="ClerkMainSupplierPengxiaomeng.aspx"><i class="fa fa-reply-all fa-medium"></i>Manage Supplier</a></li>
                 
				</ul>
			</div>

		</div> <!-- left section -->
        <div class="copyrights">Collect from <a href="http://www.mycodes.net/" ></a></div>
<div class="col-lg-9 col-md-9 col-sm-9  white-bg right-container" id="rightlayer">

			<h1 class="logo-right hidden-xs margin-bottom-60">University</h1>
            
           
			<div class="tm-right-inner-container" id="prelayer">
                <div> 
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1"  Width="584px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" PageSize="100" CssClass="table table-striped table-bordered table-condensed">
                        <Columns>
                            <asp:BoundField DataField="purchaserId" HeaderText="PO Number" />
                            <asp:BoundField DataField="purchaseDate" HeaderText="Available Date" />
                            <asp:CommandField AccessibleHeaderText="Details" HeaderText="Details" SelectText="Details" ShowSelectButton="True" />
                            <asp:BoundField DataField="status" HeaderText="status" SortExpression="status" />
                            <asp:TemplateField HeaderText="Choose Purchase Order">
                                <ItemTemplate>
                                    <asp:CheckBox ID="Choose" runat="server" />
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                        <EditRowStyle Height="35px" />
                        <HeaderStyle Height="35px" /> 
                        <RowStyle Height="35px" /> 
                    </asp:GridView>
                     <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:LogicUnivSystemConnectionString %>" SelectCommand="SELECT [purchaserId], [purchaseDate], [status] FROM [purchase] WHERE ([status] = @status)">  
                     <SelectParameters>  
                     <asp:Parameter DefaultValue="waiting" Name="status" Type="String" />  
                      </SelectParameters>  
                    </asp:SqlDataSource>  

                    <asp:Button ID="Order" runat="server" Text="Generate Order" Width="136px" OnClick="Order_Click" data-toggle="modal" data-target="#myModal1" CssClass="btn btn-info"/>
                    <asp:Button ID="Confirm" runat="server" OnClick="Confirm_Click" style="margin-left: 249px" Text="Confirm" Width="98px" data-toggle="modal" data-target="#myModal" CssClass="btn btn-info"/>
                    <asp:Button ID="Cancel" runat="server" OnClick="Cancel_Click" Text="Cancel" Width="89px" CssClass="btn btn-info" />
              </div>
                 </div>
                 <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">  
   <div class="modal-dialog">  
     <div class="modal-content">  
       <div class="modal-header">  
         <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>  
        <h4 class="modal-title">Are you sure to confirm this purchase orders?</h4>  
     </div>  
     <div class="modal-body">  
      <p style="font-size:18px"> Once confirmed, the inventory will be updated immdately and can not adjust back!</p>  
      </div>  
       <div class="modal-footer">  
                <asp:Button ID="Close" class="btn btn-default" data-dismiss="modal" runat="server" Text="Close" />  
            <asp:Button ID="Button1" class="btn btn-primary" runat="server" Text="Confirm" OnClick="Confirm_Click" CssClass="btn btn-primary" />  
       </div>  
    </div><!-- /.modal-content -->  
   </div><!-- /.modal-dialog -->  
 </div><!-- /.modal -->  
                   <div class="modal fade" id="myModal1" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">  
   <div class="modal-dialog">  
     <div class="modal-content">  
       <div class="modal-header">  
         <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>  
        <h4 class="modal-title">Are you sure to generate orders?</h4>  
     </div>  
     <div class="modal-body">  
      <p style="font-size:18px"> Once confirmed, items whose balance was lower than reorderlevel will be added in a new purchase order immedately</p>  
      </div>  
       <div class="modal-footer">  
                <asp:Button ID="Button2" class="btn btn-default" data-dismiss="modal" runat="server" Text="Close" />  
            <asp:Button ID="Button3" class="btn btn-primary" runat="server" Text="Confirm" OnClick="Order_Click" CssClass="btn btn-primary" />  
       </div>  
    </div><!-- /.modal-content -->  
   </div><!-- /.modal-dialog -->  
 </div><!-- /.modal -->  
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
