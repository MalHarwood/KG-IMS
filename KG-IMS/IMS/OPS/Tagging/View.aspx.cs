using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace KG_IMS.IMS.OPS.Tagging {
  public partial class View : System.Web.UI.Page {
    protected void Page_Load(object sender, EventArgs e) {

      if (!IsPostBack) {
        gvbind(Request.QueryString["type"]);

      }
    }

    protected void gvbind(string EquipmentType) {
      KG_IMS.DAL.KG_IMSDataContext db = new DAL.KG_IMSDataContext();

      var wbs = from c in db.v_OPS_T_Equipment where c.Type.ToLower() == EquipmentType.ToLower() select c;

      GridView1.DataSource = wbs;
      GridView1.DataBind();

    }


    protected void GridView_Sorting(object sender, GridViewSortEventArgs e) {

      //GridView1.DataSource = gv_dt(e.SortExpression, ConvertSortDirection(e.SortDirection));
      //GridView1.DataBind();
    }

    private string ConvertSortDirection(SortDirection sortDirection) {
      string newSortDirection = String.Empty;

      switch (sortDirection) {
        case SortDirection.Ascending:
          newSortDirection = "ASC";
          break;

        case SortDirection.Descending:
          newSortDirection = "DESC";
          break;
      }

      return newSortDirection;
    }

  }
}