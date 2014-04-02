using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace KG_IMS.IMS.ADM {
  public partial class SysAdm_WBS : System.Web.UI.Page {
    protected void Page_Load(object sender, EventArgs e) {
      if (!IsPostBack) {
        gvbind();
      }
    }

    protected void gvbind() {
      KG_IMS.DAL.SystemDataContext db = new DAL.SystemDataContext();

      var wbs = from c in db.s_WBS select c;

      GridView1.DataSource = wbs;
      GridView1.DataBind();
    }

    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e) {
      GridViewRow row = (GridViewRow)GridView1.Rows[e.RowIndex];

      KG_IMS.DAL.SystemDataContext db = new DAL.SystemDataContext();

      var wbs = new KG_IMS.DAL.s_WBS() {
        WBSGUID = new Guid(GridView1.DataKeys[e.RowIndex].Value.ToString())
      };

      db.s_WBS.Attach(wbs);
      db.s_WBS.DeleteOnSubmit(wbs);
      gvbind();
    }

    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e) {
      GridView1.EditIndex = e.NewEditIndex;
      gvbind();
    }

    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e) {
      GridViewRow row = (GridViewRow)GridView1.Rows[e.RowIndex];

      GridView1.EditIndex = -1;

      KG_IMS.DAL.SystemDataContext db = new DAL.SystemDataContext();

      var wbs = db.s_WBS.Single(p => p.WBSGUID == new Guid(GridView1.DataKeys[e.RowIndex].Value.ToString()));

      wbs.Description = ((TextBox)row.FindControl("txDescription")).Text.Trim();

      db.SubmitChanges();
      gvbind();
    }

    protected void GridViewSample_RowCommand(object sender, GridViewCommandEventArgs e) {
      if (e.CommandName.Equals("Insert")) {
        var wbs = new KG_IMS.DAL.s_WBS {
          Description = ((TextBox)GridView1.FooterRow.FindControl("txtAddDescription")).Text.Trim()
        };
        KG_IMS.DAL.SystemDataContext db = new DAL.SystemDataContext();
        db.s_WBS.InsertOnSubmit(wbs);

        try {
          db.SubmitChanges();
        } catch (Exception ex) {
          // Make some adjustments. 
          // ... 
          // Try again.
          ClientScript.RegisterStartupScript(this.GetType(), "Insert Alert", "alert('" + ex.Message + "');", true);
          //db.SubmitChanges();
        }
      }
    }

    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e) {
      GridView1.PageIndex = e.NewPageIndex;
      gvbind();
    }

    protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e) {
      GridView1.EditIndex = -1;
      gvbind();
    }

  }
}