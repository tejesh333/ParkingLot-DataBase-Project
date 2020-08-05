using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;

namespace ParkingLot
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        string connectionString = @"server=fall2018dbparangi.cgazotijubk5.us-east-2.rds.amazonaws.com;database=Find My Parking;username=Tejesh;password=Charlotte*2";
        protected void Page_Load(object sender, EventArgs e)
        {
            errorLbl.Visible = false;
            DataTable ds = new DataTable();
            ds = null;
            resultGrid.DataSource = ds;
            resultGrid.DataBind();
            for (int i = 0; resultGrid.Columns.Count > i;)
            {
                resultGrid.Columns.RemoveAt(i);
            }
        }

        protected void submitBtn_Click(object sender, EventArgs e)
        {
            try
            {
                using (MySqlConnection sqlConn = new MySqlConnection(connectionString))
                {
                    sqlConn.Open();
                    string commandTxt = queryTxt.Text;

                    MySqlDataAdapter da = new MySqlDataAdapter(commandTxt, sqlConn);
                    DataTable dt = new DataTable();
                    da.Fill(dt);
                    resultGrid.DataSource = dt;
                    resultGrid.DataBind();
                }
            }
            catch (Exception ex)
            {
                errorLbl.Visible = true;
            }
            
        }

        protected void resetBtn_Click(object sender, EventArgs e)
        {
            queryTxt.Text = string.Empty;
            DataTable ds = new DataTable();
            ds = null;
            resultGrid.DataSource = ds;
            resultGrid.DataBind();
            for (int i = 0; resultGrid.Columns.Count > i;)
            {
                resultGrid.Columns.RemoveAt(i);
            }
        }
    }
}