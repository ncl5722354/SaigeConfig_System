using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MEEC_Config_System
{
    public partial class MainView : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ClearClientCache();
        }

        public static void ClearClientCache()
        {
            System.Web.HttpContext.Current.Response.Buffer = true;
            System.Web.HttpContext.Current.Response.Expires = 0;
            System.Web.HttpContext.Current.Response.ExpiresAbsolute = DateTime.Now.AddDays(-1);
            System.Web.HttpContext.Current.Response.AddHeader("pragma", "no-cache");
            System.Web.HttpContext.Current.Response.AddHeader("cache-control", "private");
            System.Web.HttpContext.Current.Response.CacheControl = "no-cache";
        }
    }
}