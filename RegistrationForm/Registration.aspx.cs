using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RegistrationForm
{
    public partial class Registration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void chkVaccinated_CheckedChanged(object sender, EventArgs e)
        {
            pnlCertificate.Visible = chkVaccinated.Checked;
        }
        protected void btnRegister_Click(object sender, EventArgs e)
        {
            Response.Write("Register button clicked!");
        }
    }
}