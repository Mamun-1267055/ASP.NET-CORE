using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Data.SqlClient;
using System.Web;
using Work01 .Models;

namespace Work01.DAL
{
    public class UserGateWay
    {
        SqlConnection con = new SqlConnection(connection.GetConnectionString());

        //public IQueryable<AppUser> Get()
        //{
        //    DataTable dt = new DataTable();
        //    SqlDataAdapter sda = new SqlDataAdapter("select id,userName,email,password from Register", con);
        //    sda.Fill(dt);
        //    return dt.AsEnumerable()
        //        .Select(r => new AppUser
        //        {
        //            UserID = r.Field<int>("id"),
        //            UserName = r.Field<string>("userName"),
        //            Email = r.Field<string>("email"),
        //            Password=r.Field<string>("password")

        //        })
        //        .AsQueryable();
        //}


        //public int SaveUser(string UserName, string Password, string Email)
        //{
        //    int returnCode = 0;
        //    using (SqlConnection con = new SqlConnection(connection.GetConnectionString()))
        //    {
        //        SqlCommand cmd = new SqlCommand("spRegisterUser", con);
        //        cmd.CommandType = CommandType.StoredProcedure;
        //        SqlParameter username = new SqlParameter("@UserName", UserName);
        //        SqlParameter passWord = new SqlParameter("@Password", Password);
        //        SqlParameter emailAddress = new SqlParameter("@Email", Email);
        //        cmd.Parameters.Add(username);
        //        cmd.Parameters.Add(passWord);
        //        cmd.Parameters.Add(emailAddress);
        //        con.Open();
        //        returnCode = (int)cmd.ExecuteScalar();
        //    }
        //    return returnCode;
        //}
        //public int AuthenticateUser(string userName, string password)
        //{
        //    int authenticated = 0;
        //    using (SqlConnection con = new SqlConnection( connection.GetConnectionString()))
        //    {
        //        SqlCommand cmd = new SqlCommand("spAuthenticateUser", con);
        //        cmd.CommandType = CommandType.StoredProcedure;
        //        SqlParameter username = new SqlParameter("@UserName", userName);
        //        SqlParameter passWord = new SqlParameter("@Password", password);

        //        cmd.Parameters.Add(username);
        //        cmd.Parameters.Add(passWord);

        //        con.Open();
        //        authenticated = (int)cmd.ExecuteScalar();
        //    }
        //    return authenticated;
        //}
    }
}