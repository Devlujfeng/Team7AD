﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ClassLibraryBL.Controller.stockClerk;
using ClassLibraryBL.Entities;

namespace LogicUniv1._1.webpage.stockClerk
{
    public partial class ClerkManageRequisition : System.Web.UI.Page
    {
        ProcessRequistionController processRequistionController = new ProcessRequistionController();
        protected void Page_Load(object sender, EventArgs e)
        {

            User u = (User)Session["UserEntity"];
            if (u == null || u.RoleId != 4)
            {
                Response.Redirect("../Security.aspx");
            }

            Object o= processRequistionController.getRequisitionData();
            GridView1.DataSource = o;
            GridView1.DataBind();
      
        }

        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;
            GridView1.DataBind();
        }
    }
}