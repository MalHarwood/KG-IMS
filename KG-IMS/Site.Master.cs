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
      //TreeView1.ExpandDepth = 1;
      try {
        TreeView1.DataBind();
        string currentNode = SiteMap.CurrentNode.Title;


        //FIND THE CURRENT NODE
        Boolean nodeFound = false;
        foreach (TreeNode node in TreeView1.Nodes) {
          if (node.Text == currentNode) {
            node.Expand();
            nodeFound = true;
          } else if (!nodeFound) {
            node.Expand();
            if (node.ChildNodes.Count > 0) {
              nodeFound = findCurrentNode(currentNode, node);
              if (!nodeFound) {
                node.Collapse();
              }
            } else {
              node.Collapse();
            }
          }
        }
      } catch  {
      }
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

    protected static Boolean findCurrentNode(string currentNode, TreeNode node) {
      Boolean nodeFound = false;


      foreach (TreeNode childnode in node.ChildNodes) {
        if (childnode.Text == currentNode) {
          childnode.Expand();
          nodeFound = true;
        } else if (!nodeFound) {
          childnode.Expand();
          if (childnode.ChildNodes.Count > 0) {
            nodeFound = findCurrentNode(currentNode, childnode);
            if (!nodeFound) {
              childnode.Collapse();
            }
          } else {
            childnode.Collapse();
          }
        }
      }
      return nodeFound;
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