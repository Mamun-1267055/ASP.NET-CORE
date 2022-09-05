using CrystalDecisions.CrystalReports.Engine;
using CrystalDecisions.Shared;
using System.Data.SqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace Work01
{
    public partial class Report : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=DESKTOP-MDMamun;Initial Catalog=HotelMAsp;Integrated Security=True");
            SqlCommand cmd = new SqlCommand("select * from RBooking b inner join rooms r on b.RoomId=r.RoomId join Rcategories c on b.Id=c.Id", con);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            sda.Fill(ds);
            ReportDocument cryRpt = new ReportDocument();
            cryRpt.Load(Server.MapPath("RoomBookingRpt.rpt"));
            cryRpt.SetDataSource(ds.Tables["CrystalReportViewer1"]);
            CrystalReportViewer1.ReportSource = cryRpt;
            cryRpt.ExportToHttpResponse(ExportFormatType.PortableDocFormat, Response, false, "Product Information");

        }
    }
}