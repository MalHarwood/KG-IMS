using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RiggingAndElectrical {
  public partial class Default : System.Web.UI.Page {
    protected void Page_Load(object sender, EventArgs e) {

    }

    protected void Button1_Click(object sender, EventArgs e) {
      Response.Redirect("ViewDetails.aspx?type=rigging");
    }

    protected void Button2_Click(object sender, EventArgs e) {
      Response.Redirect("ViewDetails.aspx?type=electrical");
    }

    protected void Button3_Click(object sender, EventArgs e) {
      Response.Redirect("View.aspx?type=rigging");
    }

    protected void Button4_Click(object sender, EventArgs e) {
      Response.Redirect("View.aspx?type=electrical");
    }

    protected void Button5_Click(object sender, EventArgs e) {
    }

    protected void Button6_Click(object sender, EventArgs e) {
    }
  }
}