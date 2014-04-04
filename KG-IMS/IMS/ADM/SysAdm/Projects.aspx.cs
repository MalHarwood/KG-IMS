using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace KG_IMS.IMS.ADM {
  public partial class SysAdm_Projects : System.Web.UI.Page {
    protected void Page_Load(object sender, EventArgs e) {

      if (!IsPostBack) {
        gvbind();
      }
    }

    protected void gvbind() {
      KG_IMS.DAL.KG_IMSDataContext db = new DAL.KG_IMSDataContext();

      var proj = from c in db.s_Projects select c;

      //if (!proj.Equals(null)) {
      GridView1.DataSource = proj;
      GridView1.DataBind();
      //} else {
      //  ds.Tables[0].Rows.Add(ds.Tables[0].NewRow());
      //  GridView1.DataSource = ds;
      //  GridView1.DataBind();
      //  int columncount = GridView1.Rows[0].Cells.Count;
      //  GridView1.Rows[0].Cells.Clear();
      //  GridView1.Rows[0].Cells.Add(new TableCell());
      //  GridView1.Rows[0].Cells[0].ColumnSpan = columncount;
      //  GridView1.Rows[0].Cells[0].Text = "No Records Found";
      //}
    }

    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e) {
      GridViewRow row = (GridViewRow)GridView1.Rows[e.RowIndex];

      KG_IMS.DAL.KG_IMSDataContext db = new DAL.KG_IMSDataContext();

      var proj = new KG_IMS.DAL.s_Projects() {
        ProjGUID = new Guid(GridView1.DataKeys[e.RowIndex].Value.ToString())
      };

      db.s_Projects.Attach(proj);
      db.s_Projects.DeleteOnSubmit(proj);
      gvbind();
    }

    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e) {
      GridView1.EditIndex = e.NewEditIndex;
      gvbind();
    }

    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e) {
      GridViewRow row = (GridViewRow)GridView1.Rows[e.RowIndex];

      GridView1.EditIndex = -1;

      KG_IMS.DAL.KG_IMSDataContext db = new DAL.KG_IMSDataContext();

      var proj = db.s_Projects.Single(p => p.ProjGUID == new Guid(GridView1.DataKeys[e.RowIndex].Value.ToString()));

      proj.ProjectName = ((TextBox)row.FindControl("txtProjectName")).Text.Trim();

      db.SubmitChanges();
      gvbind();
    }

    protected void GridViewSample_RowCommand(object sender, GridViewCommandEventArgs e) {
      if (e.CommandName.Equals("Insert")) {
        var proj = new KG_IMS.DAL.s_Projects{
          ProjectName = ((TextBox)GridView1.FooterRow.FindControl("txtAddProjectName")).Text.Trim()
      };
        KG_IMS.DAL.KG_IMSDataContext db = new DAL.KG_IMSDataContext();
        db.s_Projects.InsertOnSubmit(proj);

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