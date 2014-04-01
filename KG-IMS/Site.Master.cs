using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace KG_IMS {
  public partial class Site1 : System.Web.UI.MasterPage {
    protected void Page_Load(object sender, EventArgs e) {
      //bool isAuthorized = false;
      //var AuthorizedRoles = SiteMap.CurrentNode.Roles; //obtain the list of authorized roles for the current page
      //var UserRoles = Roles.GetRolesForUser(); //obtain the list of roles for the logged-in user

      //foreach (string authorizedRoleName in AuthorizedRoles) {
      //  if (isAuthorized == true) //already authorized. no need to check anymore
      //    break;

      //  if (authorizedRoleName.Trim() == "*") // this page can be accessed by everyone
      //  {
      //    isAuthorized = true;
      //    break;
      //  }

      //  foreach (string userRoleName in UserRoles) {
      //    if (userRoleName.Trim() == authorizedRoleName.Trim()) {
      //      isAuthorized = true;
      //      break;
      //    }
      //  }
      //}

      //if (isAuthorized == false)
      //  Response.End(); // unauthorised user; kill the page.
    }

    protected void Menu1_MenuItemDataBound(object sender, MenuEventArgs e) {
      //SiteMapNode node = (SiteMapNode)e.Item.DataItem;
      //if (node["HideFromMenu"] == "true") {
      //  if (e.Item.Parent != null) //if this item has a parent..
      //    e.Item.Parent.ChildItems.Remove(e.Item); //use parent to remove child..
      //  else {
      //    //TreeView1.Items.Remove(e.Item); //else.. remove from menu itself.
      //  }
      //}
    }
  }
}