using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace KG_IMS.BLL {
  public class UserSecurity {
    private string currentUser;

    public UserSecurity(string username) {
      currentUser = username;
    }

    //public string CurrentUserName() {
    //  return HttpContext.Current.User.Identity.Name.ToString();
    //}

    public int CurrentUserRole() {
      if (currentUser.Length < 1)
        return 0;
      else {
        KG_IMS.DAL.SystemDataContext db = new DAL.SystemDataContext();

        var personRole = db.v_PeopleRole.Single(p => p.Username.Equals(currentUser));

        db.v_PeopleRole.Attach(personRole);

        return personRole.SecurityLevel ?? 0;
      }
    }

    public string CurrentUserRoleName() {
      if (currentUser.Length < 1)
        return "Guest";
      else {
        //KG_IMS.DAL.SystemDataContext db = new DAL.SystemDataContext();

        //var personRole = db.v_PeopleRole.Single(p => p.Username.Equals(currentUser));

        //if (personRole.Username.Equals(null)) {
        //  db.v_PeopleRole.Attach(personRole);
        //  return personRole.Name;
        //} else
        return "Guest2";
      }
    }
  }
}