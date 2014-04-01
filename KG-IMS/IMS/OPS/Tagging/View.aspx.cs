using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RiggingAndElectrical {
  public partial class View : System.Web.UI.Page {
    public string SQL;

    DataTable gv_dt(string sort, string sort_dir) {
      string queryType = Request.QueryString["type"];

      if (queryType.ToLower().Equals("electrical")) {
        SQL = "SELECT ID, Description, Category, SerialNumber, Location, InService, InspectionStatus ";
        SQL += "FROM Tools ORDER BY [" + sort + "] " + sort_dir;
      } else if (queryType.ToLower().Equals("rigging")) {
        SQL = "SELECT ID, Description, Category, SerialNumber, Location, InService, InspectionStatus ";
        SQL += "FROM Rigging ORDER BY [" + sort + "] " + sort_dir;
      } else {

      }

      //SqlDataSource SqlDataSource1 = new SqlDataSource();
      SqlConnection conn = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["KG_IMSConnectionString"].ConnectionString);
      SqlCommand cmd = new SqlCommand(SQL, conn);
      conn.Open();

      // create data adapter
      SqlDataAdapter da = new SqlDataAdapter(cmd);
      // this will query your database and return the result to your datatable
      DataTable dt = new DataTable();
      da.Fill(dt);
      conn.Close();
      da.Dispose();


      return dt;
    }

    protected void Page_Load(object sender, EventArgs e) {

      if (!IsPostBack) {

        GridView1.DataSource = gv_dt("ID", "ASC");
        GridView1.DataBind();
      }
    }

    protected void GridView_Sorting(object sender, GridViewSortEventArgs e) {

      GridView1.DataSource = gv_dt(e.SortExpression, ConvertSortDirection(e.SortDirection));
      GridView1.DataBind();
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