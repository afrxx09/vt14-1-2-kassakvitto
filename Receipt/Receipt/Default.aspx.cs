using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DiscountReceipt.Model;

namespace DiscountReceipt
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            Receipt r = null;
            try
            {
                r = new Receipt(Double.Parse(txtTotalSum.Text));
            }
            catch (ArgumentOutOfRangeException)
            {
                lblError.Text = "Totalsumman måste vara störra än 0.";
                lblError.Visible = true;
                phdReceipt.Visible = false;
            }
            catch
            {
                lblError.Text = "Värdet kan inte tolkas som ett tal.";
                lblError.Visible = true;
                phdReceipt.Visible = false;
            }

            if (r != null)
            {
                this.RenderReceipt(r);
            }
        }

        private void RenderReceipt(Receipt r)
        {
            phdReceipt.Visible = true;
            lblReceiptDiscount.Text = String.Format("{0:c}", r.MoneyOff);
            lblReceiptDiscountRate.Text = String.Format("{0:p0}", r.DiscountRate);
            lblReceiptSubTotal.Text = String.Format("{0:c}", r.SubTotal);
            lblReceiptTotal.Text = String.Format("{0:c}", r.Total);
        }
    }
}