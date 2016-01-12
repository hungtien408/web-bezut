using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class lich_tiem_chung_chi_tiet : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!string.IsNullOrEmpty(Session["BirthDay"].ToString()))
        {
            DateTime dateTime1 = Convert.ToDateTime(Session["BirthDay"].ToString(), new CultureInfo("en-GB"));
            
            lblDate1.Text = dateTime1.Date.AddDays(7).ToString("dd/MM/yyyy"); // add 7 day
            lblDate2.Text = dateTime1.Date.AddDays(7).ToString("dd/MM/yyyy"); // add 7 day
            lblDate3.Text = dateTime1.Date.AddMonths(1).ToString("dd/MM/yyyy"); // add 1 month
            lblDate4.Text = dateTime1.Date.AddMonths(2).AddDays(-1).ToString("dd/MM/yyyy"); // add 2 month sub 1 day
            lblDate5.Text = dateTime1.Date.AddMonths(2).AddDays(-1).ToString("dd/MM/yyyy"); // add 2 month sub 1 day
            lblDate6.Text = dateTime1.Date.AddMonths(2).AddDays(-1).ToString("dd/MM/yyyy"); // add 2 month sub 1 day
            lblDate7.Text = dateTime1.Date.AddMonths(3).AddDays(-1).ToString("dd/MM/yyyy"); // add 3 month sub 1 day
            lblDate8.Text = dateTime1.Date.AddMonths(3).AddDays(-1).ToString("dd/MM/yyyy"); // add 3 month sub 1 day
            lblDate9.Text = dateTime1.Date.AddMonths(4).AddDays(-2).ToString("dd/MM/yyyy"); // add 4 month sub 2 day
            lblDate10.Text = dateTime1.Date.AddMonths(4).AddDays(-2).ToString("dd/MM/yyyy"); // add 4 month sub 2 day
            lblDate11.Text = dateTime1.Date.AddMonths(6).AddDays(-2).ToString("dd/MM/yyyy"); // add 6 month sub 2 day
            lblDate12.Text = dateTime1.Date.AddYears(1).AddDays(-1).ToString("dd/MM/yyyy"); // add 1 year sub 1 day
            lblDate13.Text = dateTime1.Date.AddYears(1).AddDays(-1).ToString("dd/MM/yyyy"); // add 1 year sub 1 day
            lblDate14.Text = dateTime1.Date.AddYears(1).AddDays(-1).ToString("dd/MM/yyyy"); // add 1 year sub 1 day
            lblDate15.Text = dateTime1.Date.AddYears(1).AddDays(6).ToString("dd/MM/yyyy"); // add 1 year add 6 day
            lblDate16.Text = dateTime1.Date.AddYears(1).AddMonths(3).AddDays(-7).ToString("dd/MM/yyyy"); // add 1 year 3 month sub 7 day
            lblDate17.Text = dateTime1.Date.AddYears(1).AddMonths(4).AddDays(-8).ToString("dd/MM/yyyy"); // add 1 year 4 month sub 8 day
            lblDate18.Text = dateTime1.Date.AddYears(1).AddMonths(4).AddDays(-8).ToString("dd/MM/yyyy"); // add 1 year 4 month sub 8 day
            lblDate19.Text = dateTime1.Date.AddYears(1).AddMonths(6).AddDays(-7).ToString("dd/MM/yyyy"); // add 1 year 6 month sub 7 day
            lblDate20.Text = dateTime1.Date.AddYears(2).AddDays(-1).ToString("dd/MM/yyyy"); // add 2 year sub 1 day
            lblDate21.Text = dateTime1.Date.AddYears(2).AddDays(-1).ToString("dd/MM/yyyy"); // add 2 year sub 1 day
        }
        else
        {
            Response.Redirect("lich-tiem-chung.aspx");
        }
    }
}