using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace KG_IMS.IMS.HSE {
  public partial class PersonDetails : System.Web.UI.Page {
    protected void Page_Load(object sender, EventArgs e) {
      if (!IsPostBack) {
        if((Request["PersonGUID"] + "").Length>0) {

        } else {
          // current user
          txtUsername.Text = HttpContext.Current.User.Identity.Name.ToString();
        }
      }
    }

    protected void btnSave_Click(Object sender,
                           EventArgs e) {

    }

    protected void btnCopy_Click(Object sender,
                         EventArgs e) {

    }

    protected void btnDelete_Click(Object sender,
                         EventArgs e) {

    }


  }
}