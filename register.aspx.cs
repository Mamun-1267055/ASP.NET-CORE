using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
using Microsoft.Owin.Security;
using System;

using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using Work01.DAL;
using Work01.Models;

namespace Work01
{
    public partial class register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        [Obsolete]
        //protected void btnLogin_Click(object sender, EventArgs e)
        //{
        //    int authenticated = 0;
        //    AppUser obj = new AppUser();
        //    obj.UserName = txtUserName.Text;
        //    obj.Password = txtPassword.Text;
        //    string encryptedPass = FormsAuthentication.HashPasswordForStoringInConfigFile(obj.Password, "SHA1");
        //    UserGateWay getObj = new UserGateWay();
        //    authenticated = getObj.AuthenticateUser(obj.UserName, encryptedPass);
        //    if (authenticated == 1)
        //    {
        //        FormsAuthentication.RedirectFromLoginPage(obj.UserName, chkBoxRememberMe.Checked);
        //    }
        //    else
        //    {
        //        lblMessage.Text = "Invalid UserName and/or Password";
        //    }
        //}

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            var store = new UserStore<IdentityUser>();
            var manager = new UserManager<IdentityUser>(store);
            var user = new IdentityUser { UserName = this.txtUserName.Text };
            var created = manager.Create(user, this.txtPassword.Text);

            if (created.Succeeded)
            {
                var authManager = HttpContext.Current.GetOwinContext().Authentication;
                authManager.SignIn(new AuthenticationProperties(), manager.CreateIdentity(user, DefaultAuthenticationTypes.ApplicationCookie));
                Response.Redirect("~/Default.aspx");
            }
            else
            {
                this.Panel1.Visible = true;
            }
        }
    }
}