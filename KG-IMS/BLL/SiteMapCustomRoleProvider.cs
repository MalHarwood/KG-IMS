using System;
using System.Collections.Specialized;
using System.Configuration.Provider;
using System.Web.Security;

namespace KG_IMS.BLL {
  public class SiteMapCustomRoleProvider : RoleProvider {

    /// <summary>
    /// Gets a list of the roles that a specified user is in for the configured applicationName.
    /// </summary>
    /// <param name="username">The user to return a list of roles for.</param>
    /// <returns>
    /// A string array containing the names of all the roles that the specified user is in for the configured applicationName.
    /// </returns>
    public override string[] GetRolesForUser(string username) {
      UserSecurity us = new UserSecurity(username);
      string[] roles = new string[1];

      roles[0] = us.CurrentUserRoleName();

      return roles;
    }

    private string pApplicationName;

    public override void Initialize(string name, NameValueCollection config) {
      // Initialize the abstract base class.
      base.Initialize(name, config);

      if (config["applicationName"] == null || config["applicationName"].Trim() == "") {
        //pApplicationName = System.Web.Hosting.HostingEnvironment.ApplicationVirtualPath;
        pApplicationName = "KG-IMS";
      } else {
        //pApplicationName = config["applicationName"];
        pApplicationName = "KG-IMS";
      } 
      
      
    }

    public override string ApplicationName {
      get {

        return pApplicationName; }
      set { pApplicationName = value; }
    }

    public override void AddUsersToRoles(string[] usernames, string[] rolenames) {

    }

    public override void CreateRole(string rolename) {
    }

    public override bool DeleteRole(string rolename, bool throwOnPopulatedRole) {
      return false;
    }

    public override string[] GetAllRoles() {
      string[] roles = new string[1];

      roles[0] = "";

      return roles;
    }

    public override string[] GetUsersInRole(string rolename) {
      string[] roles = new string[1];

      roles[0] = "";

      return roles;
    }

    public override bool IsUserInRole(string username, string rolename) {
      return false;
    }

    public override void RemoveUsersFromRoles(string[] usernames, string[] rolenames) {
    }

    public override bool RoleExists(string rolename) {
      return false;
    }

    public override string[] FindUsersInRole(string rolename, string usernameToMatch) {
      string[] roles = new string[1];

      roles[0] = "";

      return roles;
    }

  }
}