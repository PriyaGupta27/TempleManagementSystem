using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class ADM_pujalist : System.Web.UI.Page
{
    clsDataAccess cls=new clsDataAccess();
    void insert()
    {
        try
        {
            string sql = @"insert into pujalist_tbl(pujatype,pujaprice)
                           values(@pujatype,@pujaprice)";
            SqlParameter _pujatype = new SqlParameter("@pujatype", txtpujaname.Text.Trim());
            SqlParameter _pujaprice = new SqlParameter("@pujaprice",txtpujaprice.Text.Trim());
            if (cls.ExecuteSql(sql, new SqlParameter[] { _pujatype, _pujaprice }) > 0)
            {
                lblmsg.Text = "Puja Name and price are entered....";
            }
            else 
            {
                lblmsg.Text = "Please enter puja name and price";
            }
        }
        catch (Exception ex)
        { }
    }
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        insert();
    }
}