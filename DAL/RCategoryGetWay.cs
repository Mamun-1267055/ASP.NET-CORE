using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using Work01.Models;
using System.Data.SqlClient;


namespace Work01.DAL
{
    public class RCategoryGetWay
    {
        SqlConnection con = new SqlConnection(connection.GetConnectionString());
        public IQueryable<RoomsCategories> Get()
        {
            DataTable dt = new DataTable();
            SqlDataAdapter sda = new SqlDataAdapter("select Id,CatName,Cost from Rcategories", con);
            sda.Fill(dt);
            return dt.AsEnumerable()
                .Select(r => new RoomsCategories
                {
                   Id=r.Field<int>("Id"),
                   CatName=r.Field<string>("CatName"),
                   Cost=r.Field<int>("Cost")

                })
                .AsQueryable();
        }
        public void insert(RoomsCategories b)
        {
            SqlCommand cmd = new SqlCommand("insert into Rcategories (CatName,Cost) values (@n,@C)", con);
            cmd.Parameters.AddWithValue("@n", b.CatName);
            cmd.Parameters.AddWithValue("C", b.Cost);
         
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();

        }
        public void Update(RoomsCategories b)
        {
            SqlCommand cmd = new SqlCommand("Update Rcategories set CatName=@n,Cost=@C where Id=@i", con);
            cmd.Parameters.AddWithValue("@n",b.CatName);
            cmd.Parameters.AddWithValue("@C", b.Cost);
            cmd.Parameters.AddWithValue("@i", b.Id);

            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();

        }
        public void Delete(int id)
        {
            SqlCommand cmd = new SqlCommand("delete from Rcategories where Id=@i", con);
            cmd.Parameters.AddWithValue("@i", id);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
        }

    }
}