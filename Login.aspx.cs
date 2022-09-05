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
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        [Obsolete]
        //protected void btnRegister_Click(object sender, EventArgs e)
        //{

        //    if (Page.IsValid)
        //    {
        //        AppUser obj = new AppUser();
        //        obj.UserName = txtUserName.Text;
        //        obj.Password = txtPassword.Text;
        //        obj.Email = txtEmail.Text;
        //        string encryptedPass = FormsAuthentication.HashPasswordForStoringInConfigFile(obj.Password, "SHA1");
        //        UserGateWay gateObj = new UserGateWay();
        //        int returnCode = gateObj.SaveUser(obj.UserName, encryptedPass, obj.Email); ;
        //        if (returnCode == -1)
        //        {
        //            lblMessage.Text = "User Name already exist. Please choose another user name";
        //        }
        //        else
        //        {
        //            Response.Redirect("~/Login.aspx");
        //        }
        //    }
        //}

       

        protected void btnLogin_Click1(object sender, EventArgs e)
        {
            var store = new UserStore<IdentityUser>();
            var manager = new UserManager<IdentityUser>(store);
            var user = manager.Find(this.txtUserName.Text, this.txtPassword.Text);
            if (user != null)
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