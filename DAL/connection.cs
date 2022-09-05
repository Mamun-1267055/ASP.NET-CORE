using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Work01.DAL
{
    public static class connection
    {
        public static string GetConnectionString()
        {
            string conStr = "Data Source=DESKTOP-MDMamun; Initial Catalog=HotelMAsp;Integrated Security=True;";
            return conStr;
        }
    }
}